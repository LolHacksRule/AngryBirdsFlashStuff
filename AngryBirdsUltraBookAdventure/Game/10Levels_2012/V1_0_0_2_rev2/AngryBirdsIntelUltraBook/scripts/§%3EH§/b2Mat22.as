package §>H§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.col1 = new b2Vec2();
         }
         loop0:
         while(true)
         {
            addr42:
            addr88:
            while(true)
            {
               this.col2 = new b2Vec2();
               if(!(_loc3_ || _loc2_))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      public static function §>!m§(param1:Number) : b2Mat22
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = new b2Mat22();
         if(!(_loc4_ && b2Mat22))
         {
            _loc2_.Set(param1);
         }
         return _loc2_;
      }
      
      public static function §;!N§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(_loc4_ || b2Mat22)
         {
            _loc3_.§!!b§(param1,param2);
         }
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         if(!(_loc4_ && param1))
         {
            §§push(Number(Math.cos(param1)));
            if(_loc5_ || this)
            {
               _loc2_ = §§pop();
               addr38:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               §§push(this.col1);
               while(true)
               {
                  §§push(_loc2_);
                  addr128:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     addr129:
                     while(true)
                     {
                        §§push(this.col2);
                        while(true)
                        {
                           §§push(_loc3_);
                           addr122:
                           §§goto(addr117);
                        }
                     }
                  }
               }
            }
            addr117:
            while(true)
            {
               §§push(-§§pop());
               addr123:
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
               if(_loc4_ && param1)
               {
                  continue loop3;
               }
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     addr75:
                     §§pop().y = §§pop();
                     if(!(_loc4_ && _loc2_))
                     {
                        break;
                     }
                     addr108:
                     while(_loc5_)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           continue loop8;
                        }
                        continue loop2;
                        §§goto(addr75);
                     }
                     continue loop0;
                  }
                  §§goto(addr122);
               }
               §§goto(addr123);
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §!!b§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.col1.SetV(param1);
         }
         do
         {
            this.col2.SetV(param2);
         }
         while(!_loc3_);
         
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(!_loc2_)
         {
            _loc1_.§1c§(this);
         }
         return _loc1_;
      }
      
      public function §1c§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.col1.SetV(param1.col1);
            do
            {
               this.col2.SetV(param1.col2);
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      public function § !Y§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(this.col1);
               addr173:
               while(true)
               {
                  §§push(§§pop().x);
                  addr174:
                  while(true)
                  {
                     §§push(param1.col1);
                     addr176:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr177:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr178:
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
            addr171:
         }
         loop6:
         while(true)
         {
            §§push(this.col1);
            if(_loc3_ || _loc2_)
            {
               §§push(this.col1);
               if(_loc3_ || this)
               {
                  §§push(§§pop().y);
                  if(!_loc2_)
                  {
                     if(!(_loc2_ && this))
                     {
                        §§push(param1.col1);
                        if(_loc3_ || param1)
                        {
                           §§push(§§pop().y);
                           if(!(_loc2_ && param1))
                           {
                              addr165:
                              §§push(§§pop() + §§pop());
                              if(!_loc2_)
                              {
                                 §§pop().y = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.col2);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.col2);
                                       addr92:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc3_)
                                          {
                                             §§push(param1.col2);
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr98:
                                                addr46:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§push(param1.col2);
                                                if(!(_loc3_ || this))
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop().y);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   addr64:
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      §§pop().y = §§pop();
                                                      if(!_loc2_)
                                                      {
                                                         continue loop7;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr99:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                      }
                                                      addr99:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && this))
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                §§goto(addr98);
                                             }
                                          }
                                          §§goto(addr99);
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr177);
                           }
                           §§goto(addr178);
                        }
                        else
                        {
                           §§goto(addr176);
                        }
                     }
                     else
                     {
                        §§goto(addr174);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr165);
               }
               else
               {
                  §§goto(addr173);
               }
            }
            else
            {
               §§goto(addr171);
            }
            §§goto(addr173);
         }
      }
      
      public function §5!_§() : void
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
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop().y = 0;
                  loop4:
                  for(; _loc2_; §§pop().y = 1,if(_loc2_ || this)
                  {
                     if(!(_loc2_ || this))
                     {
                        while(true)
                        {
                           §§goto(addr84);
                        }
                        addr91:
                     }
                     return;
                  })
                  {
                     addr80:
                     §§push(this.col2);
                     if(_loc2_ || this)
                     {
                        continue;
                     }
                     addr84:
                     while(true)
                     {
                        §§pop().x = 0;
                        break loop4;
                        §§goto(addr80);
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §`!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
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
               }
               loop5:
               while(true)
               {
                  §§push(this.col1);
                  if(_loc1_ && _loc2_)
                  {
                     continue loop0;
                  }
                  §§push(0);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop().y = §§pop();
                  loop6:
                  while(true)
                  {
                     §§push(this.col2);
                     if(_loc2_)
                     {
                        §§push(0);
                        if(_loc2_ || this)
                        {
                           §§pop().y = §§pop();
                           if(!_loc2_)
                           {
                              continue;
                           }
                           if(_loc1_ && this)
                           {
                              continue loop5;
                           }
                           if(!_loc1_)
                           {
                              return;
                           }
                           addr100:
                           while(true)
                           {
                              §§push(this.col2);
                              break loop6;
                           }
                        }
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop5;
                        }
                        addr94:
                     }
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr94);
                     §§goto(addr89);
                  }
                  addr89:
               }
               §§goto(addr99);
            }
         }
         §§goto(addr100);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §,p§(param1:b2Mat22) : b2Mat22
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
            if(!(_loc7_ && this))
            {
               §§push(Number(§§pop()));
               if(_loc8_ || _loc3_)
               {
                  _loc3_ = §§pop();
                  addr54:
                  §§push(this.col1.y);
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc4_:* = §§pop();
            §§push(this.col2.y);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc8_ || _loc3_)
            {
               §§push(_loc2_);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(_loc5_);
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc8_ || _loc2_)
                     {
                        §§push(_loc3_);
                        if(!(_loc7_ && _loc2_))
                        {
                           addr244:
                           §§push(§§pop() * _loc4_);
                           if(_loc8_ || param1)
                           {
                              addr253:
                              §§push(§§pop() - §§pop());
                              if(_loc8_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc8_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       _loc6_ = §§pop();
                                       if(!_loc7_)
                                       {
                                          addr281:
                                          if(§§pop() != 0)
                                          {
                                             if(!_loc7_)
                                             {
                                                §§push(1 / _loc6_);
                                                if(!(_loc7_ && this))
                                                {
                                                   addr295:
                                                   _loc6_ = Number(§§pop());
                                                }
                                                §§goto(addr295);
                                             }
                                             while(true)
                                             {
                                                loop11:
                                                for(; _loc8_ || _loc3_; §§pop().y = §§pop(),if(_loc7_ && this)
                                                {
                                                   continue;
                                                },if(!_loc7_)
                                                {
                                                   §§goto(addr122);
                                                }
                                                else
                                                {
                                                   §§goto(addr196);
                                                })
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(param1.col2);
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc8_)
                                                            {
                                                               addr98:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc8_ || this)
                                                               {
                                                                  addr105:
                                                                  if(!(_loc7_ && _loc2_))
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     addr194:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§goto(addr105);
                                                                  }
                                                                  addr193:
                                                               }
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  addr196:
                                                                  loop10:
                                                                  while(_loc8_ || _loc2_)
                                                                  {
                                                                     addr203:
                                                                     §§push(param1.col1);
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr177:
                                                                                       §§pop().y = §§pop() * §§pop();
                                                                                       continue loop11;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr177);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                 }
                                                                                 addr208:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              break loop10;
                                                                           }
                                                                        }
                                                                        §§goto(addr177);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr203);
                                                                        }
                                                                        addr207:
                                                                     }
                                                                     §§goto(addr208);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.col2);
                                                                     addr189:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§goto(addr193);
                                                                        §§push(-§§pop());
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         §§goto(addr98);
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   return param1;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr207);
                                          }
                                       }
                                       §§goto(addr295);
                                    }
                                    §§goto(addr281);
                                 }
                                 §§goto(addr295);
                              }
                           }
                           §§goto(addr281);
                        }
                        §§goto(addr253);
                     }
                     §§goto(addr281);
                  }
                  §§goto(addr244);
               }
               §§goto(addr281);
            }
            §§goto(addr185);
         }
         §§goto(addr54);
      }
      
      public function §3!=§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.col1.x);
         if(_loc10_)
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
         if(_loc10_ || param1)
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
         if(!_loc9_)
         {
            §§push(_loc7_);
            if(_loc10_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc9_ && this))
               {
                  addr64:
                  §§push(_loc5_);
                  if(_loc10_ || param2)
                  {
                     §§push(§§pop() * _loc6_);
                     if(!(_loc9_ && param3))
                     {
                        addr91:
                        §§push(§§pop() - §§pop());
                        if(_loc10_ || param2)
                        {
                           addr89:
                           §§push(Number(§§pop()));
                        }
                        var _loc8_:*;
                        §§push(_loc8_ = §§pop());
                        if(_loc10_)
                        {
                           if(§§pop() != 0)
                           {
                              if(!(_loc9_ && param3))
                              {
                                 §§push(1 / _loc8_);
                                 if(_loc10_)
                                 {
                                    addr119:
                                    _loc8_ = Number(§§pop());
                                    if(_loc10_ || param2)
                                    {
                                       addr168:
                                       §§push(param1);
                                       §§push(_loc8_);
                                       if(_loc10_ || param2)
                                       {
                                          §§push(_loc7_);
                                          if(!(_loc9_ && param2))
                                          {
                                             §§push(param2);
                                             if(!(_loc9_ && this))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc10_ || param2)
                                                {
                                                   addr211:
                                                   §§push(_loc5_);
                                                   if(!_loc9_)
                                                   {
                                                      addr216:
                                                      §§push(§§pop() - §§pop() * param3);
                                                   }
                                                   §§goto(addr216);
                                                }
                                                addr218:
                                                §§pop().x = §§pop() * §§pop();
                                                do
                                                {
                                                   §§push(param1);
                                                   §§push(_loc8_);
                                                   if(!(_loc10_ || param2))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc4_);
                                                   if(_loc10_)
                                                   {
                                                      §§push(param3);
                                                      if(_loc10_ || param1)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc9_)
                                                         {
                                                            addr157:
                                                            §§push(_loc6_);
                                                            if(!_loc9_)
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
                                                while(§§pop().y = §§pop(), !_loc10_);
                                                
                                                return param1;
                                                addr219:
                                                addr167:
                                             }
                                             §§goto(addr216);
                                          }
                                          §§goto(addr211);
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr119);
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr89);
            }
            §§goto(addr91);
         }
         §§goto(addr64);
      }
      
      public function §-n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.col1.§-n§();
         }
         do
         {
            this.col2.§-n§();
         }
         while(_loc2_);
         
      }
   }
}
