package §8>§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.col1 = new b2Vec2();
            if(!_loc2_)
            {
               loop0:
               while(true)
               {
                  this.col2 = new b2Vec2();
                  if(!(_loc2_ && _loc3_))
                  {
                     super();
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           if(true)
                           {
                              this.col1.x = this.col2.y = 1;
                              break loop0;
                           }
                           continue loop0;
                        }
                        addr40:
                     }
                     break;
                  }
                  break;
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public static function §'7§(param1:Number) : b2Mat22
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = new b2Mat22();
         if(_loc4_)
         {
            _loc2_.Set(param1);
         }
         return _loc2_;
      }
      
      public static function §-]§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(_loc4_ || param1)
         {
            _loc3_.§9!e§(param1,param2);
         }
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         if(!(_loc5_ && _loc2_))
         {
            §§push(Number(Math.cos(param1)));
            if(!_loc5_)
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
                  addr132:
                  while(true)
                  {
                     §§pop().x = §§pop();
                  }
                  loop6:
                  while(true)
                  {
                     §§push(this.col1);
                     if(!(_loc4_ || _loc2_))
                     {
                        continue loop0;
                     }
                     §§push(_loc3_);
                     if(_loc5_ && _loc3_)
                     {
                        break;
                     }
                     §§pop().y = §§pop();
                     while(!_loc5_)
                     {
                        addr121:
                        §§push(this.col2);
                        if(_loc4_ || this)
                        {
                           §§push(_loc2_);
                           if(!_loc5_)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§pop().y = §§pop();
                                 if(_loc4_)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       return;
                                    }
                                    continue loop6;
                                 }
                                 continue;
                              }
                              while(true)
                              {
                                 §§push(-§§pop());
                              }
                              addr126:
                           }
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop6;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§goto(addr121);
                           }
                           addr125:
                        }
                        §§goto(addr126);
                     }
                     while(true)
                     {
                        §§goto(addr125);
                     }
                  }
                  §§goto(addr132);
               }
            }
            §§goto(addr133);
         }
         §§goto(addr32);
      }
      
      public function §9!e§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
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
         if(_loc3_)
         {
            _loc1_.§2E§(this);
         }
         return _loc1_;
      }
      
      public function §2E§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.col1.SetV(param1.col1);
            do
            {
               this.col2.SetV(param1.col2);
            }
            while(!_loc2_);
            
         }
      }
      
      public function §<O§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(this.col1);
               addr167:
               while(true)
               {
                  §§push(§§pop().x);
                  addr168:
                  while(true)
                  {
                     §§push(param1.col1);
                     addr170:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr171:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr172:
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
         §§goto(addr90);
      }
      
      public function §8x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
                     addr89:
                     while(!(_loc1_ && this))
                     {
                        continue loop0;
                     }
                     §§goto(addr83);
                  }
               }
            }
         }
         addr83:
         continue loop1;
         while(true)
         {
            §§push(this.col2);
            if(_loc2_ || this)
            {
               continue;
            }
            continue loop2;
         }
      }
      
      public function §%&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.col1);
            while(true)
            {
               §§push(0);
               addr104:
               while(true)
               {
                  §§pop().x = §§pop();
                  while(true)
                  {
                     §§push(this.col2);
                     while(true)
                     {
                        §§push(0);
                        addr92:
                        §§goto(addr87);
                     }
                  }
               }
            }
         }
         addr87:
         while(true)
         {
            §§pop().x = §§pop();
            addr93:
            while(!(_loc1_ && _loc2_))
            {
               continue loop0;
            }
            continue loop2;
         }
         while(true)
         {
            §§push(this.col2);
            if(_loc1_ && this)
            {
               continue loop3;
            }
            §§push(0);
            if(_loc2_ || _loc1_)
            {
               §§pop().y = §§pop();
               if(_loc1_)
               {
                  continue;
               }
               if(!(_loc1_ && this))
               {
                  break;
               }
            }
            else
            {
               §§goto(addr92);
            }
            §§goto(addr93);
         }
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §+!s§(param1:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         §§push(this.col1.x);
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_ || this)
         {
            §§push(this.col2.x);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  _loc3_ = §§pop();
                  addr44:
                  §§push(this.col1.y);
                  if(!_loc7_)
                  {
                     addr49:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(this.col2.y);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(_loc8_ || param1)
                  {
                     §§push(_loc2_);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(_loc5_);
                        if(_loc8_ || _loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc8_ || this)
                           {
                              §§push(_loc3_);
                              if(!_loc7_)
                              {
                                 addr216:
                                 §§push(§§pop() * _loc4_);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc8_ || _loc2_)
                                    {
                                       addr228:
                                       §§push(Number(§§pop()));
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          addr246:
                                          §§push(§§pop());
                                          if(_loc8_)
                                          {
                                             addr249:
                                             _loc6_ = §§pop();
                                             if(_loc7_ && _loc2_)
                                             {
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                loop7:
                                                while(true)
                                                {
                                                   addr175:
                                                   while(true)
                                                   {
                                                      §§push(param1.col1);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc8_)
                                                         {
                                                            §§push(_loc5_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr134:
                                                               §§push(_loc4_);
                                                               if(!(_loc8_ || _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               addr143:
                                                               §§pop().y = §§pop() * §§pop();
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(_loc8_ || _loc2_)
                                                                  {
                                                                     addr151:
                                                                     §§push(param1.col2);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc8_)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr81:
                                                                              §§push(_loc2_);
                                                                              if(!(_loc7_ && _loc2_))
                                                                              {
                                                                                 addr90:
                                                                                 §§pop().y = §§pop() * §§pop();
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(!(_loc7_ && this))
                                                                                    {
                                                                                       return param1;
                                                                                    }
                                                                                    addr174:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.col1);
                                                                                       if(_loc7_ && this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(_loc6_);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(_loc8_ || param1)
                                                                                          {
                                                                                             addr132:
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§goto(addr134);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   addr184:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.col2);
                                                                                                            addr155:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc8_ || this)
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(_loc8_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        break loop13;
                                                                                                                        §§goto(addr81);
                                                                                                                     }
                                                                                                                     addr172:
                                                                                                                  }
                                                                                                                  break loop13;
                                                                                                               }
                                                                                                               break loop13;
                                                                                                               §§goto(addr151);
                                                                                                            }
                                                                                                         }
                                                                                                         addr188:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(1 / _loc6_);
                                                                                                            if(!(_loc7_ && this))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         addr259:
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                                addr183:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr143);
                                                                                       }
                                                                                       §§goto(addr132);
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr172);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr90);
                                                                     }
                                                                     §§goto(addr155);
                                                                  }
                                                                  §§goto(addr184);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  §§goto(addr174);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                             addr270:
                                          }
                                          addr258:
                                          if(§§pop() != §§pop())
                                          {
                                             §§goto(addr259);
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr258);
                                       §§push(0);
                                    }
                                 }
                                 §§goto(addr246);
                              }
                              §§goto(addr249);
                           }
                           §§goto(addr228);
                        }
                        §§goto(addr216);
                     }
                     §§goto(addr270);
                  }
                  §§goto(addr188);
               }
            }
            §§goto(addr49);
         }
         §§goto(addr44);
      }
      
      public function §[!T§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.col1.x);
         if(!(_loc9_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.col2.x);
         if(_loc10_ || this)
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
         if(_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_);
         if(!_loc9_)
         {
            §§push(_loc7_);
            if(_loc10_ || param2)
            {
               §§push(§§pop() * §§pop());
               if(!_loc9_)
               {
                  §§push(_loc5_);
                  if(!(_loc9_ && param1))
                  {
                     §§push(§§pop() * _loc6_);
                     if(_loc10_)
                     {
                        addr81:
                        §§push(§§pop() - §§pop());
                        if(!_loc9_)
                        {
                           addr85:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr85);
                     }
                  }
                  var _loc8_:* = §§pop();
                  if(!_loc9_)
                  {
                     if(§§pop() != 0)
                     {
                        if(_loc10_ || param1)
                        {
                           §§push(1 / _loc8_);
                           if(!(_loc9_ && param1))
                           {
                              addr119:
                              _loc8_ = Number(§§pop());
                              if(!_loc9_)
                              {
                                 addr173:
                                 §§push(param1);
                                 §§push(_loc8_);
                                 if(_loc10_ || param1)
                                 {
                                    §§push(_loc7_);
                                    if(!_loc9_)
                                    {
                                       §§push(param2);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc10_ || param1)
                                          {
                                             addr212:
                                             addr213:
                                             §§push(_loc5_);
                                             if(!_loc9_)
                                             {
                                                addr209:
                                                §§push(§§pop() * param3);
                                             }
                                             §§pop().x = §§pop() * (§§pop() - §§pop());
                                             do
                                             {
                                                §§push(param1);
                                                §§push(_loc8_);
                                                if(!_loc10_)
                                                {
                                                   continue;
                                                }
                                                §§push(_loc4_);
                                                if(_loc10_ || param2)
                                                {
                                                   §§push(param3);
                                                   if(!(_loc9_ && param3))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc9_ && this))
                                                      {
                                                         addr157:
                                                         §§push(_loc6_);
                                                         if(_loc10_)
                                                         {
                                                            addr160:
                                                            §§push(§§pop() * param2);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      continue;
                                                   }
                                                   §§goto(addr160);
                                                }
                                                §§goto(addr157);
                                             }
                                             while(§§pop().y = §§pop(), _loc9_ && param1);
                                             
                                             return param1;
                                             addr214:
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr213);
                                 addr122:
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr119);
               }
               §§goto(addr85);
            }
            §§goto(addr81);
         }
         §§goto(addr85);
      }
      
      public function §>!Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.col1.§>!Y§();
         }
         do
         {
            this.col2.§>!Y§();
         }
         while(_loc1_);
         
      }
   }
}
