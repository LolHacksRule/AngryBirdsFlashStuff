package §;%§
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
            if(_loc3_)
            {
               addr71:
               loop0:
               while(true)
               {
                  this.col2 = new b2Vec2();
                  while(true)
                  {
                     super();
                     if(!(_loc3_ || this))
                     {
                        break;
                     }
                     if(!_loc2_)
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
         §§goto(addr71);
      }
      
      public static function §9!-§(param1:Number) : b2Mat22
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = new b2Mat22();
         if(!_loc4_)
         {
            _loc2_.Set(param1);
         }
         return _loc2_;
      }
      
      public static function §+f§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!(_loc5_ && param1))
         {
            _loc3_.§>!9§(param1,param2);
         }
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         if(!(_loc5_ && _loc3_))
         {
            §§push(Number(Math.cos(param1)));
            if(_loc4_ || _loc3_)
            {
               _loc2_ = §§pop();
               addr37:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || this)
            {
               §§push(this.col1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr142:
                  while(true)
                  {
                     §§pop().x = §§pop();
                  }
                  while(true)
                  {
                     §§push(this.col1);
                     if(!_loc5_)
                     {
                        §§push(_loc3_);
                        if(_loc5_ && _loc2_)
                        {
                           break;
                        }
                        §§pop().y = §§pop();
                        loop7:
                        for(; _loc4_ || _loc3_; §§pop().y = §§pop(),if(!(_loc5_ && _loc2_))
                        {
                           return;
                        })
                        {
                           if(!_loc5_)
                           {
                              addr131:
                              §§push(this.col2);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_ || this)
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§push(-§§pop());
                                    }
                                    addr136:
                                 }
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    break loop7;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§goto(addr131);
                                 }
                                 addr135:
                              }
                              §§goto(addr136);
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr143:
                           }
                           §§goto(addr135);
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  §§goto(addr142);
               }
            }
            §§goto(addr143);
         }
         §§goto(addr37);
      }
      
      public function §>!9§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.col1.SetV(param1);
         }
         do
         {
            this.col2.SetV(param2);
         }
         while(_loc3_ && param1);
         
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(!_loc3_)
         {
            _loc1_.§^p§(this);
         }
         return _loc1_;
      }
      
      public function §^p§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.col1.SetV(param1.col1);
         }
         do
         {
            this.col2.SetV(param1.col2);
         }
         while(!_loc2_);
         
      }
      
      public function §%!3§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(this.col1);
               addr147:
               while(true)
               {
                  §§push(§§pop().x);
                  addr148:
                  while(true)
                  {
                     §§push(param1.col1);
                     addr150:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr151:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr152:
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
            addr145:
         }
         while(true)
         {
            §§push(this.col1);
            if(!(_loc3_ && param1))
            {
               §§push(this.col1);
               if(!_loc3_)
               {
                  §§push(§§pop().y);
                  if(_loc2_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(param1.col1);
                        if(!_loc3_)
                        {
                           §§push(§§pop().y);
                           if(_loc2_ || _loc2_)
                           {
                              addr137:
                              §§push(§§pop() + §§pop());
                              if(!_loc3_)
                              {
                                 §§pop().y = §§pop();
                                 loop7:
                                 while(!_loc3_)
                                 {
                                    §§push(this.col2);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.col2);
                                       addr81:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr82:
                                          while(true)
                                          {
                                             §§push(param1.col2);
                                             addr84:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr85:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr86:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      addr87:
                                                      while(!_loc3_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr137);
               }
               else
               {
                  §§goto(addr147);
               }
            }
            else
            {
               §§goto(addr145);
            }
            §§goto(addr147);
         }
      }
      
      public function §9!O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§pop().x = 1;
               loop1:
               while(true)
               {
                  §§push(this.col2);
                  while(true)
                  {
                     §§pop().x = 0;
                     continue loop0;
                     addr79:
                     §§push(this.col2);
                     if(!(_loc2_ && this))
                     {
                        addr48:
                        §§pop().y = 1;
                        if(_loc1_)
                        {
                           return;
                           addr75:
                        }
                        while(!_loc2_)
                        {
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                           §§goto(addr79);
                           §§goto(addr48);
                        }
                        continue loop0;
                        addr62:
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §&!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(0);
               addr89:
               while(true)
               {
                  §§pop().x = §§pop();
                  addr90:
                  loop2:
                  while(true)
                  {
                     §§push(this.col2);
                     while(true)
                     {
                        §§push(0);
                        addr84:
                        addr79:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(this.col2);
                           if(_loc1_)
                           {
                              break;
                           }
                           §§push(0);
                           if(_loc2_)
                           {
                              §§pop().y = §§pop();
                              if(!_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       return;
                                       addr64:
                                    }
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                              continue;
                           }
                           §§goto(addr84);
                        }
                     }
                  }
               }
            }
            addr88:
         }
         while(true)
         {
            §§push(this.col1);
            if(_loc2_ || this)
            {
               §§push(0);
               if(!_loc1_)
               {
                  §§pop().y = §§pop();
                  §§goto(addr79);
               }
               else
               {
                  §§goto(addr89);
               }
            }
            else
            {
               §§goto(addr88);
            }
            §§goto(addr89);
         }
         §§goto(addr64);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §9!0§(param1:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         §§push(this.col1.x);
         if(!(_loc8_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            §§push(this.col2.x);
            if(_loc7_ || _loc3_)
            {
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  _loc3_ = §§pop();
                  addr48:
                  §§push(this.col1.y);
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc4_:* = §§pop();
            §§push(this.col2.y);
            if(_loc7_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc7_ || _loc2_)
            {
               §§push(_loc2_);
               if(!_loc8_)
               {
                  §§push(_loc5_);
                  if(_loc7_ || this)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc8_ && this))
                     {
                        §§push(_loc3_);
                        if(_loc7_ || _loc2_)
                        {
                           §§push(§§pop() * _loc4_);
                           if(!_loc7_)
                           {
                           }
                           addr272:
                           if(§§pop() != §§pop())
                           {
                              addr273:
                              while(true)
                              {
                                 §§push(1 / _loc6_);
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    addr283:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    addr283:
                                 }
                                 addr284:
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                    addr285:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr273:
                           }
                           while(true)
                           {
                              §§push(param1.col1);
                              loop2:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 addr204:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    addr205:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr206:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             §§push(param1.col2);
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                addr188:
                                                while(true)
                                                {
                                                   §§push(-§§pop());
                                                   if(!(_loc8_ && this))
                                                   {
                                                      §§push(_loc3_);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      addr197:
                                                   }
                                                   addr198:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      continue loop2;
                                                   }
                                                }
                                                addr183:
                                                §§push(param1.col2);
                                                if(_loc8_ && param1)
                                                {
                                                   continue;
                                                }
                                                §§push(_loc6_);
                                                if(!(_loc8_ && param1))
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc8_)
                                                   {
                                                      addr102:
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            §§pop().y = §§pop();
                                                            if(!_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§goto(addr183);
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                               §§goto(addr198);
                                                               addr181:
                                                            }
                                                            if(!(_loc7_ || _loc2_))
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(_loc8_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(!_loc8_)
                                                            {
                                                               return param1;
                                                            }
                                                            §§goto(addr273);
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr102);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§push(§§pop() - §§pop());
                        if(_loc7_ || _loc3_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc7_)
                           {
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 _loc6_ = §§pop();
                                 if(!(_loc8_ && this))
                                 {
                                    addr271:
                                    §§goto(addr272);
                                    §§push(0);
                                 }
                                 §§goto(addr284);
                              }
                              §§goto(addr272);
                           }
                        }
                        §§goto(addr271);
                     }
                     §§goto(addr283);
                  }
                  §§goto(addr272);
               }
               §§goto(addr283);
            }
            §§goto(addr273);
         }
         §§goto(addr48);
      }
      
      public function §-,§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
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
         if(_loc9_ || param3)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(this.col1.y);
         if(!(_loc10_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(this.col2.y);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_);
         if(!_loc10_)
         {
            §§push(_loc7_);
            if(!(_loc10_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc10_ && param1))
               {
                  §§push(_loc5_);
                  if(!(_loc10_ && param3))
                  {
                     §§push(§§pop() * _loc6_);
                     if(_loc9_ || param3)
                     {
                        addr90:
                        §§push(§§pop() - §§pop());
                        if(!(_loc10_ && this))
                        {
                           addr99:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr99);
                     }
                     var _loc8_:* = §§pop();
                     if(!_loc10_)
                     {
                        if(§§pop() != 0)
                        {
                           if(!(_loc10_ && param1))
                           {
                              §§push(1 / _loc8_);
                              if(_loc9_)
                              {
                                 addr128:
                                 _loc8_ = Number(§§pop());
                                 if(!(_loc10_ && param3))
                                 {
                                    addr187:
                                    §§push(param1);
                                    §§push(_loc8_);
                                    if(_loc9_ || param3)
                                    {
                                       §§push(_loc7_);
                                       if(!(_loc10_ && param1))
                                       {
                                          §§push(param2);
                                          if(_loc9_ || param2)
                                          {
                                             addr242:
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc10_ && param1))
                                             {
                                                addr230:
                                                §§push(_loc5_);
                                                if(!(_loc10_ && this))
                                                {
                                                   addr238:
                                                   §§push(§§pop() * param3);
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§pop().x = §§pop() * §§pop();
                                             do
                                             {
                                                §§push(param1);
                                                §§push(_loc8_);
                                                if(_loc10_ && this)
                                                {
                                                   continue;
                                                }
                                                §§push(_loc4_);
                                                if(!_loc10_)
                                                {
                                                   §§push(param3);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc9_ || param1)
                                                      {
                                                         addr166:
                                                         §§push(_loc6_);
                                                         if(!(_loc10_ && this))
                                                         {
                                                            addr174:
                                                            §§push(§§pop() * param2);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      continue;
                                                   }
                                                   §§goto(addr174);
                                                }
                                                §§goto(addr166);
                                             }
                                             while(§§pop().y = §§pop(), !(_loc9_ || param3));
                                             
                                             return param1;
                                             addr186:
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr230);
                                    }
                                    §§goto(addr242);
                                 }
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr128);
                  }
               }
               §§goto(addr99);
            }
            §§goto(addr90);
         }
         §§goto(addr99);
      }
      
      public function §`c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.col1.§`c§();
         }
         do
         {
            this.col2.§`c§();
         }
         while(_loc2_ && _loc1_);
         
      }
   }
}
