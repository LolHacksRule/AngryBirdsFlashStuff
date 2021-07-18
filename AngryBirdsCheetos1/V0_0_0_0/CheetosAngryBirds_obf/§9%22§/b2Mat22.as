package §9"§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            this.col1 = new b2Vec2();
            loop0:
            while(true)
            {
               addr54:
               while(true)
               {
                  this.col2 = new b2Vec2();
                  continue loop0;
               }
            }
         }
         §§goto(addr52);
      }
      
      public static function §"!Z§(param1:Number) : b2Mat22
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = new b2Mat22();
         if(_loc3_)
         {
            _loc2_.Set(param1);
         }
         return _loc2_;
      }
      
      public static function § T§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!(_loc5_ && param1))
         {
            _loc3_.§?R§(param1,param2);
         }
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         if(!_loc5_)
         {
            §§push(Number(Math.cos(param1)));
            if(_loc4_ || _loc2_)
            {
               _loc2_ = §§pop();
               addr32:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && _loc2_))
            {
               §§push(this.col1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr117:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.col2);
                        while(true)
                        {
                           §§push(_loc3_);
                           addr99:
                           while(true)
                           {
                              §§push(-§§pop());
                              addr110:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 addr111:
                                 while(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                           }
                           addr94:
                           §§push(this.col2);
                           if(!_loc4_)
                           {
                              continue;
                           }
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 §§pop().y = §§pop();
                                 if(_loc5_)
                                 {
                                    while(_loc4_ || param1)
                                    {
                                       §§goto(addr94);
                                    }
                                    §§goto(addr111);
                                    addr87:
                                 }
                                 return;
                                 addr72:
                              }
                              §§goto(addr99);
                           }
                           §§goto(addr110);
                        }
                     }
                  }
               }
            }
            §§goto(addr72);
         }
         §§goto(addr32);
      }
      
      public function §?R§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.col1.SetV(param1);
            do
            {
               this.col2.SetV(param2);
            }
            while(_loc4_ && param2);
            
         }
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(!(_loc2_ && this))
         {
            _loc1_.§-z§(this);
         }
         return _loc1_;
      }
      
      public function §-z§(param1:b2Mat22) : void
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
         while(_loc3_ && param1);
         
      }
      
      public function §;q§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(this.col1);
               addr157:
               while(true)
               {
                  §§push(§§pop().x);
                  addr158:
                  while(true)
                  {
                     §§push(param1.col1);
                     addr160:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr161:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr162:
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
            addr155:
         }
         while(true)
         {
            §§push(this.col1);
            if(!_loc3_)
            {
               §§push(this.col1);
               if(!_loc3_)
               {
                  §§push(§§pop().y);
                  if(_loc2_)
                  {
                     if(_loc2_ || this)
                     {
                        if(!_loc3_)
                        {
                           §§push(param1.col1);
                           if(_loc2_ || param1)
                           {
                              §§push(§§pop().y);
                              if(!(_loc3_ && this))
                              {
                                 addr134:
                                 §§pop().y = §§pop() + §§pop();
                                 while(_loc2_ || param1)
                                 {
                                    §§push(this.col2);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.col2);
                                       addr88:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr89:
                                          while(true)
                                          {
                                             §§push(param1.col2);
                                             addr91:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr92:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr93:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    if(_loc2_ || _loc2_)
                                    {
                                       return;
                                    }
                                 }
                                 continue;
                              }
                           }
                           else
                           {
                              §§goto(addr160);
                           }
                           §§goto(addr161);
                        }
                        else
                        {
                           §§goto(addr158);
                        }
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr134);
               }
               else
               {
                  §§goto(addr157);
               }
            }
            else
            {
               §§goto(addr155);
            }
            §§goto(addr157);
         }
      }
      
      public function §0d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§pop().x = 1;
               while(true)
               {
                  §§push(this.col2);
                  while(true)
                  {
                     §§pop().x = 0;
                     continue loop0;
                     §§goto(addr64);
                  }
               }
            }
         }
         addr64:
         loop5:
         while(true)
         {
            §§push(this.col2);
            if(!_loc2_)
            {
               §§pop().y = 1;
               if(!_loc2_)
               {
                  if(!(_loc2_ && this))
                  {
                     break;
                  }
                  continue loop0;
               }
               addr62:
               while(!_loc2_)
               {
                  continue loop5;
               }
               continue loop1;
            }
            continue loop2;
         }
      }
      
      public function §^!#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(0);
               addr99:
               while(true)
               {
                  §§pop().x = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.col2);
                     while(true)
                     {
                        §§push(0);
                        addr92:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           addr93:
                           while(!_loc1_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        addr77:
                        §§push(this.col2);
                        if(_loc1_ && _loc1_)
                        {
                           continue;
                        }
                        §§push(0);
                        if(_loc2_)
                        {
                           §§pop().y = §§pop();
                           if(!_loc2_)
                           {
                              while(_loc2_ || this)
                              {
                                 §§goto(addr77);
                              }
                              §§goto(addr93);
                              addr70:
                           }
                           return;
                           addr40:
                        }
                        §§goto(addr92);
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §]!7§(param1:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         §§push(this.col1.x);
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_ || _loc2_)
         {
            §§push(this.col2.x);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
               if(_loc8_ || this)
               {
                  _loc3_ = §§pop();
                  addr49:
                  §§push(this.col1.y);
                  if(_loc8_)
                  {
                     addr54:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(this.col2.y);
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(_loc8_)
                  {
                     §§push(_loc2_);
                     if(!_loc7_)
                     {
                        §§push(_loc5_);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc8_ || this)
                           {
                              §§push(_loc3_);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() * _loc4_);
                                 if(_loc8_ || _loc3_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc8_)
                                    {
                                       addr218:
                                       §§push(Number(§§pop()));
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             addr229:
                                             _loc6_ = §§pop();
                                             if(!_loc7_)
                                             {
                                                addr243:
                                                if(§§pop() != 0)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(1 / _loc6_);
                                                      if(!_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr250:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               addr251:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         addr249:
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   addr244:
                                                }
                                                while(true)
                                                {
                                                   §§push(param1.col1);
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      addr185:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         addr186:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr187:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               addr188:
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§push(param1.col2);
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     addr162:
                                                                     while(true)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           addr171:
                                                                        }
                                                                        addr172:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr173:
                                                                           while(!(_loc7_ && _loc2_))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                     addr157:
                                                                     §§push(param1.col2);
                                                                     if(!_loc8_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(_loc6_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc8_)
                                                                        {
                                                                           addr88:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc7_ && _loc2_))
                                                                           {
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 addr102:
                                                                                 §§pop().y = §§pop();
                                                                                 if(!(_loc8_ || param1))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§goto(addr157);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr244);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr251);
                                                                                       }
                                                                                       break;
                                                                                       §§goto(addr102);
                                                                                    }
                                                                                    §§goto(addr173);
                                                                                    addr151:
                                                                                 }
                                                                                 return param1;
                                                                              }
                                                                              §§goto(addr162);
                                                                           }
                                                                           §§goto(addr172);
                                                                        }
                                                                        §§goto(addr171);
                                                                     }
                                                                     §§goto(addr88);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr249);
                                          }
                                       }
                                       §§goto(addr243);
                                    }
                                    §§goto(addr250);
                                 }
                                 §§goto(addr229);
                              }
                              §§goto(addr243);
                           }
                           §§goto(addr218);
                        }
                     }
                     §§goto(addr243);
                  }
                  §§goto(addr180);
               }
            }
            §§goto(addr54);
         }
         §§goto(addr49);
      }
      
      public function §;!D§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.col1.x);
         if(!(_loc9_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.col2.x);
         if(!(_loc9_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(this.col1.y);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(this.col2.y);
         if(_loc10_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_);
         if(_loc10_)
         {
            §§push(_loc7_);
            if(!(_loc9_ && param2))
            {
               §§push(§§pop() * §§pop());
               if(_loc10_)
               {
                  addr74:
                  §§push(_loc5_);
                  if(!(_loc9_ && param3))
                  {
                     §§push(§§pop() * _loc6_);
                     if(!(_loc9_ && param3))
                     {
                        addr91:
                        §§push(§§pop() - §§pop());
                        if(!_loc9_)
                        {
                           addr95:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr95);
                     }
                  }
                  var _loc8_:* = §§pop();
                  if(!(_loc9_ && this))
                  {
                     if(§§pop() != 0)
                     {
                        if(_loc10_)
                        {
                           §§push(1 / _loc8_);
                           if(!_loc9_)
                           {
                              addr123:
                              §§push(Number(§§pop()));
                           }
                           _loc8_ = §§pop();
                           if(!_loc9_)
                           {
                              addr183:
                              §§push(param1);
                              §§push(_loc8_);
                              if(!(_loc9_ && param2))
                              {
                                 §§push(_loc7_);
                                 if(_loc10_ || param3)
                                 {
                                    §§push(param2);
                                    if(_loc10_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc9_ && param3))
                                       {
                                          addr211:
                                          §§push(_loc5_);
                                          if(!(_loc9_ && param2))
                                          {
                                             addr231:
                                             §§push(§§pop() - §§pop() * param3);
                                          }
                                          §§goto(addr231);
                                       }
                                       addr233:
                                       §§pop().x = §§pop() * §§pop();
                                       do
                                       {
                                          §§push(param1);
                                          §§push(_loc8_);
                                          if(_loc9_ && param2)
                                          {
                                             continue;
                                          }
                                          §§push(_loc4_);
                                          if(_loc10_ || this)
                                          {
                                             §§push(param3);
                                             if(!(_loc9_ && param3))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc10_)
                                                {
                                                   addr162:
                                                   §§push(_loc6_);
                                                   if(_loc10_ || this)
                                                   {
                                                      addr172:
                                                      §§push(§§pop() - §§pop() * param2);
                                                   }
                                                   §§goto(addr172);
                                                }
                                                §§push(§§pop() * §§pop());
                                                continue;
                                             }
                                             §§goto(addr172);
                                          }
                                          §§goto(addr162);
                                       }
                                       while(§§pop().y = §§pop(), _loc9_ && param3);
                                       
                                       return param1;
                                       addr182:
                                       addr234:
                                    }
                                    §§goto(addr231);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr233);
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr234);
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr123);
               }
               §§goto(addr95);
            }
            §§goto(addr91);
         }
         §§goto(addr74);
      }
      
      public function §>8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.col1.§>8§();
            do
            {
               this.col2.§>8§();
            }
            while(!_loc2_);
            
         }
      }
   }
}
