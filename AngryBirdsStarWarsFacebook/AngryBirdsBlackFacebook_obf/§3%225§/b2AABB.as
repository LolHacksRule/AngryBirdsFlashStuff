package §3"5§
{
   import §[R§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §1!,§:b2Vec2;
      
      public var § D§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1!,§ = new b2Vec2();
         }
         while(true)
         {
            this.§ D§ = new b2Vec2();
            while(_loc1_ || this)
            {
               super();
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §"";§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2AABB = new b2AABB();
         if(!_loc5_)
         {
            _loc3_.§"";§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §&" §() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§ D§.x);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() - this.§1!,§.x);
            if(_loc5_ || _loc2_)
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(this.§ D§.y);
            if(!(_loc4_ && _loc1_))
            {
               §§push(§§pop() - this.§1!,§.y);
               if(_loc5_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               §§push(_loc1_);
               if(!_loc4_)
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     §§push(§§pop() >= §§pop());
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              §§pop();
                              addr96:
                              §§push(_loc2_ >= 0);
                              if(!_loc4_)
                              {
                                 addr99:
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           var _loc3_:* = §§pop();
                           if(_loc5_)
                           {
                              §§push(_loc3_);
                              if(!(_loc4_ && this))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc5_)
                                 {
                                    addr189:
                                    §§push(§§pop());
                                    loop1:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop0:
                                          while(true)
                                          {
                                             §§pop();
                                             addr192:
                                             while(true)
                                             {
                                                §§push(this.§1!,§.§&" §());
                                                addr151:
                                                while(_loc5_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                continue loop0;
                                             }
                                          }
                                          addr191:
                                       }
                                       while(true)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop5:
                                                   while(_loc5_ || _loc3_)
                                                   {
                                                      §§push(this.§ D§.§&" §());
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc4_)
                                                         {
                                                            while(true)
                                                            {
                                                               addr130:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                            }
                                                            addr129:
                                                         }
                                                         while(_loc5_ || _loc1_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc4_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr151);
                                                               continue;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop3;
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                   §§goto(addr192);
                                                }
                                             }
                                             §§goto(addr129);
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr192);
                        }
                     }
                     §§goto(addr99);
                  }
               }
            }
            §§goto(addr96);
         }
         §§goto(addr38);
      }
      
      public function §&!m§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§1!,§.x);
         if(_loc1_ || this)
         {
            §§push(this.§ D§.x);
            if(!_loc2_)
            {
               §§push(§§pop() + §§pop());
               if(_loc1_)
               {
                  addr47:
                  §§push(§§pop() / 2);
                  §§push(this.§1!,§.y);
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr78);
               }
               §§goto(addr47);
            }
            addr57:
            §§push(§§pop() + this.§ D§.y);
            if(!(_loc2_ && this))
            {
               addr78:
               §§push(§§pop() / 2);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr47);
      }
      
      public function §5"y§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§ D§.x);
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§1!,§.x);
            if(_loc2_ || this)
            {
               §§push(§§pop() - §§pop());
               if(_loc2_ || this)
               {
                  addr56:
                  §§push(§§pop() / 2);
               }
               §§push(this.§ D§.y);
               if(_loc2_)
               {
                  §§goto(addr63);
               }
               §§goto(addr84);
            }
            addr63:
            §§push(§§pop() - this.§1!,§.y);
            if(!(_loc1_ && _loc2_))
            {
               addr84:
               §§push(§§pop() / 2);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr56);
      }
      
      public function §+g§(param1:b2AABB) : Boolean
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
                              §§push(this.§1!,§);
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr306:
                                 while(true)
                                 {
                                    §§push(param1.§1!,§);
                                    addr308:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr309:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                       }
                                    }
                                 }
                                 addr301:
                                 §§push(this.§1!,§);
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 §§push(§§pop().y);
                                 loop18:
                                 while(_loc4_)
                                 {
                                    §§push(param1.§1!,§);
                                    if(!(_loc3_ && _loc3_))
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
                                                         §§push(Boolean(§§pop()));
                                                         loop25:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop26:
                                                            while(_loc4_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     loop29:
                                                                     while(_loc4_)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        loop30:
                                                                        for(; _loc4_ || param1; while(true)
                                                                        {
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              §§push(param1.§ D§);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!(_loc4_ || _loc3_))
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 §§push(this.§ D§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc3_ && param1))
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       if(!(_loc3_ && param1))
                                                                                       {
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             continue loop24;
                                                                                          }
                                                                                          continue loop25;
                                                                                       }
                                                                                       §§goto(addr92);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                    }
                                                                                    addr184:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       if(!(_loc4_ || param1))
                                                                                       {
                                                                                          continue loop29;
                                                                                       }
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       addr240:
                                                                                       while(!(_loc3_ && this))
                                                                                       {
                                                                                          §§pop();
                                                                                          break loop30;
                                                                                       }
                                                                                       addr240:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr309);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       continue loop0;
                                                                                       §§goto(addr240);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop30;
                                                                        },while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           continue loop18;
                                                                        })
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop23;
                                                                           }
                                                                           §§push(_loc2_);
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              addr126:
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr136:
                                                                                    if(!(_loc3_ && this))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc4_ || this))
                                                                                       {
                                                                                          continue loop26;
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             addr92:
                                                                                             loop33:
                                                                                             while(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr109:
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         if(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            addr31:
                                                                                                            if(!(_loc4_ || param1))
                                                                                                            {
                                                                                                               addr152:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  continue loop30;
                                                                                                                  §§goto(addr31);
                                                                                                               }
                                                                                                               addr152:
                                                                                                            }
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               return §§pop();
                                                                                                            }
                                                                                                            continue loop29;
                                                                                                         }
                                                                                                         continue;
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr330:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         break loop33;
                                                                                                         §§goto(addr109);
                                                                                                      }
                                                                                                   }
                                                                                                   while(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr301);
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                   addr294:
                                                                                                }
                                                                                                continue loop30;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                §§goto(addr92);
                                                                                             }
                                                                                          }
                                                                                          addr90:
                                                                                       }
                                                                                       §§goto(addr152);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       break loop26;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr152);
                                                                              }
                                                                              while(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr294);
                                                                                 §§goto(addr126);
                                                                              }
                                                                              continue loop0;
                                                                              addr286:
                                                                           }
                                                                           §§goto(addr136);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr174);
                                                                        }
                                                                     }
                                                                     continue loop20;
                                                                     addr211:
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               §§goto(addr240);
                                                            }
                                                            while(!_loc3_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop21;
                                                               }
                                                               §§goto(addr286);
                                                            }
                                                            continue loop2;
                                                         }
                                                         if(_loc3_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr90);
                                                      }
                                                   }
                                                   if(!(_loc4_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr211);
                                                }
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr308);
                                    }
                                    §§goto(addr309);
                                    while(true)
                                    {
                                       if(!(_loc4_ || param1))
                                       {
                                          continue loop18;
                                       }
                                       §§goto(addr184);
                                       §§push(this.§ D§);
                                    }
                                 }
                                 §§goto(addr306);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr311);
                     }
                  }
               }
            }
         }
         §§goto(addr248);
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
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(param2.p1.x);
         if(_loc17_ || param2)
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
         if(!_loc18_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!_loc18_)
            {
               addr70:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(param2.p2.y);
            if(_loc17_)
            {
               §§push(§§pop() - param2.p1.y);
               if(_loc17_)
               {
                  addr83:
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               var _loc9_:Number = Math.abs(_loc7_);
               var _loc10_:Number = Math.abs(_loc8_);
               _loc11_ = param1.normal;
               if(_loc17_)
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
                              §§push(this.§1!,§);
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
                                                   §§push(this.§ D§);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr937:
                                                      addr896:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         addr938:
                                                         while(_loc17_)
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr896:
                                                      if(_loc18_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop().x);
                                                      loop85:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         loop82:
                                                         while(true)
                                                         {
                                                            addr906:
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc18_)
                                                            {
                                                               addr911:
                                                               _loc14_ = Number(§§pop() * _loc12_);
                                                               addr891:
                                                               _loc16_ = Number(-1);
                                                               addr866:
                                                               addr912:
                                                               addr892:
                                                               addr910:
                                                               addr909:
                                                               addr890:
                                                               if(_loc13_ > _loc14_)
                                                               {
                                                                  if(_loc17_ || param2)
                                                                  {
                                                                     addr876:
                                                                     §§push(_loc13_);
                                                                     if(_loc17_)
                                                                     {
                                                                        addr879:
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc18_ && param2))
                                                                        {
                                                                           _loc15_ = §§pop();
                                                                           addr854:
                                                                           addr887:
                                                                           §§push(Number(_loc14_));
                                                                           if(!(_loc17_ || _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc13_ = §§pop();
                                                                           addr850:
                                                                           _loc14_ = Number(_loc15_);
                                                                           addr845:
                                                                           _loc16_ = Number(1);
                                                                           §§push(_loc13_);
                                                                           loop86:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc18_ && _loc3_))
                                                                              {
                                                                                 addr821:
                                                                                 §§push(_loc3_);
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       addr829:
                                                                                       _loc11_.x = _loc16_;
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          if(_loc18_ && param1)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc11_.y = 0;
                                                                                             loop98:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc13_);
                                                                                                loop99:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc18_ && param1)
                                                                                                   {
                                                                                                      continue loop85;
                                                                                                   }
                                                                                                   §§push(Number(§§pop()));
                                                                                                   loop100:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc3_ = §§pop();
                                                                                                      loop101:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr786:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                            loop103:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               loop104:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  addr747:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc18_ && param2)
                                                                                                                     {
                                                                                                                        continue loop86;
                                                                                                                     }
                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           addr764:
                                                                                                                           §§push(_loc4_);
                                                                                                                           if(!(_loc18_ && param2))
                                                                                                                           {
                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              addr772:
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 addr775:
                                                                                                                                 §§push(false);
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    return §§pop();
                                                                                                                                 }
                                                                                                                                 addr944:
                                                                                                                                 if(_loc17_ || param2)
                                                                                                                                 {
                                                                                                                                    return §§pop();
                                                                                                                                 }
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              continue loop104;
                                                                                                                           }
                                                                                                                           continue loop82;
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr922:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc13_ = §§pop();
                                                                                                                           addr923:
                                                                                                                           §§goto(addr896);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop104;
                                                                                                                  }
                                                                                                                  loop15:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc10_);
                                                                                                                     loop16:
                                                                                                                     while(_loc17_ || this)
                                                                                                                     {
                                                                                                                        if(§§pop() >= Number.MIN_VALUE)
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                           loop17:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              loop18:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 loop19:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc12_ = §§pop();
                                                                                                                                    loop20:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          continue loop101;
                                                                                                                                       }
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§1!,§);
                                                                                                                                          if(_loc17_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             loop21:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                loop22:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         loop23:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                            loop24:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               loop25:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  loop26:
                                                                                                                                                                  while(_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc13_ = §§pop();
                                                                                                                                                                     loop27:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc17_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§ D§);
                                                                                                                                                                           if(_loc17_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                              loop28:
                                                                                                                                                                              while(_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc18_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                             addr589:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                addr590:
                                                                                                                                                                                                while(!(_loc18_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   while(!(_loc18_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc14_ = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop17;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr612:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr937);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr866);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr879);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr854);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr849);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr588:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr921);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr499:
                                                                                                                                                                                       loop39:
                                                                                                                                                                                       for(; _loc17_ || _loc3_; if(_loc18_ && param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       },if(_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr217);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr118);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr909);
                                                                                                                                                                                       },§§goto(addr589))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             loop40:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                loop41:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop99;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   loop42:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc15_ = §§pop();
                                                                                                                                                                                                      loop43:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                         loop44:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc17_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        loop45:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc17_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                                                                                                                    loop46:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(_loc17_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                                                                             while(!(_loc18_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§1!,§);
                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                loop78:
                                                                                                                                                                                                                                                while(_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                   loop67:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         loop68:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                            loop69:
                                                                                                                                                                                                                                                            for(; _loc17_; continue loop68)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§ D§);
                                                                                                                                                                                                                                                               while(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                     addr676:
                                                                                                                                                                                                                                                                     while(_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           loop71:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(false);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc17_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop69;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr775);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr681:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 loop65:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr118:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       param1.fraction = _loc3_;
                                                                                                                                                                                                                                                                                       if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr129:
                                                                                                                                                                                                                                                                                          if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop69;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc17_ || param2)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(true);
                                                                                                                                                                                                                                                                                                if(_loc17_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop71;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      return §§pop();
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr942:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr943:
                                                                                                                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop15;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr924:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc17_ || param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop7;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop67;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr684);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop9;
                                                                                                                                                                                                                                                                                                   addr236:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr944);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§1!,§);
                                                                                                                                                                                                                                                                                                   addr916:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr932:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr219:
                                                                                                                                                                                                                                                                                                   if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc18_ && param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop65;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr236);
                                                                                                                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr943);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr944);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr351:
                                                                                                                                                                                                                                                                                                         loop52:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                                                                                                                            loop53:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop28;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop103;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              loop55:
                                                                                                                                                                                                                                                                                                                              for(; _loc17_; if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop40;
                                                                                                                                                                                                                                                                                                                              })
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc11_.y = _loc16_;
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop43;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc11_.x = 0;
                                                                                                                                                                                                                                                                                                                                          while(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                             loop58:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                   loop59:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop45;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                      loop60:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc17_ || this))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     continue loop60;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                  addr318:
                                                                                                                                                                                                                                                                                                                                                                  continue loop58;
                                                                                                                                                                                                                                                                                                                                                                  if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop59;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr911);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr265:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr431);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop21;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop25;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr906);
                                                                                                                                                                                                                                                                                                                                             if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop55;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop20;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr912);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr382:
                                                                                                                                                                                                                                                                                                                                    continue loop15;
                                                                                                                                                                                                                                                                                                                                    addr382:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr923);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr887);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr265);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                     addr192:
                                                                                                                                                                                                                                                                                                                     continue loop22;
                                                                                                                                                                                                                                                                                                                     if(!(_loc18_ && param2))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop39;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr911);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(_loc17_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                                           continue loop52;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr588);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr598);
                                                                                                                                                                                                                                                                                                                     continue loop53;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr409);
                                                                                                                                                                                                                                                                                                                  addr399:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr854);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop103;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr219);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr281);
                                                                                                                                                                                                                                                                                                §§goto(addr129);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr846);
                                                                                                                                                                                                                                                                                             addr217:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                             break loop78;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr917:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop98;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr382);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr863);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr382);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop1;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr892);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr821);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr896);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr829);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr679);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop6;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                   addr919:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr920);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr845);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                          addr714:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop23;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop100;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc17_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop46;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop17;
                                                                                                                                                                                                                                                   addr431:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr850);
                                                                                                                                                                                                                                                addr171:
                                                                                                                                                                                                                                                if(_loc17_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop42;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop100;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop44;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr854);
                                                                                                                                                                                                                                       addr409:
                                                                                                                                                                                                                                       §§goto(addr850);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr829);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop19;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop41;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr876);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr919);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr590);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc16_ = §§pop();
                                                                                                                                                                                                                  continue loop44;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr546:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr547);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr910);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop99;
                                                                                                                                                                                                if(_loc18_ && _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr318);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr772);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr547);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr351);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr764);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr722);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop26;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr667);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr681);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop18;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr734);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr676);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr916);
                                                                                                                                       }
                                                                                                                                       §§goto(addr851);
                                                                                                                                    }
                                                                                                                                    continue loop101;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              addr930:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr931:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc12_ = §§pop();
                                                                                                                                    §§goto(addr932);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr714);
                                                                                                                     }
                                                                                                                     §§goto(addr747);
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
                                                                                       §§goto(addr924);
                                                                                    }
                                                                                    §§goto(addr786);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr922);
                                                                           }
                                                                           addr849:
                                                                           addr846:
                                                                           addr863:
                                                                           addr851:
                                                                           addr844:
                                                                           §§goto(addr938);
                                                                        }
                                                                        §§goto(addr931);
                                                                     }
                                                                     §§goto(addr930);
                                                                  }
                                                                  §§goto(addr854);
                                                               }
                                                               §§goto(addr850);
                                                            }
                                                            §§goto(addr917);
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr942);
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
                     §§goto(addr928);
                  }
               }
               §§goto(addr841);
            }
            §§goto(addr83);
         }
         §§goto(addr70);
      }
      
      public function §?#S§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1.§1!,§.x);
         if(!_loc6_)
         {
            §§push(§§pop() - this.§ D§.x);
            if(!(_loc6_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(param1.§1!,§.y);
         if(!_loc6_)
         {
            §§push(§§pop() - this.§ D§.y);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.§1!,§.x);
         if(!_loc6_)
         {
            §§push(§§pop() - param1.§ D§.x);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.§1!,§.y);
         if(_loc7_ || _loc3_)
         {
            §§push(§§pop() - param1.§ D§.y);
            if(_loc7_ || _loc3_)
            {
               addr82:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && _loc3_))
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
                                 addr234:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    addr207:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr208:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                          addr209:
                                          while(_loc7_)
                                          {
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    §§push(false);
                                 }
                                 else
                                 {
                                    loop18:
                                    while(true)
                                    {
                                       addr181:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop12:
                                             while(!(_loc6_ && _loc2_))
                                             {
                                                §§push(§§pop() > §§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      loop14:
                                                      for(; _loc7_ || param1; if(_loc6_ && this)
                                                      {
                                                         continue;
                                                      },§§goto(addr172))
                                                      {
                                                         §§pop();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc6_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(§§pop() > §§pop());
                                                                        loop16:
                                                                        while(!_loc6_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    if(_loc6_ && param1)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       §§push(false);
                                                                                       continue loop14;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr92:
                                                                                    §§push(true);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr209);
                                                                                 }
                                                                                 §§goto(addr234);
                                                                              }
                                                                              addr172:
                                                                              return §§pop();
                                                                              addr146:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr226:
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr207);
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr146);
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr208);
                                          }
                                          continue loop18;
                                       }
                                    }
                                    addr227:
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr181);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr227);
         }
         §§goto(addr82);
      }
      
      public function §"";§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§1!,§);
            while(true)
            {
               §§pop().x = Math.min(param1.§1!,§.x,param2.§1!,§.x);
               while(true)
               {
                  §§push(this.§1!,§);
                  if(_loc4_)
                  {
                     break;
                  }
                  §§pop().y = Math.min(param1.§1!,§.y,param2.§1!,§.y);
                  loop2:
                  while(_loc3_ || param1)
                  {
                     while(true)
                     {
                        §§push(this.§ D§);
                        while(true)
                        {
                           §§pop().x = Math.max(param1.§ D§.x,param2.§ D§.x);
                           while(true)
                           {
                              §§push(this.§ D§);
                              if(_loc4_ && param2)
                              {
                                 break;
                              }
                              §§pop().y = Math.max(param1.§ D§.y,param2.§ D§.y);
                              if(!(_loc4_ && param2))
                              {
                                 if(_loc4_ && _loc3_)
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr71);
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
         §§goto(addr106);
      }
   }
}
