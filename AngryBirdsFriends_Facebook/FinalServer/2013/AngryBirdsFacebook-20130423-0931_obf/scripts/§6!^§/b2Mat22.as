package §6!^§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            this.col1 = new b2Vec2();
            if(!(_loc2_ && _loc2_))
            {
               addr76:
               while(true)
               {
                  this.col2 = new b2Vec2();
                  if(!_loc3_)
                  {
                     break;
                  }
                  super();
                  if(_loc3_ || _loc2_)
                  {
                     if(true)
                     {
                        this.col1.x = this.col2.y = 1;
                     }
                     continue;
                     break;
                  }
                  break;
               }
            }
            return;
         }
         §§goto(addr76);
      }
      
      public static function §;G§(param1:Number) : b2Mat22
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = new b2Mat22();
         if(!_loc3_)
         {
            _loc2_.Set(param1);
         }
         return _loc2_;
      }
      
      public static function §`6§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(_loc5_ || param1)
         {
            _loc3_.§,!H§(param1,param2);
         }
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         if(_loc4_)
         {
            §§push(Number(Math.cos(param1)));
            if(_loc4_ || param1)
            {
               _loc2_ = §§pop();
               addr32:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || _loc3_)
            {
               §§push(this.col1);
               while(true)
               {
                  §§push(_loc2_);
                  addr122:
                  while(true)
                  {
                     §§pop().x = §§pop();
                  }
                  addr118:
                  §§push(this.col1);
                  if(_loc5_ && param1)
                  {
                     continue;
                  }
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     §§pop().y = §§pop();
                     loop6:
                     while(true)
                     {
                        if(_loc4_)
                        {
                           §§push(this.col2);
                           if(_loc4_)
                           {
                              §§push(_loc2_);
                              if(_loc4_ || _loc3_)
                              {
                                 §§pop().y = §§pop();
                                 if(_loc4_)
                                 {
                                    return;
                                 }
                                 continue;
                              }
                              addr110:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 addr111:
                                 while(true)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§goto(addr118);
                                    }
                                    addr123:
                                    while(true)
                                    {
                                       §§push(this.col2);
                                       break loop6;
                                    }
                                 }
                                 §§goto(addr122);
                              }
                           }
                           break;
                           addr102:
                        }
                        §§goto(addr111);
                     }
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           §§push(-§§pop());
                        }
                        §§goto(addr110);
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr122);
               }
            }
            §§goto(addr123);
         }
         §§goto(addr32);
      }
      
      public function §,!H§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.col1.SetV(param1);
         }
         do
         {
            this.col2.SetV(param2);
         }
         while(_loc4_);
         
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(!_loc2_)
         {
            _loc1_.§^D§(this);
         }
         return _loc1_;
      }
      
      public function §^D§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.col1.SetV(param1.col1);
         }
         do
         {
            this.col2.SetV(param1.col2);
         }
         while(!_loc3_);
         
      }
      
      public function §71§(param1:b2Mat22) : void
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
         §§goto(addr163);
      }
      
      public function §75§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.col1);
            while(true)
            {
               §§pop().x = 1;
               while(true)
               {
                  §§push(this.col1);
                  if(!(_loc2_ || _loc2_))
                  {
                     break;
                  }
                  §§pop().y = 0;
                  loop4:
                  for(; !(_loc1_ && _loc1_); §§pop().y = 1,if(_loc2_ || _loc2_)
                  {
                     if(_loc1_ && this)
                     {
                        while(true)
                        {
                           §§goto(addr99);
                        }
                        addr106:
                     }
                     return;
                  })
                  {
                     addr95:
                     §§push(this.col2);
                     if(_loc2_ || _loc2_)
                     {
                        continue;
                     }
                     addr99:
                     while(true)
                     {
                        §§pop().x = 0;
                        break loop4;
                        §§goto(addr95);
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      public function §%y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
               }
               while(true)
               {
                  §§push(this.col1);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(0);
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§pop().y = §§pop();
                     loop6:
                     for(; _loc1_ || this; §§pop().y = §§pop(),if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     },if(_loc1_)
                     {
                        return;
                     },addr99:,while(true)
                     {
                        §§goto(addr92);
                     })
                     {
                        addr88:
                        §§push(this.col2);
                        if(_loc1_)
                        {
                           §§push(0);
                           if(!_loc2_)
                           {
                              continue;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(0);
                              §§goto(addr88);
                           }
                           addr92:
                        }
                        while(true)
                        {
                           §§pop().x = §§pop();
                           break loop6;
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr98);
            }
         }
         §§goto(addr99);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §3r§(param1:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         §§push(this.col1.x);
         if(_loc7_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc8_)
         {
            §§push(this.col2.x);
            if(_loc7_ || _loc3_)
            {
               §§push(Number(§§pop()));
               if(!(_loc8_ && _loc2_))
               {
                  addr52:
                  _loc3_ = §§pop();
                  §§push(this.col1.y);
                  if(_loc7_)
                  {
                     addr58:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(this.col2.y);
                  if(!(_loc8_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(!(_loc8_ && param1))
                  {
                     §§push(_loc2_);
                     if(_loc7_)
                     {
                        §§push(_loc5_);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc7_)
                           {
                              §§push(_loc3_);
                              if(_loc7_)
                              {
                                 §§push(§§pop() * _loc4_);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc7_)
                                       {
                                       }
                                       addr267:
                                       if(§§pop() != 0)
                                       {
                                          addr268:
                                          while(true)
                                          {
                                             §§push(1 / _loc6_);
                                             if(_loc7_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             addr274:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                addr275:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr268:
                                       }
                                       while(true)
                                       {
                                          §§push(param1.col1);
                                          loop2:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr197:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                addr198:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr199:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      loop6:
                                                      while(!(_loc8_ && param1))
                                                      {
                                                         §§push(param1.col2);
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(-§§pop());
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  addr188:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  addr109:
                                                                  if(_loc8_ && param1)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§pop().y = §§pop();
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        return param1;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  while(_loc7_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr268);
                                                                  addr190:
                                                               }
                                                            }
                                                            addr189:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               §§goto(addr190);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§push(§§pop());
                                    if(_loc8_ && _loc3_)
                                    {
                                    }
                                    §§goto(addr267);
                                 }
                                 _loc6_ = §§pop();
                                 if(!(_loc8_ && param1))
                                 {
                                    §§goto(addr267);
                                 }
                                 §§goto(addr274);
                              }
                           }
                        }
                     }
                     §§goto(addr267);
                  }
                  §§goto(addr268);
               }
               §§goto(addr58);
            }
         }
         §§goto(addr52);
      }
      
      public function §+!o§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.col1.x);
         if(!(_loc9_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.col2.x);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(this.col1.y);
         if(!(_loc9_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(this.col2.y);
         if(_loc10_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_);
         if(_loc10_)
         {
            §§push(_loc7_);
            if(!(_loc9_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc10_)
               {
                  addr74:
                  §§push(_loc5_);
                  if(!(_loc9_ && this))
                  {
                     addr82:
                     §§push(§§pop() * _loc6_);
                     if(!(_loc9_ && param3))
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc9_)
                        {
                           addr94:
                           §§push(Number(§§pop()));
                        }
                        §§push(§§pop());
                     }
                  }
                  var _loc8_:* = §§pop();
                  if(_loc10_)
                  {
                     if(§§pop() != 0)
                     {
                        if(!_loc9_)
                        {
                           §§push(1 / _loc8_);
                           if(_loc10_ || param2)
                           {
                              addr123:
                              §§push(Number(§§pop()));
                           }
                           _loc8_ = §§pop();
                           if(!_loc9_)
                           {
                              addr178:
                              §§push(param1);
                              §§push(_loc8_);
                              if(!(_loc9_ && this))
                              {
                                 §§push(_loc7_);
                                 if(_loc10_ || param2)
                                 {
                                    §§push(param2);
                                    if(_loc10_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc10_ || param2)
                                       {
                                          addr222:
                                          addr223:
                                          §§push(_loc5_);
                                          if(_loc10_)
                                          {
                                             addr219:
                                             §§push(§§pop() * param3);
                                          }
                                          §§pop().x = §§pop() * (§§pop() - §§pop());
                                          do
                                          {
                                             §§push(param1);
                                             §§push(_loc8_);
                                             if(_loc9_ && this)
                                             {
                                                continue;
                                             }
                                             §§push(_loc4_);
                                             if(_loc10_ || param3)
                                             {
                                                §§push(param3);
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc9_ && this))
                                                   {
                                                      addr168:
                                                      §§push(_loc6_);
                                                      if(!_loc9_)
                                                      {
                                                         addr165:
                                                         §§push(§§pop() * param2);
                                                      }
                                                      §§push(§§pop() * (§§pop() - §§pop()));
                                                      continue;
                                                   }
                                                   §§goto(addr168);
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr168);
                                          }
                                          while(§§pop().y = §§pop(), _loc9_ && param3);
                                          
                                          return param1;
                                          addr224:
                                       }
                                       §§goto(addr222);
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr223);
                              addr127:
                           }
                           §§goto(addr224);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr123);
               }
               §§goto(addr94);
            }
            §§goto(addr82);
         }
         §§goto(addr74);
      }
      
      public function §#X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.col1.§#X§();
            do
            {
               this.col2.§#X§();
            }
            while(!(_loc2_ || this));
            
         }
      }
   }
}
