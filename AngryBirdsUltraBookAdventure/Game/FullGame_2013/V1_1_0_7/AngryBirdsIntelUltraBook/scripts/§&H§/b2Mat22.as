package §&H§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.col1 = new b2Vec2();
            if(!_loc3_)
            {
               addr70:
               loop0:
               while(true)
               {
                  this.col2 = new b2Vec2();
                  while(true)
                  {
                     super();
                     if(!(_loc2_ || _loc3_))
                     {
                        break;
                     }
                     if(!(_loc3_ && this))
                     {
                        if(true)
                        {
                           this.col1.x = this.col2.y = 1;
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      public static function §&!i§(param1:Number) : b2Mat22
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = new b2Mat22();
         if(_loc4_ || param1)
         {
            _loc2_.Set(param1);
         }
         return _loc2_;
      }
      
      public static function §,A§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!_loc4_)
         {
            _loc3_.§^j§(param1,param2);
         }
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         if(_loc5_)
         {
            §§push(Number(Math.cos(param1)));
            if(_loc5_)
            {
               _loc2_ = §§pop();
               addr28:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               §§push(this.col1);
               while(true)
               {
                  §§push(_loc2_);
                  addr118:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     addr119:
                     while(true)
                     {
                        §§push(this.col2);
                        while(true)
                        {
                           §§push(_loc3_);
                           addr112:
                           §§goto(addr107);
                        }
                     }
                  }
               }
            }
            addr107:
            while(true)
            {
               §§push(-§§pop());
               addr113:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
            loop8:
            while(true)
            {
               §§push(this.col2);
               if(!_loc5_)
               {
                  continue loop3;
               }
               §§push(_loc2_);
               if(_loc5_ || _loc3_)
               {
                  if(!_loc4_)
                  {
                     addr65:
                     §§pop().y = §§pop();
                     if(_loc5_ || this)
                     {
                        break;
                     }
                     addr98:
                     while(!_loc4_)
                     {
                        if(!(_loc4_ && this))
                        {
                           continue loop8;
                        }
                        continue loop2;
                        §§goto(addr65);
                     }
                     continue loop0;
                  }
                  §§goto(addr112);
               }
               §§goto(addr113);
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §^j§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.col1.SetV(param1);
            do
            {
               this.col2.SetV(param2);
            }
            while(!_loc3_);
            
         }
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(_loc3_)
         {
            _loc1_.§97§(this);
         }
         return _loc1_;
      }
      
      public function §97§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.col1.SetV(param1.col1);
         }
         do
         {
            this.col2.SetV(param1.col2);
         }
         while(_loc3_);
         
      }
      
      public function §=p§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(this.col1);
               addr168:
               while(true)
               {
                  §§push(§§pop().x);
                  addr169:
                  while(true)
                  {
                     §§push(param1.col1);
                     addr171:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr172:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr173:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §3!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§pop().x = 1;
               addr95:
               loop1:
               while(true)
               {
                  §§push(this.col2);
                  while(true)
                  {
                     §§pop().x = 0;
                     continue loop0;
                     addr84:
                     §§push(this.col2);
                     if(_loc1_ || this)
                     {
                        §§pop().y = 1;
                        addr33:
                        if(_loc1_)
                        {
                           return;
                           addr70:
                        }
                        while(true)
                        {
                           if(_loc2_ && _loc1_)
                           {
                              continue loop0;
                           }
                           if(!(_loc1_ || _loc2_))
                           {
                              continue loop1;
                           }
                           §§goto(addr84);
                           §§goto(addr33);
                        }
                     }
                  }
               }
            }
            addr93:
         }
         while(true)
         {
            §§push(this.col1);
            if(!(_loc2_ && _loc1_))
            {
               §§pop().y = 0;
               §§goto(addr70);
            }
            else
            {
               §§goto(addr93);
            }
         }
      }
      
      public function §+J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(0);
               addr98:
               while(true)
               {
                  §§pop().x = §§pop();
                  addr99:
                  loop2:
                  while(true)
                  {
                     §§push(this.col2);
                     while(true)
                     {
                        §§push(0);
                        addr91:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           addr92:
                           while(!_loc2_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        addr86:
                        §§push(this.col2);
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        §§push(0);
                        if(_loc1_)
                        {
                           addr46:
                           §§pop().y = §§pop();
                           if(!(_loc1_ || this))
                           {
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    §§goto(addr86);
                                 }
                                 break;
                                 §§goto(addr46);
                              }
                              §§goto(addr92);
                              addr84:
                           }
                           return;
                        }
                        §§goto(addr91);
                     }
                  }
               }
            }
            addr97:
         }
         while(true)
         {
            §§push(this.col1);
            if(_loc1_ || this)
            {
               §§push(0);
               if(!(_loc2_ && _loc2_))
               {
                  §§pop().y = §§pop();
                  §§goto(addr84);
               }
               else
               {
                  §§goto(addr98);
               }
            }
            else
            {
               §§goto(addr97);
            }
            §§goto(addr98);
         }
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §]i§(param1:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         §§push(this.col1.x);
         if(!(_loc7_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc7_ && _loc3_))
         {
            §§push(this.col2.x);
            if(!(_loc7_ && _loc3_))
            {
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  _loc3_ = §§pop();
                  addr54:
                  §§push(this.col1.y);
                  if(_loc8_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc4_:* = §§pop();
            §§push(this.col2.y);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc8_ || _loc3_)
            {
               §§push(_loc2_);
               if(_loc8_ || _loc3_)
               {
                  §§push(_loc5_);
                  if(_loc8_ || _loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc8_ || param1)
                     {
                        §§push(_loc3_);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * _loc4_);
                           if(!_loc7_)
                           {
                              addr235:
                              §§push(§§pop() - §§pop());
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc7_)
                                 {
                                    addr256:
                                    §§push(§§pop());
                                    if(!_loc7_)
                                    {
                                       addr259:
                                       _loc6_ = §§pop();
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          addr268:
                                          if(§§pop() != 0)
                                          {
                                             while(true)
                                             {
                                                §§push(1 / _loc6_);
                                                if(_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr275:
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         addr276:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   addr274:
                                                }
                                                §§goto(addr275);
                                                addr172:
                                                if(_loc7_ && param1)
                                                {
                                                   continue;
                                                }
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(param1.col2);
                                                   if(_loc8_)
                                                   {
                                                      §§push(_loc6_);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc8_)
                                                         {
                                                            addr103:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc8_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§pop().y = §§pop();
                                                                     if(_loc8_)
                                                                     {
                                                                        if(_loc8_ || this)
                                                                        {
                                                                           if(_loc8_ || _loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr276);
                                                                        }
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.col1);
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr162:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§pop().y = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             §§goto(addr172);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.col2);
                                                                                                addr183:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_);
                                                                                                   addr184:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      addr185:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         addr186:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr187:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                }
                                                                                             }
                                                                                             addr203:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr276);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       break loop11;
                                                                                    }
                                                                                    addr201:
                                                                                 }
                                                                              }
                                                                              §§goto(addr162);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr192:
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              §§goto(addr201);
                                                                              §§push(_loc5_);
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           §§goto(addr203);
                                                                        }
                                                                     }
                                                                     §§goto(addr165);
                                                                  }
                                                                  §§goto(addr184);
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr103);
                                                   }
                                                   §§goto(addr183);
                                                }
                                                return param1;
                                                addr179:
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr192);
                                             §§goto(addr276);
                                          }
                                       }
                                       §§goto(addr274);
                                    }
                                 }
                                 §§goto(addr268);
                              }
                              §§goto(addr275);
                           }
                           §§goto(addr259);
                        }
                        §§goto(addr235);
                     }
                     §§goto(addr256);
                  }
                  §§goto(addr235);
               }
               §§goto(addr275);
            }
            §§goto(addr179);
         }
         §§goto(addr54);
      }
      
      public function §,!&§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(this.col1.x);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.col2.x);
         if(_loc9_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(this.col1.y);
         if(!(_loc10_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(this.col2.y);
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_);
         if(_loc9_)
         {
            §§push(_loc7_);
            if(!(_loc10_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc9_)
               {
                  §§push(_loc5_);
                  if(_loc9_)
                  {
                     addr71:
                     §§push(§§pop() * _loc6_);
                     if(!(_loc10_ && param3))
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc9_ || this)
                        {
                           addr89:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr89);
                     }
                  }
                  var _loc8_:* = §§pop();
                  if(!(_loc10_ && param2))
                  {
                     if(§§pop() != 0)
                     {
                        if(!(_loc10_ && param2))
                        {
                           §§push(1 / _loc8_);
                           if(!(_loc10_ && param2))
                           {
                              addr127:
                              §§push(Number(§§pop()));
                           }
                           _loc8_ = §§pop();
                           if(_loc9_)
                           {
                              addr177:
                              §§push(param1);
                              §§push(_loc8_);
                              if(!(_loc10_ && this))
                              {
                                 §§push(_loc7_);
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(param2);
                                    if(!(_loc10_ && param2))
                                    {
                                       addr222:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc10_)
                                       {
                                          addr215:
                                          §§push(_loc5_);
                                          if(!_loc10_)
                                          {
                                             addr218:
                                             §§push(§§pop() * param3);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().x = §§pop() * §§pop();
                                       do
                                       {
                                          §§push(param1);
                                          §§push(_loc8_);
                                          if(!(_loc9_ || this))
                                          {
                                             continue;
                                          }
                                          §§push(_loc4_);
                                          if(_loc9_ || param1)
                                          {
                                             §§push(param3);
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc10_)
                                                {
                                                   addr161:
                                                   §§push(_loc6_);
                                                   if(_loc9_ || param2)
                                                   {
                                                      addr169:
                                                      §§push(§§pop() * param2);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§push(§§pop() * §§pop());
                                                continue;
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr161);
                                       }
                                       while(§§pop().y = §§pop(), !_loc9_);
                                       
                                       return param1;
                                       addr223:
                                    }
                                    §§goto(addr218);
                                 }
                                 §§goto(addr215);
                              }
                              §§goto(addr222);
                              addr131:
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr127);
               }
               §§goto(addr89);
            }
            §§goto(addr71);
         }
         §§goto(addr89);
      }
      
      public function §0@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.col1.§0@§();
            do
            {
               this.col2.§0@§();
            }
            while(!_loc1_);
            
         }
      }
   }
}
