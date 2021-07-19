package §!§
{
   import §@!E§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §&1§:b2Vec2;
      
      public var §3!E§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§&1§ = new b2Vec2();
            while(true)
            {
               this.§3!E§ = new b2Vec2();
               loop1:
               while(!(_loc1_ && this))
               {
                  while(true)
                  {
                     super();
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public static function §?z§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2AABB = new b2AABB();
         if(_loc5_)
         {
            _loc3_.§?z§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §'!]§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§3!E§.x);
         if(_loc4_)
         {
            §§push(§§pop() - this.§&1§.x);
            if(!(_loc5_ && _loc1_))
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(this.§3!E§.y);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() - this.§&1§.y);
               if(_loc4_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc5_)
            {
               §§push(_loc1_);
               if(!_loc5_)
               {
                  §§push(0);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() >= §§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              §§pop();
                              addr80:
                              addr79:
                              addr78:
                              §§push(_loc2_ >= 0);
                              if(_loc4_ || _loc1_)
                              {
                              }
                              addr89:
                              var _loc3_:* = §§pop();
                              if(!_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc4_)
                                    {
                                       §§push(§§pop());
                                       loop0:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§pop();
                                                addr206:
                                                addr180:
                                                while(true)
                                                {
                                                   §§push(this.§&1§.§'!]§());
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc4_ || _loc2_))
                                                   {
                                                      continue loop9;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   continue loop9;
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      §§push(this.§3!E§.§'!]§());
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                            addr139:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                         }
                                                         addr138:
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(!(_loc4_ || this))
                                                         {
                                                            break;
                                                         }
                                                         if(_loc4_ || this)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!(_loc4_ || _loc3_))
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               §§goto(addr139);
                                                            }
                                                            return §§pop();
                                                            addr155:
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                   }
                                                }
                                             }
                                             addr205:
                                          }
                                          while(true)
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr155);
                           }
                        }
                        §§push(Boolean(§§pop()));
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr80);
               }
               §§goto(addr79);
            }
            §§goto(addr78);
         }
         §§goto(addr32);
      }
      
      public function §!!<§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§&1§.x);
         if(!_loc1_)
         {
            §§push(this.§3!E§.x);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() + §§pop());
               if(!(_loc1_ && _loc2_))
               {
                  addr53:
                  §§push(§§pop() / 2);
                  §§push(this.§&1§.y);
                  if(_loc2_)
                  {
                     §§push(§§pop() + this.§3!E§.y);
                     if(_loc2_)
                     {
                        §§push(§§pop() / 2);
                     }
                  }
               }
               §§goto(addr53);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr53);
      }
      
      public function §8!V§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§3!E§.x);
         if(_loc2_)
         {
            §§push(this.§&1§.x);
            if(_loc2_)
            {
               §§push(§§pop() - §§pop());
               if(_loc1_)
               {
               }
               §§goto(addr43);
            }
            §§goto(addr48);
         }
         addr43:
         §§push(§§pop() / 2);
         §§push(this.§3!E§.y);
         if(!_loc1_)
         {
            addr48:
            §§push(§§pop() - this.§&1§.y);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() / 2);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function get(param1:b2AABB) : Boolean
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
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
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
                                    while(_loc4_)
                                    {
                                       §§push(§§pop());
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§pop();
                                                addr253:
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this.§&1§);
                                                   if(_loc4_ || this)
                                                   {
                                                      §§push(§§pop().y);
                                                      while(true)
                                                      {
                                                         §§push(param1.§&1§);
                                                         if(_loc4_ || this)
                                                         {
                                                            §§push(§§pop().y);
                                                            while(_loc4_)
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                               while(true)
                                                               {
                                                                  addr230:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              while(_loc4_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop6;
                                                                                    addr173:
                                                                                 }
                                                                              }
                                                                              continue loop5;
                                                                              addr240:
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        addr280:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§&1§);
                                                                           break loop10;
                                                                        }
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr261:
                                                            addr226:
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr261);
                                                      }
                                                      addr260:
                                                      addr216:
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr258:
                                                   while(true)
                                                   {
                                                      §§goto(addr260);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr229);
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr280);
                  }
               }
            }
         }
         §§goto(addr128);
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
         if(!(_loc18_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.p1.y);
         if(_loc17_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(!(_loc18_ && _loc3_))
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc17_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         §§push(param2.p2.y);
         if(_loc17_ || _loc3_)
         {
            §§push(§§pop() - param2.p1.y);
            if(_loc17_ || param1)
            {
               addr103:
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
                           §§push(this.§&1§);
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
                                             while(true)
                                             {
                                                §§push(this.§3!E§);
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr929:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr930:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                      }
                                                   }
                                                   addr705:
                                                   if(_loc18_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop().y);
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      loop71:
                                                      while(!_loc18_)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                         loop72:
                                                         while(true)
                                                         {
                                                            if(!_loc18_)
                                                            {
                                                               loop33:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop34:
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           param1.fraction = _loc3_;
                                                                           if(!_loc18_)
                                                                           {
                                                                              if(_loc17_)
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       if(_loc17_ || _loc3_)
                                                                                       {
                                                                                          §§push(true);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                if(_loc18_ && param2)
                                                                                                {
                                                                                                   continue loop72;
                                                                                                }
                                                                                                addr135:
                                                                                                if(_loc17_ || _loc3_)
                                                                                                {
                                                                                                   return §§pop();
                                                                                                }
                                                                                                addr932:
                                                                                                loop13:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop15:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc10_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() < Number.MIN_VALUE)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc17_ || param2)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§&1§);
                                                                                                                           if(!(_loc17_ || param2))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr754:
                                                                                                                           §§push(§§pop().y);
                                                                                                                           loop29:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc18_ && param1)
                                                                                                                                    {
                                                                                                                                       addr780:
                                                                                                                                       while(_loc18_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       addr771:
                                                                                                                                       while(_loc17_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§3!E§);
                                                                                                                                             addr703:
                                                                                                                                             while(_loc17_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr705);
                                                                                                                                             }
                                                                                                                                             addr890:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                addr891:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   addr892:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      addr893:
                                                                                                                                                      addr909:
                                                                                                                                                      while(!(_loc18_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            addr902:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               addr903:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                  addr904:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(-1);
                                                                                                                                                                     addr884:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        addr885:
                                                                                                                                                                        loop97:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc16_ = §§pop();
                                                                                                                                                                           addr886:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                              addr876:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                 break loop71;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop97;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      loop81:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         addr910:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            addr911:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               break loop29;
                                                                                                                                                               addr805:
                                                                                                                                                               if(!(_loc17_ || param2))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_ = §§pop();
                                                                                                                                                                  addr814:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc17_ || param1))
                                                                                                                                                                     {
                                                                                                                                                                        break loop13;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                        addr797:
                                                                                                                                                                        while(_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc4_ = §§pop();
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                              addr777:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                 addr778:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() <= §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(false);
                                                                                                                                                                                       §§goto(addr780);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr885);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop81;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop5;
                                                                                                                                       addr771:
                                                                                                                                    }
                                                                                                                                    continue loop33;
                                                                                                                                    return §§pop();
                                                                                                                                 }
                                                                                                                                 addr934:
                                                                                                                                 return §§pop();
                                                                                                                                 addr758:
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              §§goto(addr754);
                                                                                                                           }
                                                                                                                           loop84:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr913:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr914:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                    loop87:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr890);
                                                                                                                                       §§push(this.§3!E§);
                                                                                                                                       addr852:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc17_ || param2))
                                                                                                                                          {
                                                                                                                                             continue loop87;
                                                                                                                                          }
                                                                                                                                          §§push(1);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr842:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr827:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                            addr829:
                                                                                                                                                            addr923:
                                                                                                                                                            while(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                               while(_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc11_.x = _loc16_;
                                                                                                                                                                        addr838:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc11_.y = 0;
                                                                                                                                                                           addr826:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                              addr803:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr805);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr876);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop84;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr835:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr791);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr892);
                                                                                                                                                            }
                                                                                                                                                            loop78:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc12_ = §§pop();
                                                                                                                                                               addr924:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§&1§);
                                                                                                                                                                  addr908:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr909);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop78;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr847:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr929);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr891);
                                                                                                                                                }
                                                                                                                                                §§goto(addr892);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop3;
                                                                                                                        addr745:
                                                                                                                     }
                                                                                                                     §§goto(addr779);
                                                                                                                  }
                                                                                                                  addr737:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(1);
                                                                                                                  while(_loc17_ || this)
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(_loc17_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        loop18:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc12_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§&1§);
                                                                                                                                       if(_loc17_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(!_loc17_)
                                                                                                                                          {
                                                                                                                                             continue loop18;
                                                                                                                                          }
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             while(!(_loc18_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                loop22:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                   addr644:
                                                                                                                                                   while(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         continue loop4;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         continue loop18;
                                                                                                                                                         addr524:
                                                                                                                                                         while(_loc17_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr531:
                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop34;
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc18_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc17_ || _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           loop45:
                                                                                                                                                                           while(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc14_ = §§pop();
                                                                                                                                                                              continue loop1;
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop45;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop0;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc18_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc18_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop2;
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr903);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr745);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                        §§goto(addr852);
                                                                                                                                                                     }
                                                                                                                                                                     addr851:
                                                                                                                                                                     addr458:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr835);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr737);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr531);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr924);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr910);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr901);
                                                                                                                                          }
                                                                                                                                          §§goto(addr913);
                                                                                                                                       }
                                                                                                                                       §§goto(addr908);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr721:
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr728);
                                                                                                                                          }
                                                                                                                                          §§goto(addr886);
                                                                                                                                       }
                                                                                                                                       §§goto(addr881);
                                                                                                                                    }
                                                                                                                                    §§goto(addr873);
                                                                                                                                 }
                                                                                                                                 §§goto(addr852);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr921);
                                                                                                                     }
                                                                                                                     §§goto(addr922);
                                                                                                                  }
                                                                                                                  §§goto(addr841);
                                                                                                               }
                                                                                                               §§goto(addr891);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   break;
                                                                                                   §§goto(addr135);
                                                                                                }
                                                                                                §§goto(addr934);
                                                                                                §§push(false);
                                                                                             }
                                                                                             addr728:
                                                                                             return false;
                                                                                          }
                                                                                          §§goto(addr243);
                                                                                          §§goto(addr771);
                                                                                       }
                                                                                       §§goto(addr838);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr487);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr400);
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                           else if(!_loc18_)
                                                                           {
                                                                              if(_loc17_ || _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr356);
                                                                           }
                                                                           §§goto(addr274);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr721);
                                                               }
                                                            }
                                                            §§goto(addr758);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            §§goto(addr878);
                                                         }
                                                         §§goto(addr827);
                                                         §§goto(addr876);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr932);
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
                  §§goto(addr920);
               }
            }
            §§goto(addr878);
         }
         §§goto(addr103);
      }
      
      public function §4I§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1.§&1§.x);
         if(!_loc6_)
         {
            §§push(§§pop() - this.§3!E§.x);
            if(_loc7_)
            {
               addr28:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(param1.§&1§.y);
            if(_loc7_ || param1)
            {
               §§push(§§pop() - this.§3!E§.y);
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(this.§&1§.x);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() - param1.§3!E§.x);
               if(_loc7_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(this.§&1§.y);
            if(_loc7_)
            {
               §§push(§§pop() - param1.§3!E§.y);
               if(_loc7_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               §§push(_loc2_);
               while(true)
               {
                  §§push(0);
                  while(true)
                  {
                     §§push(§§pop() > §§pop());
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                        while(true)
                        {
                           if(!§§pop())
                           {
                              addr238:
                              while(true)
                              {
                                 §§pop();
                                 addr239:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    addr214:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr215:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                       }
                                    }
                                 }
                              }
                              addr238:
                           }
                           while(true)
                           {
                              addr217:
                              §§goto(addr218);
                           }
                        }
                     }
                     §§goto(addr238);
                  }
                  if(_loc6_ && _loc2_)
                  {
                     continue;
                  }
                  §§push(0);
                  if(_loc7_)
                  {
                     §§push(§§pop() > §§pop());
                     if(_loc7_)
                     {
                        §§goto(addr154);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr187);
               }
            }
            addr218:
            while(!§§pop())
            {
               while(true)
               {
                  §§push(_loc4_);
                  addr186:
                  while(true)
                  {
                     §§push(0);
                     addr187:
                     while(_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §§push(§§pop() > §§pop());
                           continue loop2;
                        }
                        continue loop1;
                     }
                     §§goto(addr215);
                  }
               }
            }
            return false;
         }
         §§goto(addr28);
      }
      
      public function §?z§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§&1§);
            loop0:
            while(true)
            {
               §§pop().x = Math.min(param1.§&1§.x,param2.§&1§.x);
               addr113:
               loop1:
               while(true)
               {
                  §§push(this.§&1§);
                  if(_loc3_ || param1)
                  {
                     §§pop().y = Math.min(param1.§&1§.y,param2.§&1§.y);
                     do
                     {
                        §§push(this.§3!E§);
                        loop3:
                        while(true)
                        {
                           §§pop().x = Math.max(param1.§3!E§.x,param2.§3!E§.x);
                           addr69:
                           while(_loc3_)
                           {
                              continue loop3;
                           }
                           continue loop1;
                        }
                     }
                     while(!_loc3_);
                     
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr113);
      }
   }
}
