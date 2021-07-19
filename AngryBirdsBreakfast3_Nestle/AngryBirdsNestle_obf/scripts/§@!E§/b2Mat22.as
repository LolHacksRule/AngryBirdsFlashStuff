package §@!E§
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
            loop0:
            while(true)
            {
               addr31:
               while(true)
               {
                  this.col2 = new b2Vec2();
                  if(_loc3_ && _loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public static function §7!q§(param1:Number) : b2Mat22
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
      
      public static function §-!4§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(_loc4_)
         {
            _loc3_.§"!§(param1,param2);
         }
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         if(!_loc4_)
         {
            §§push(Number(Math.cos(param1)));
            if(_loc5_ || this)
            {
               _loc2_ = §§pop();
               addr33:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && param1))
            {
               §§push(this.col1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr133:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     addr134:
                     loop2:
                     while(true)
                     {
                        §§push(this.col2);
                        while(true)
                        {
                           §§push(_loc3_);
                           addr110:
                           while(true)
                           {
                              §§push(-§§pop());
                              addr111:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 addr112:
                                 while(!(_loc4_ && this))
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                           }
                           addr105:
                           §§push(this.col2);
                           if(_loc4_)
                           {
                              continue;
                           }
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 addr75:
                                 §§pop().y = §§pop();
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr105);
                                       }
                                       break;
                                       §§goto(addr75);
                                    }
                                    §§goto(addr112);
                                    addr103:
                                 }
                                 return;
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr111);
                        }
                     }
                  }
               }
               addr132:
            }
            while(true)
            {
               §§push(this.col1);
               if(_loc5_ || param1)
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc2_)
                  {
                     §§pop().y = §§pop();
                     §§goto(addr103);
                  }
                  else
                  {
                     §§goto(addr133);
                  }
               }
               else
               {
                  §§goto(addr132);
               }
               §§goto(addr133);
            }
         }
         §§goto(addr33);
      }
      
      public function §"!§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.§8!y§(this);
         }
         return _loc1_;
      }
      
      public function §8!y§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.col1.SetV(param1.col1);
            do
            {
               this.col2.SetV(param1.col2);
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function §1E§(param1:b2Mat22) : void
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
               addr166:
               while(true)
               {
                  §§push(§§pop().x);
                  if(_loc3_)
                  {
                     §§push(param1.col1);
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr172:
                        addr130:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                        }
                        §§push(param1.col1);
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        §§push(§§pop().y);
                        if(_loc3_ || param1)
                        {
                           addr148:
                           §§push(§§pop() + §§pop());
                           if(_loc3_)
                           {
                              §§pop().y = §§pop();
                              while(true)
                              {
                                 §§push(this.col2);
                                 while(true)
                                 {
                                    §§push(this.col2);
                                    addr92:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr93:
                                       while(true)
                                       {
                                          §§push(param1.col2);
                                          addr95:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr96:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr97:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   addr98:
                                                   §§goto(addr76);
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
                           §§goto(addr172);
                        }
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop0;
                        }
                        addr173:
                     }
                  }
                  §§goto(addr173);
               }
            }
         }
         addr76:
         while(true)
         {
            if(_loc3_)
            {
               if(!(_loc2_ && param1))
               {
                  continue loop7;
               }
               continue loop0;
            }
            continue loop6;
         }
      }
      
      public function §^!-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.col1);
            while(true)
            {
               §§pop().x = 1;
               while(true)
               {
                  §§push(this.col1);
                  if(_loc1_ && _loc1_)
                  {
                     break;
                  }
                  §§pop().y = 0;
                  loop4:
                  while(_loc2_ || _loc2_)
                  {
                     addr70:
                     §§push(this.col2);
                     if(!_loc1_)
                     {
                        §§pop().y = 1;
                        if(_loc2_)
                        {
                           if(!(_loc2_ || _loc1_))
                           {
                              while(true)
                              {
                                 §§push(this.col2);
                                 addr84:
                                 while(true)
                                 {
                                    §§pop().x = 0;
                                    break loop4;
                                    §§goto(addr70);
                                 }
                              }
                              addr91:
                           }
                           return;
                        }
                        continue;
                     }
                     §§goto(addr84);
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §>![§() : void
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
                  addr100:
                  loop2:
                  while(true)
                  {
                     §§push(this.col2);
                     while(true)
                     {
                        §§push(0);
                        addr94:
                        addr79:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(this.col2);
                           if(!(_loc2_ || this))
                           {
                              break;
                           }
                           §§push(0);
                           if(_loc2_)
                           {
                              §§pop().y = §§pop();
                              if(!_loc1_)
                              {
                                 if(_loc2_ || this)
                                 {
                                    if(!_loc1_)
                                    {
                                       return;
                                       addr59:
                                    }
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                              continue;
                           }
                           §§goto(addr94);
                        }
                     }
                  }
               }
            }
            addr98:
         }
         while(true)
         {
            §§push(this.col1);
            if(_loc2_ || this)
            {
               §§push(0);
               if(_loc2_ || _loc1_)
               {
                  §§pop().y = §§pop();
                  §§goto(addr79);
               }
               else
               {
                  §§goto(addr99);
               }
            }
            else
            {
               §§goto(addr98);
            }
            §§goto(addr99);
         }
         §§goto(addr59);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §use§(param1:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         §§push(this.col1.x);
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && _loc2_))
         {
            §§push(this.col2.x);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               if(_loc7_)
               {
                  addr42:
                  _loc3_ = §§pop();
                  §§push(this.col1.y);
                  if(!(_loc8_ && param1))
                  {
                     addr53:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(this.col2.y);
                  if(_loc7_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(!(_loc8_ && param1))
                  {
                     §§push(_loc2_);
                     if(!_loc8_)
                     {
                        §§push(_loc5_);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc8_)
                           {
                              §§push(_loc3_);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() * _loc4_);
                                 if(!_loc7_)
                                 {
                                 }
                                 addr233:
                                 _loc6_ = §§pop();
                                 if(_loc7_)
                                 {
                                    addr247:
                                    if(§§pop() != 0)
                                    {
                                       while(true)
                                       {
                                          §§push(1 / _loc6_);
                                          if(_loc7_)
                                          {
                                             addr253:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr254:
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                   addr255:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                             addr253:
                                          }
                                          §§goto(addr254);
                                          addr157:
                                          if(!(_loc7_ || param1))
                                          {
                                             continue;
                                          }
                                          addr164:
                                          §§push(param1.col2);
                                          if(_loc7_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc7_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      addr92:
                                                      §§push(_loc2_);
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§goto(addr101);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr169);
                                                }
                                                §§goto(addr179);
                                             }
                                             addr101:
                                             §§pop().y = §§pop() * §§pop();
                                             if(!_loc7_)
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   if(_loc7_ || this)
                                                   {
                                                      if(_loc7_ || _loc2_)
                                                      {
                                                         §§goto(addr157);
                                                      }
                                                      break;
                                                   }
                                                   addr180:
                                                   while(!(_loc8_ && this))
                                                   {
                                                      §§push(param1.col1);
                                                      if(_loc7_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!(_loc8_ && this))
                                                         {
                                                            §§push(-§§pop());
                                                            if(!_loc8_)
                                                            {
                                                               addr131:
                                                               §§push(_loc4_);
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr201:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        break loop14;
                                                                     }
                                                                     §§goto(addr131);
                                                                  }
                                                                  addr200:
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            §§pop().y = §§pop();
                                                            continue loop14;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               §§goto(addr200);
                                                               §§push(_loc5_);
                                                            }
                                                         }
                                                         addr191:
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr255);
                                                }
                                                while(true)
                                                {
                                                   §§push(param1.col2);
                                                   addr168:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      addr169:
                                                      while(true)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc7_ || this)
                                                         {
                                                            §§push(_loc3_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr179:
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  §§goto(addr180);
                                                               }
                                                               §§goto(addr92);
                                                            }
                                                            addr178:
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                }
                                                addr202:
                                             }
                                             return param1;
                                          }
                                          §§goto(addr168);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr191);
                                       §§goto(addr255);
                                    }
                                 }
                                 §§goto(addr253);
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc7_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    addr230:
                                    §§push(§§pop());
                                    if(_loc7_)
                                    {
                                       §§goto(addr233);
                                    }
                                    §§goto(addr247);
                                 }
                                 §§goto(addr253);
                              }
                              §§goto(addr230);
                           }
                           §§goto(addr254);
                        }
                        §§goto(addr233);
                     }
                     §§goto(addr247);
                  }
                  §§goto(addr202);
               }
               §§goto(addr53);
            }
         }
         §§goto(addr42);
      }
      
      public function §`"5§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.col1.x);
         if(_loc10_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.col2.x);
         if(_loc10_)
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
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_);
         if(_loc10_ || param3)
         {
            §§push(_loc7_);
            if(_loc10_)
            {
               §§push(§§pop() * §§pop());
               if(_loc10_ || param2)
               {
                  addr74:
                  §§push(_loc5_);
                  if(!(_loc9_ && this))
                  {
                     §§push(§§pop() * _loc6_);
                     if(!(_loc9_ && param2))
                     {
                        addr101:
                        §§push(§§pop() - §§pop());
                        if(!(_loc9_ && this))
                        {
                           addr99:
                           §§push(Number(§§pop()));
                        }
                        var _loc8_:*;
                        §§push(_loc8_ = §§pop());
                        if(_loc10_)
                        {
                           if(§§pop() != 0)
                           {
                              if(!_loc9_)
                              {
                                 §§push(1 / _loc8_);
                                 if(_loc10_)
                                 {
                                    addr124:
                                    _loc8_ = Number(§§pop());
                                    if(!(_loc9_ && param2))
                                    {
                                       addr173:
                                       §§push(param1);
                                       §§push(_loc8_);
                                       if(_loc10_ || param3)
                                       {
                                          §§push(_loc7_);
                                          if(_loc10_ || param3)
                                          {
                                             §§push(param2);
                                             if(_loc10_ || param2)
                                             {
                                                addr227:
                                                addr228:
                                                §§push(§§pop() * §§pop());
                                                if(_loc10_ || param1)
                                                {
                                                   §§push(_loc5_);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§push(§§pop() * param3);
                                                   }
                                                }
                                                §§pop().x = §§pop() * §§pop();
                                                do
                                                {
                                                   §§push(param1);
                                                   §§push(_loc8_);
                                                   if(!_loc10_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc4_);
                                                   if(_loc10_)
                                                   {
                                                      §§push(param3);
                                                      if(_loc10_ || param2)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc10_ || param3)
                                                         {
                                                            addr168:
                                                            §§push(_loc6_);
                                                            if(_loc10_)
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
                                                while(§§pop().y = §§pop(), _loc9_);
                                                
                                                return param1;
                                                addr229:
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr228);
                                    }
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr229);
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr101);
               }
               §§goto(addr99);
            }
            §§goto(addr101);
         }
         §§goto(addr74);
      }
      
      public function §71§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.col1.§71§();
            do
            {
               this.col2.§71§();
            }
            while(!(_loc1_ || this));
            
         }
      }
   }
}
