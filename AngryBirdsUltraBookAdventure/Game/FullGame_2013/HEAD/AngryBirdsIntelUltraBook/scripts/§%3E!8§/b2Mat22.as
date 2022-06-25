package §>!8§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.col1 = new b2Vec2();
            while(true)
            {
               addr61:
               while(true)
               {
                  this.col2 = new b2Vec2();
               }
            }
            addr71:
         }
         while(true)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  if(true)
                  {
                     this.col1.x = this.col2.y = 1;
                     break;
                  }
               }
               else
               {
                  §§goto(addr71);
               }
               §§goto(addr61);
            }
            break;
         }
      }
      
      public static function §[_§(param1:Number) : b2Mat22
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
      
      public static function §?!5§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!_loc4_)
         {
            _loc3_.§!7§(param1,param2);
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
            if(_loc4_)
            {
               _loc2_ = §§pop();
               addr28:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && _loc2_))
            {
               §§push(this.col1);
               while(true)
               {
                  §§push(_loc2_);
                  addr124:
                  while(true)
                  {
                     §§pop().x = §§pop();
                  }
                  addr120:
                  §§push(this.col1);
                  if(_loc5_)
                  {
                     continue;
                  }
                  §§push(_loc3_);
                  if(_loc4_ || _loc3_)
                  {
                     §§pop().y = §§pop();
                     loop6:
                     while(true)
                     {
                        §§push(this.col2);
                        if(!(_loc5_ && _loc2_))
                        {
                           addr66:
                           §§push(_loc2_);
                           if(_loc4_ || _loc3_)
                           {
                              §§pop().y = §§pop();
                              if(_loc5_)
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 return;
                              }
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr120);
                                 }
                                 addr125:
                                 while(true)
                                 {
                                    §§push(this.col2);
                                    break loop6;
                                 }
                              }
                              §§goto(addr124);
                              addr118:
                           }
                           while(true)
                           {
                              §§pop().x = §§pop();
                              §§goto(addr118);
                              §§goto(addr66);
                           }
                           addr117:
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(-§§pop());
                        }
                        §§goto(addr117);
                        §§goto(addr104);
                     }
                     addr104:
                  }
                  §§goto(addr124);
               }
            }
            §§goto(addr125);
         }
         §§goto(addr28);
      }
      
      public function §!7§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.col1.SetV(param1);
            do
            {
               this.col2.SetV(param2);
            }
            while(_loc3_);
            
         }
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(_loc2_)
         {
            _loc1_.§<+§(this);
         }
         return _loc1_;
      }
      
      public function §<+§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.col1.SetV(param1.col1);
         }
         do
         {
            this.col2.SetV(param1.col2);
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function §!!h§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(this.col1);
               addr163:
               while(true)
               {
                  §§push(§§pop().x);
                  addr164:
                  while(true)
                  {
                     §§push(param1.col1);
                     addr166:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr167:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr168:
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
            addr161:
         }
         while(true)
         {
            §§push(this.col1);
            if(_loc3_)
            {
               §§push(this.col1);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop().y);
                  if(_loc3_)
                  {
                     if(!(_loc2_ && param1))
                     {
                        if(_loc3_)
                        {
                           §§push(param1.col1);
                           if(_loc3_ || param1)
                           {
                              §§push(§§pop().y);
                              if(_loc3_ || this)
                              {
                                 addr157:
                                 §§pop().y = §§pop() + §§pop();
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
                                          if(!_loc2_)
                                          {
                                             §§push(param1.col2);
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr98:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                }
                                             }
                                             addr97:
                                          }
                                          addr99:
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             addr100:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop8;
                                                }
                                                continue loop7;
                                             }
                                             §§goto(addr98);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr166);
                           }
                           §§goto(addr167);
                        }
                        else
                        {
                           §§goto(addr164);
                        }
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr157);
               }
               else
               {
                  §§goto(addr163);
               }
            }
            else
            {
               §§goto(addr161);
            }
            §§goto(addr163);
         }
      }
      
      public function §?!"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
                     addr84:
                     while(_loc2_ || _loc2_)
                     {
                        continue loop0;
                     }
                     §§goto(addr78);
                  }
               }
            }
         }
         addr78:
         continue loop1;
         loop5:
         while(true)
         {
            §§push(this.col2);
            if(!(_loc2_ || _loc1_))
            {
               continue loop2;
            }
            §§pop().y = 1;
            addr34:
            if(_loc2_)
            {
               break;
            }
            addr71:
            while(!(_loc1_ && this))
            {
               continue loop5;
               §§goto(addr34);
            }
            §§goto(addr84);
         }
      }
      
      public function §@!;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(0);
               addr108:
               while(true)
               {
                  §§pop().x = §§pop();
               }
               while(true)
               {
                  §§push(this.col1);
                  if(_loc1_ || _loc1_)
                  {
                     §§push(0);
                     if(_loc2_ && _loc2_)
                     {
                        break;
                     }
                     §§pop().y = §§pop();
                     loop6:
                     for(; _loc1_ || this; §§pop().y = §§pop(),if(!(_loc1_ || this))
                     {
                        continue;
                     },if(!_loc2_)
                     {
                        return;
                     },addr109:,while(true)
                     {
                        §§goto(addr102);
                     })
                     {
                        addr98:
                        §§push(this.col2);
                        if(_loc1_)
                        {
                           §§push(0);
                           if(_loc1_ || _loc2_)
                           {
                              continue;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(0);
                              §§goto(addr98);
                           }
                           addr102:
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
               §§goto(addr108);
            }
         }
         §§goto(addr109);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §0!A§(param1:b2Mat22) : b2Mat22
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
            if(_loc8_ || this)
            {
               §§push(Number(§§pop()));
               if(_loc8_)
               {
                  _loc3_ = §§pop();
                  addr49:
                  §§push(this.col1.y);
                  if(!_loc7_)
                  {
                     addr54:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               §§push(this.col2.y);
               if(!(_loc7_ && param1))
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
                     if(_loc8_ || this)
                     {
                        §§push(§§pop() * §§pop());
                        loop0:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc8_ || _loc2_)
                           {
                              while(true)
                              {
                                 §§push(§§pop() * _loc4_);
                              }
                              addr266:
                           }
                           loop1:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              if(!(_loc7_ && param1))
                              {
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 addr276:
                              }
                              loop2:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 addr278:
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(!_loc7_)
                                    {
                                       if(!_loc8_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(0);
                                       if(!_loc8_)
                                       {
                                          continue loop1;
                                       }
                                       if(§§pop() != §§pop())
                                       {
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §§push(1 / _loc6_);
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                addr232:
                                                §§push(Number(§§pop()));
                                                if(_loc7_)
                                                {
                                                   continue loop0;
                                                }
                                                _loc6_ = §§pop();
                                             }
                                             §§goto(addr232);
                                          }
                                          while(true)
                                          {
                                          }
                                          addr235:
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          §§push(param1.col1);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr200:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                addr201:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr202:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      addr203:
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(param1.col2);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc8_ || param1)
                                                            {
                                                               §§push(-§§pop());
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               addr193:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  addr194:
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     continue loop8;
                                                                  }
                                                               }
                                                               addr100:
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  addr107:
                                                                  §§pop().y = §§pop();
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              return param1;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  addr177:
                                                                  while(_loc8_)
                                                                  {
                                                                     continue loop13;
                                                                     §§goto(addr107);
                                                                  }
                                                                  continue loop7;
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
                                    §§goto(addr232);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr266);
                  }
                  §§goto(addr276);
               }
               §§goto(addr278);
            }
            §§goto(addr54);
         }
         §§goto(addr49);
      }
      
      public function §]j§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.col1.x);
         if(!(_loc9_ && this))
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
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(this.col2.y);
         if(_loc10_ || param3)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_);
         if(!_loc9_)
         {
            §§push(_loc7_);
            if(!(_loc9_ && param1))
            {
               addr87:
               §§push(§§pop() * §§pop());
               if(!_loc9_)
               {
                  §§push(_loc5_);
                  if(!(_loc9_ && param3))
                  {
                     §§push(§§pop() * _loc6_);
                  }
               }
               var _loc8_:* = Number(§§pop());
               if(!(_loc9_ && param2))
               {
                  §§push(_loc8_);
                  if(!_loc9_)
                  {
                     if(§§pop() != 0)
                     {
                        if(!(_loc9_ && param2))
                        {
                           addr209:
                           §§push(1 / _loc8_);
                           if(_loc10_ || param3)
                           {
                              addr219:
                              §§push(Number(§§pop()));
                           }
                           _loc8_ = §§pop();
                        }
                        while(true)
                        {
                        }
                        addr221:
                     }
                     while(true)
                     {
                        §§push(param1);
                        §§push(_loc8_);
                        if(!_loc9_)
                        {
                           §§push(_loc7_);
                           if(_loc10_ || param3)
                           {
                              §§push(param2);
                              if(_loc10_ || param3)
                              {
                                 addr194:
                                 addr195:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc9_ && this))
                                 {
                                    §§push(_loc5_);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() * param3);
                                    }
                                 }
                                 §§pop().x = §§pop() * §§pop();
                                 do
                                 {
                                    §§push(param1);
                                    §§push(_loc8_);
                                    if(!(_loc10_ || param1))
                                    {
                                       continue;
                                    }
                                    §§push(_loc4_);
                                    if(_loc10_)
                                    {
                                       §§push(param3);
                                       if(_loc10_)
                                       {
                                          addr137:
                                          §§push(§§pop() * §§pop());
                                          if(!_loc9_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() * param2);
                                             }
                                          }
                                          §§push(§§pop() * §§pop());
                                          continue;
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§goto(addr137);
                                 }
                                 while(§§pop().y = §§pop(), _loc9_ && param1);
                                 
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr195);
                     }
                     return param1;
                  }
                  §§goto(addr219);
               }
               §§goto(addr209);
            }
            §§push(§§pop() - §§pop());
            if(_loc9_ && param3)
            {
            }
         }
         §§goto(addr87);
      }
      
      public function §&!]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.col1.§&!]§();
         }
         do
         {
            this.col2.§&!]§();
         }
         while(!(_loc1_ || _loc1_));
         
      }
   }
}
