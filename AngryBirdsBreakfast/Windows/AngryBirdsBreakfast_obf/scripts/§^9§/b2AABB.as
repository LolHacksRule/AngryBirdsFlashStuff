package §^9§
{
   import §6Z§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §?J§:b2Vec2;
      
      public var §1^§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§?J§ = new b2Vec2();
            while(true)
            {
               this.§1^§ = new b2Vec2();
               while(!(_loc2_ && _loc1_))
               {
                  super();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      public static function §[!g§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2AABB = new b2AABB();
         if(_loc5_)
         {
            _loc3_.§[!g§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §<?§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§1^§.x);
         if(_loc5_)
         {
            §§push(§§pop() - this.§?J§.x);
            if(!_loc4_)
            {
               addr28:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(this.§1^§.y);
            if(!_loc4_)
            {
               §§push(§§pop() - this.§?J§.y);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && _loc2_))
            {
               §§push(_loc1_);
               if(!_loc4_)
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     §§push(§§pop() >= §§pop());
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && this))
                           {
                              §§pop();
                              addr71:
                              addr70:
                              addr69:
                              §§push(_loc2_ >= 0);
                              if(_loc5_ || _loc1_)
                              {
                              }
                              addr80:
                              var _loc3_:* = §§pop();
                              if(_loc5_ || this)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_ || _loc1_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                addr197:
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(this.§?J§.§<?§());
                                                   addr160:
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      addr161:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            break loop8;
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                             addr196:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(!_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr197);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§1^§.§<?§());
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     addr124:
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        break loop7;
                                                                     }
                                                                     break;
                                                                  }
                                                                  break loop7;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr174);
                                                                  §§goto(addr124);
                                                               }
                                                               addr174:
                                                               addr173:
                                                            }
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   continue loop0;
                                                }
                                                return §§pop();
                                                addr139:
                                             }
                                             §§goto(addr173);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr197);
                           }
                        }
                        §§push(Boolean(§§pop()));
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr71);
               }
               §§goto(addr70);
            }
            §§goto(addr69);
         }
         §§goto(addr28);
      }
      
      public function §`!8§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§?J§.x);
         if(_loc1_ || this)
         {
            §§push(this.§1^§.x);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop() + §§pop());
               if(!(_loc2_ && _loc1_))
               {
                  addr55:
                  §§push(§§pop() / 2);
               }
               §§push(this.§?J§.y);
               if(!_loc2_)
               {
                  §§push(§§pop() + this.§1^§.y);
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr80);
               }
               §§push(§§pop() / 2);
            }
            addr80:
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr55);
      }
      
      public function §>x§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§1^§.x);
         if(!_loc2_)
         {
            §§push(this.§?J§.x);
            if(_loc1_ || this)
            {
               §§push(§§pop() - §§pop());
               if(!(_loc2_ && _loc1_))
               {
                  addr50:
                  §§push(§§pop() / 2);
               }
               §§push(this.§1^§.y);
               if(!_loc2_)
               {
                  §§push(§§pop() - this.§?J§.y);
                  if(_loc1_)
                  {
                     addr73:
                     §§push(§§pop() / 2);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
            }
            §§goto(addr73);
         }
         §§goto(addr50);
      }
      
      public function §[W§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_);
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
                           addr311:
                           while(true)
                           {
                              §§push(this.§?J§);
                              addr285:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr286:
                                 while(true)
                                 {
                                    §§push(param1.§?J§);
                                    addr288:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr289:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr310:
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
                              while(!_loc3_)
                              {
                                 §§push(_loc2_);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop9:
                                    while(!(_loc3_ && _loc3_))
                                    {
                                       §§push(§§pop());
                                       while(!(_loc3_ && _loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      §§push(this.§?J§);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(§§pop().y);
                                                         while(true)
                                                         {
                                                            §§push(param1.§?J§);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop().y);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() <= §§pop());
                                                                  while(!_loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop17:
                                                                        while(_loc4_)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           loop18:
                                                                           for(; !_loc3_; while(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§goto(addr173);
                                                                              §§push(param1.§1^§);
                                                                           })
                                                                           {
                                                                              §§push(_loc2_);
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr215:
                                                                                       addr180:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                addr189:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                             addr187:
                                                                                          }
                                                                                          while(!_loc3_)
                                                                                          {
                                                                                             §§pop();
                                                                                             continue loop18;
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       while(!(_loc3_ && this))
                                                                                       {
                                                                                          §§goto(addr187);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr310);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            break;
                                                            if(_loc3_ && param1)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr75);
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                      break;
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr285);
                                             }
                                          }
                                          §§goto(addr246);
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(§§pop())
                                          {
                                             §§goto(addr142);
                                          }
                                          §§goto(addr99);
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc4_ || this))
               {
                  continue;
               }
               §§pop();
               §§goto(addr169);
            }
         }
         §§goto(addr311);
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
         if(!(_loc17_ && _loc3_))
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc18_ || param1)
            {
               addr86:
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
            if(!(_loc17_ && param2))
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
                        loop2:
                        while(true)
                        {
                           §§push(this.§?J§);
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
                                                §§push(this.§1^§);
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr968:
                                                   addr565:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr969:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                      }
                                                   }
                                                   if(!(_loc18_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop().y);
                                                   if(!(_loc17_ && param1))
                                                   {
                                                      if(!_loc17_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc17_)
                                                         {
                                                            addr585:
                                                            if(!(_loc17_ && param2))
                                                            {
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  loop28:
                                                                  for(; _loc18_; while(true)
                                                                  {
                                                                     if(!(_loc17_ && param1))
                                                                     {
                                                                        if(!(_loc17_ && param1))
                                                                        {
                                                                           _loc16_ = §§pop();
                                                                           §§goto(addr424);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop28;
                                                                  },§§goto(addr860))
                                                                  {
                                                                     §§push(_loc12_);
                                                                     loop67:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr599:
                                                                        loop69:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop60:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 _loc14_ = §§pop();
                                                                                 loop61:
                                                                                 while(_loc18_)
                                                                                 {
                                                                                    §§push(-1);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop53:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                _loc16_ = §§pop();
                                                                                                loop97:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc13_);
                                                                                                   loop64:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(_loc14_);
                                                                                                         loop63:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                            {
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  if(§§pop() > §§pop())
                                                                                                                  {
                                                                                                                     loop57:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc17_ && param2))
                                                                                                                        {
                                                                                                                           if(!(_loc17_ && param1))
                                                                                                                           {
                                                                                                                              §§push(_loc13_);
                                                                                                                              loop58:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop59:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                       {
                                                                                                                                          if(!(_loc17_ && param1))
                                                                                                                                          {
                                                                                                                                             addr544:
                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                             loop36:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                loop37:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   loop38:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc17_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc17_)
                                                                                                                                                         {
                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                            loop39:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc18_ || param2))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr742);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               loop40:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     loop41:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop37;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop38;
                                                                                                                                                                        addr319:
                                                                                                                                                                        if(_loc17_ && _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc3_ = §§pop();
                                                                                                                                                                              loop65:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc17_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc17_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr347:
                                                                                                                                                                                       loop48:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                          addr259:
                                                                                                                                                                                          loop49:
                                                                                                                                                                                          while(!(_loc17_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop40;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop28;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr860:
                                                                                                                                                                                             addr848:
                                                                                                                                                                                             addr859:
                                                                                                                                                                                             addr859:
                                                                                                                                                                                             addr861:
                                                                                                                                                                                             addr952:
                                                                                                                                                                                             addr316:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                break loop49;
                                                                                                                                                                                                addr359:
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc3_ = Number(§§pop());
                                                                                                                                                                                             §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc4_ = §§pop();
                                                                                                                                                                                                addr849:
                                                                                                                                                                                                if(!(_loc17_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                                                                   break loop53;
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr934:
                                                                                                                                                                                                break loop63;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr319);
                                                                                                                                                                                             }
                                                                                                                                                                                             loop46:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                                                                   loop47:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc17_ && param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop67;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc17_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() <= §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop48;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop54:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop57;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc11_.y = _loc16_;
                                                                                                                                                                                                               loop55:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc17_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     _loc11_.x = 0;
                                                                                                                                                                                                                     continue loop39;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr424:
                                                                                                                                                                                                                  addr895:
                                                                                                                                                                                                                  addr763:
                                                                                                                                                                                                                  loop44:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop46;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr360:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                           break loop44;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr762:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop55;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc17_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§?J§);
                                                                                                                                                                                                                           if(_loc17_ && _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop3;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr783:
                                                                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc17_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                    loop30:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc17_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr801:
                                                                                                                                                                                                                                          if(!(_loc17_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         loop35:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            param1.fraction = _loc3_;
                                                                                                                                                                                                                                                            if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop54;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop36;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(true);
                                                                                                                                                                                                                                                                        if(_loc18_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc18_ || param2)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              return §§pop();
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr224:
                                                                                                                                                                                                                                                                           if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 return §§pop();
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop5;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr817:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                              addr818:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§1^§);
                                                                                                                                                                                                                                                                                 addr694:
                                                                                                                                                                                                                                                                                 while(_loc18_ || param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                                                                       addr703:
                                                                                                                                                                                                                                                                                       while(_loc18_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop4;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr934);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr224);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr732);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this.§?J§);
                                                                                                                                                                                                                                                                        addr945:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                                                                                                                           addr946:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                              addr947:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                 addr948:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                                                                                                                    addr949:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       addr950:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          addr951:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                             §§goto(addr952);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr963:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr888:
                                                                                                                                                                                                                                                                  §§push(Number(1));
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc16_ = §§pop();
                                                                                                                                                                                                                                                                        addr892:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr869:
                                                                                                                                                                                                                                                                           if(_loc13_ > _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop57;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr952);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr968);
                                                                                                                                                                                                                                                                        addr867:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr896:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                 §§goto(addr903);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr968);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr951);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr922:
                                                                                                                                                                                                                                                                        while(_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc15_ = §§pop();
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop0;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr888);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr903:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop65;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop58;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop64;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!(_loc18_ || this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop69;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc18_ || param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop61;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr224);
                                                                                                                                                                                                                                                                                             §§push(false);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop55;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr236:
                                                                                                                                                                                                                                                                                                if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop97;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop35;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr818);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(1);
                                                                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                            continue loop28;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop53;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr690:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(this.§?J§);
                                                                                                                                                                                                                                                                                                         if(_loc18_ || param2)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                            break loop28;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr945);
                                                                                                                                                                                                                                                                                                      §§goto(addr236);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(!_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                               break loop38;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr957:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                            addr959:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  break loop40;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop2;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      _loc16_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                                                                                                                         if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr919:
                                                                                                                                                                                                                                                                                                            if(§§pop() > _loc14_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                  addr921:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr922);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr920:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr921);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr867);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr888);
                                                                                                                                                                                                                                                                                                   addr671:
                                                                                                                                                                                                                                                                                                   addr453:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr234:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr934);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr938:
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       break loop41;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop63;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop47;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr869);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr259);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr892);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr727:
                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop8;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(false);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr732:
                                                                                                                                                                                                                                                                     if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        return §§pop();
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr840);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr825:
                                                                                                                                                                                                                                                                  if(_loc18_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc17_ && param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr920);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr840:
                                                                                                                                                                                                                                                                     return §§pop();
                                                                                                                                                                                                                                                                     §§push(false);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr292:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr906:
                                                                                                                                                                                                                                                                  break loop59;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr234);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr742:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr667:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr727);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr725:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr817);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr743:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                                                                                                                      addr745:
                                                                                                                                                                                                                                                      while(_loc18_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(§§pop() < Number.MIN_VALUE)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr762);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr671);
                                                                                                                                                                                                                                                               §§push(1);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr929);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr889);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr953:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr972:
                                                                                                                                                                                                                                             §§goto(addr801);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr971:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          return §§pop();
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop7;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop6;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr919);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                              §§goto(addr783);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr825);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr743);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr940:
                                                                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr929);
                                                                                                                                                                                                                           §§goto(addr940);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr941:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr921);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr896);
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr743);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc17_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc11_.y = 0;
                                                                                                                                                                                                               break loop39;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr972);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr869);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop69;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop59;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop59;
                                                                                                                                                                                             §§goto(addr316);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr861);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr849);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr948);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr859);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr940);
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  addr689:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc12_ = §§pop();
                                                                                                                                                                     §§goto(addr690);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc12_ = §§pop();
                                                                                                                                                                  §§goto(addr963);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr667);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr859);
                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      continue loop53;
                                                                                                                                                   }
                                                                                                                                                   while(!(_loc17_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr689);
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   addr937:
                                                                                                                                                   §§goto(addr938);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr656);
                                                                                                                                    }
                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                    break loop61;
                                                                                                                                 }
                                                                                                                                 continue loop60;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr657);
                                                                                                                     }
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           _loc11_.x = _loc16_;
                                                                                                                           §§goto(addr878);
                                                                                                                        }
                                                                                                                        §§goto(addr941);
                                                                                                                     }
                                                                                                                     §§goto(addr930);
                                                                                                                  }
                                                                                                                  §§goto(addr360);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr643);
                                                                                                         }
                                                                                                         §§goto(addr937);
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                      }
                                                                                                      §§goto(addr959);
                                                                                                   }
                                                                                                }
                                                                                                addr554:
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr648);
                                                                                       }
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          §§goto(addr824);
                                                                                          §§push(_loc4_);
                                                                                       }
                                                                                       §§goto(addr848);
                                                                                       §§goto(addr605);
                                                                                    }
                                                                                    addr605:
                                                                                 }
                                                                                 §§goto(addr895);
                                                                                 §§push(_loc15_);
                                                                              }
                                                                              §§goto(addr763);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           while(true)
                                                                           {
                                                                              if(_loc18_)
                                                                              {
                                                                                 if(!(_loc17_ && this))
                                                                                 {
                                                                                    §§goto(addr642);
                                                                                    §§push(§§pop() - §§pop());
                                                                                 }
                                                                                 §§goto(addr947);
                                                                              }
                                                                              break;
                                                                              §§goto(addr585);
                                                                           }
                                                                           §§goto(addr949);
                                                                           addr632:
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr745);
                                                                  }
                                                                  §§goto(addr906);
                                                               }
                                                               §§goto(addr784);
                                                            }
                                                            §§goto(addr632);
                                                         }
                                                         §§goto(addr598);
                                                      }
                                                      §§goto(addr702);
                                                   }
                                                   §§goto(addr599);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr971);
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
                  §§goto(addr957);
               }
            }
            §§goto(addr554);
         }
         §§goto(addr86);
      }
      
      public function §]",§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§?J§.x);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() - this.§1^§.x);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(param1.§?J§.y);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() - this.§1^§.y);
            if(_loc6_ || param1)
            {
               addr55:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.§?J§.x);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() - param1.§1^§.x);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(this.§?J§.y);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() - param1.§1^§.y);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!(_loc7_ && this))
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
                                    addr228:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr229:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop1;
                                          }
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
                              while(!§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    loop8:
                                    while(!_loc7_)
                                    {
                                       §§push(0);
                                       while(_loc6_ || _loc3_)
                                       {
                                          §§push(§§pop() > §§pop());
                                          loop10:
                                          do
                                          {
                                             if(_loc7_ && this)
                                             {
                                                continue loop6;
                                             }
                                             §§push(§§pop());
                                             if(!(_loc6_ || param1))
                                             {
                                                continue loop3;
                                             }
                                             if(§§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc7_ && this))
                                                      {
                                                         addr163:
                                                         if(!(_loc7_ && this))
                                                         {
                                                            §§push(false);
                                                            continue loop10;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         if(!(_loc7_ && this))
                                                         {
                                                            addr101:
                                                            §§push(true);
                                                            if(!(_loc7_ && this))
                                                            {
                                                               addr110:
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               addr145:
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  addr213:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        §§pop();
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr252);
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  §§goto(addr253);
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop10;
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break loop6;
                                                            }
                                                            §§push(_loc5_);
                                                            if(!_loc7_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop7;
                                                         §§goto(addr163);
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   §§goto(addr101);
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr213);
                                          }
                                          while(!_loc6_);
                                          
                                          if(!_loc7_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr245);
                                       }
                                       §§goto(addr229);
                                    }
                                    §§goto(addr228);
                                 }
                              }
                              addr245:
                              return §§pop();
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr253);
         }
         §§goto(addr55);
      }
      
      public function §[!g§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§?J§);
            while(true)
            {
               §§pop().x = Math.min(param1.§?J§.x,param2.§?J§.x);
               while(true)
               {
                  §§push(this.§?J§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().y = Math.min(param1.§?J§.y,param2.§?J§.y);
                  loop2:
                  do
                  {
                     §§push(this.§1^§);
                     while(true)
                     {
                        §§pop().x = Math.max(param1.§1^§.x,param2.§1^§.x);
                        while(true)
                        {
                           §§push(this.§1^§);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§pop().y = Math.max(param1.§1^§.y,param2.§1^§.y);
                           if(_loc3_ || _loc3_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(!_loc3_);
                  
                  if(_loc4_ && param2)
                  {
                     continue;
                  }
                  return;
                  addr63:
               }
            }
         }
         §§goto(addr63);
      }
   }
}
