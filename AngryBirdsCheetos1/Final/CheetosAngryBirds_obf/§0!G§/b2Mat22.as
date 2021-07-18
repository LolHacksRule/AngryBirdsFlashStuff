package §0!G§
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
            while(true)
            {
               addr50:
               while(true)
               {
                  this.col2 = new b2Vec2();
               }
            }
            addr60:
         }
         while(true)
         {
            super();
            if(!(_loc3_ && _loc1_))
            {
               if(_loc3_ && this)
               {
                  continue;
               }
               if(_loc2_)
               {
                  if(true)
                  {
                     this.col1.x = this.col2.y = 1;
                     break;
                  }
               }
               else
               {
                  §§goto(addr60);
               }
               §§goto(addr50);
            }
            break;
         }
      }
      
      public static function §&V§(param1:Number) : b2Mat22
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = new b2Mat22();
         if(_loc3_ || b2Mat22)
         {
            _loc2_.Set(param1);
         }
         return _loc2_;
      }
      
      public static function §9B§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!(_loc5_ && b2Mat22))
         {
            _loc3_.§^t§(param1,param2);
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
            if(!_loc5_)
            {
               _loc2_ = §§pop();
               addr27:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || _loc3_)
            {
               §§push(this.col1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr127:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.col2);
                        addr101:
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ && param1))
                           {
                              §§push(-§§pop());
                           }
                           while(true)
                           {
                              §§pop().x = §§pop();
                              addr121:
                              while(_loc4_)
                              {
                                 continue loop0;
                              }
                              addr54:
                              §§push(_loc2_);
                              continue loop2;
                              if(_loc5_ && param1)
                              {
                                 continue;
                              }
                              §§pop().y = §§pop();
                              if(_loc4_)
                              {
                                 return;
                                 addr75:
                              }
                              else
                              {
                                 addr90:
                              }
                              while(_loc4_ || this)
                              {
                                 continue loop3;
                              }
                              §§goto(addr121);
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.col2);
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr54);
               }
               §§goto(addr101);
            }
            §§goto(addr75);
         }
         §§goto(addr27);
      }
      
      public function §^t§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.col1.SetV(param1);
            do
            {
               this.col2.SetV(param2);
            }
            while(!(_loc3_ || param2));
            
         }
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(!_loc2_)
         {
            _loc1_.§,K§(this);
         }
         return _loc1_;
      }
      
      public function §,K§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.col1.SetV(param1.col1);
            do
            {
               this.col2.SetV(param1.col2);
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function §!C§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(this.col1);
               addr161:
               while(true)
               {
                  §§push(§§pop().x);
                  if(!_loc2_)
                  {
                     §§push(param1.col1);
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr167:
                        addr125:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                        }
                        §§push(param1.col1);
                        if(!(_loc3_ || param1))
                        {
                           continue;
                        }
                        §§push(§§pop().y);
                        if(!(_loc2_ && this))
                        {
                           addr143:
                           §§pop().y = §§pop() + §§pop();
                           for(; !_loc2_; while(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr105);
                           })
                           {
                              §§push(this.col2);
                              while(true)
                              {
                                 §§push(this.col2);
                                 addr92:
                                 §§goto(addr105);
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr167);
                     }
                  }
                  addr168:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         addr105:
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
                        continue loop6;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.col2);
            if(!(_loc3_ || _loc3_))
            {
               continue loop7;
            }
            §§push(this.col2);
            if(_loc3_)
            {
               §§push(§§pop().y);
               if(_loc3_)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(param1.col2);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(§§pop().y);
                        if(!_loc2_)
                        {
                           addr66:
                           §§push(§§pop() + §§pop());
                           if(_loc3_)
                           {
                              §§pop().y = §§pop();
                              if(_loc3_ || _loc3_)
                              {
                                 break;
                              }
                              continue loop6;
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr97);
               }
               §§goto(addr66);
            }
            else
            {
               §§goto(addr92);
            }
         }
      }
      
      public function §`!!§() : void
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
                     continue loop0;
                     §§goto(addr80);
                  }
               }
            }
         }
         addr80:
         loop5:
         while(true)
         {
            §§push(this.col2);
            if(!(_loc1_ && _loc2_))
            {
               addr34:
               §§pop().y = 1;
               if(!(_loc1_ && this))
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     break;
                  }
                  continue loop0;
               }
               addr73:
               while(!(_loc1_ && _loc2_))
               {
                  continue loop5;
                  §§goto(addr34);
               }
               continue loop1;
            }
            continue loop2;
         }
      }
      
      public function §3a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
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
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§push(0);
                           if(!(_loc1_ && _loc2_))
                           {
                              §§pop().y = §§pop();
                              if(_loc2_)
                              {
                                 if(!_loc1_)
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
         }
         §§goto(addr59);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §&R§(param1:b2Mat22) : b2Mat22
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
         if(_loc7_ || _loc3_)
         {
            §§push(this.col2.x);
            if(_loc7_ || this)
            {
               §§push(Number(§§pop()));
               if(_loc7_ || param1)
               {
                  addr52:
                  _loc3_ = §§pop();
                  §§push(this.col1.y);
                  if(!(_loc8_ && param1))
                  {
                     addr63:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(this.col2.y);
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc8_)
                  {
                     §§push(_loc2_);
                     if(_loc7_ || this)
                     {
                        §§push(_loc5_);
                        if(_loc7_ || _loc2_)
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
                                    if(!_loc8_)
                                    {
                                       addr207:
                                       §§push(Number(§§pop()));
                                       if(!_loc8_)
                                       {
                                          addr210:
                                          §§push(§§pop());
                                          if(_loc7_)
                                          {
                                             addr213:
                                             _loc6_ = §§pop();
                                             if(_loc7_ || _loc2_)
                                             {
                                                addr221:
                                                §§push(0);
                                             }
                                             loop13:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                addr240:
                                                loop14:
                                                while(true)
                                                {
                                                   addr168:
                                                   while(true)
                                                   {
                                                      §§push(param1.col1);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     §§push(param1.col2);
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                        }
                                                                        addr164:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           addr165:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              addr166:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.col1);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(_loc6_);
                                                                                    if(!(_loc8_ && _loc2_))
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr149:
                                                                                                §§push(_loc4_);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                continue loop11;
                                                                                                addr106:
                                                                                                §§pop().y = §§pop();
                                                                                                if(!(_loc7_ || this))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   return param1;
                                                                                                }
                                                                                                addr233:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(1 / _loc6_);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   continue loop13;
                                                                                                }
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§goto(addr149);
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop14;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop14;
                                                   }
                                                }
                                             }
                                             addr239:
                                          }
                                          if(§§pop() != §§pop())
                                          {
                                             §§goto(addr233);
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr239);
                                    }
                                    §§goto(addr210);
                                 }
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr240);
               }
               §§goto(addr63);
            }
         }
         §§goto(addr52);
      }
      
      public function §9G§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(this.col1.x);
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.col2.x);
         if(!(_loc10_ && param1))
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
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_);
         if(_loc9_ || param2)
         {
            §§push(_loc7_);
            if(!_loc10_)
            {
               §§push(§§pop() * §§pop());
               if(_loc9_ || this)
               {
                  addr73:
                  §§push(_loc5_);
                  if(!(_loc10_ && param3))
                  {
                     addr81:
                     §§push(§§pop() * _loc6_);
                     if(_loc9_)
                     {
                        addr85:
                        §§push(§§pop() - §§pop());
                        if(_loc9_)
                        {
                           addr89:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr89);
                     }
                     var _loc8_:* = §§pop();
                     if(_loc9_)
                     {
                        if(§§pop() != 0)
                        {
                           if(!(_loc10_ && param1))
                           {
                              §§push(1 / _loc8_);
                              if(!(_loc10_ && param2))
                              {
                                 addr122:
                                 §§push(Number(§§pop()));
                              }
                              _loc8_ = §§pop();
                              if(!_loc10_)
                              {
                                 addr172:
                                 §§push(param1);
                                 §§push(_loc8_);
                                 if(_loc9_)
                                 {
                                    §§push(_loc7_);
                                    if(_loc9_)
                                    {
                                       §§push(param2);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc9_ || param1)
                                          {
                                             addr206:
                                             addr207:
                                             §§push(_loc5_);
                                             if(_loc9_)
                                             {
                                                addr203:
                                                §§push(§§pop() * param3);
                                             }
                                             §§pop().x = §§pop() * (§§pop() - §§pop());
                                             do
                                             {
                                                §§push(param1);
                                                §§push(_loc8_);
                                                if(_loc10_)
                                                {
                                                   continue;
                                                }
                                                §§push(_loc4_);
                                                if(_loc9_)
                                                {
                                                   §§push(param3);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc10_ && param2))
                                                      {
                                                         addr151:
                                                         §§push(_loc6_);
                                                         if(_loc9_ || param3)
                                                         {
                                                            addr159:
                                                            §§push(§§pop() * param2);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      continue;
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr151);
                                             }
                                             while(§§pop().y = §§pop(), !(_loc9_ || param2));
                                             
                                             return param1;
                                             addr171:
                                             addr208:
                                          }
                                          §§goto(addr206);
                                       }
                                       §§goto(addr203);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr208);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr85);
               }
               §§goto(addr89);
            }
            §§goto(addr81);
         }
         §§goto(addr73);
      }
      
      public function §8M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.col1.§8M§();
         }
         do
         {
            this.col2.§8M§();
         }
         while(!_loc1_);
         
      }
   }
}
