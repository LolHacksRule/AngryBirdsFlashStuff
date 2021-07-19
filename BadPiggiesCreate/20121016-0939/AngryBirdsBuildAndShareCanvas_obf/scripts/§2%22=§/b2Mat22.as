package §2"=§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.col1 = new b2Vec2();
            if(_loc2_ || _loc1_)
            {
               while(true)
               {
                  this.col2 = new b2Vec2();
                  if(_loc3_)
                  {
                     break;
                  }
                  super();
                  if(_loc2_ || this)
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
         }
      }
      
      public static function §??§(param1:Number) : b2Mat22
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
      
      public static function §^" §(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!(_loc5_ && b2Mat22))
         {
            _loc3_.§>V§(param1,param2);
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
            if(_loc4_ || this)
            {
               §§push(this.col1);
               while(true)
               {
                  §§push(_loc2_);
                  addr137:
                  while(true)
                  {
                     §§pop().x = §§pop();
                  }
                  addr133:
                  §§push(this.col1);
                  if(_loc5_)
                  {
                     continue;
                  }
                  §§push(_loc3_);
                  if(!(_loc5_ && param1))
                  {
                     §§pop().y = §§pop();
                     loop7:
                     while(true)
                     {
                        §§push(this.col2);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(_loc2_);
                           if(_loc4_ || _loc2_)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 §§pop().y = §§pop();
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 if(_loc4_ || _loc2_)
                                 {
                                    return;
                                 }
                                 while(true)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       §§goto(addr133);
                                    }
                                    addr138:
                                    while(true)
                                    {
                                       §§push(this.col2);
                                       break loop7;
                                    }
                                 }
                                 §§goto(addr137);
                                 addr116:
                              }
                              while(true)
                              {
                                 §§push(-§§pop());
                              }
                              addr114:
                           }
                           while(true)
                           {
                              §§pop().x = §§pop();
                              §§goto(addr116);
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr114);
                        §§goto(addr109);
                     }
                     addr109:
                  }
                  §§goto(addr137);
               }
            }
            §§goto(addr138);
         }
         §§goto(addr32);
      }
      
      public function §>V§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.col1.SetV(param1);
         }
         do
         {
            this.col2.SetV(param2);
         }
         while(_loc3_);
         
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(_loc2_ || _loc2_)
         {
            _loc1_.§5"4§(this);
         }
         return _loc1_;
      }
      
      public function §5"4§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.col1.SetV(param1.col1);
            do
            {
               this.col2.SetV(param1.col2);
            }
            while(_loc2_);
            
         }
      }
      
      public function §4"<§(param1:b2Mat22) : void
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
               addr152:
               while(true)
               {
                  §§push(§§pop().x);
                  addr153:
                  while(true)
                  {
                     §§push(param1.col1);
                     addr155:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr156:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr157:
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
         §§goto(addr80);
      }
      
      public function §,`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.col1);
            while(true)
            {
               §§pop().x = 1;
               addr85:
               §§push(this.col1);
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§pop().y = 0;
               loop4:
               for(; !(_loc2_ && this); §§pop().y = 1,if(_loc1_)
               {
                  return;
               })
               {
                  addr67:
                  §§push(this.col2);
                  if(_loc1_)
                  {
                     continue;
                  }
                  addr71:
                  while(true)
                  {
                     §§pop().x = 0;
                     break loop4;
                     §§goto(addr67);
                  }
               }
               while(!_loc2_)
               {
                  §§goto(addr85);
                  §§goto(addr60);
               }
               addr60:
               while(true)
               {
                  §§goto(addr71);
               }
               addr90:
            }
         }
         §§goto(addr90);
      }
      
      public function §@!s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
                  loop2:
                  while(true)
                  {
                     §§push(this.col2);
                     while(true)
                     {
                        §§push(0);
                        addr67:
                        addr62:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           addr68:
                           while(!(_loc1_ && _loc1_))
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           §§push(this.col2);
                           if(_loc1_)
                           {
                              break;
                           }
                           §§push(0);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§pop().y = §§pop();
                              if(_loc1_)
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 return;
                                 addr52:
                              }
                           }
                           else
                           {
                              §§goto(addr67);
                           }
                           §§goto(addr68);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §7!Z§(param1:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         §§push(this.col1.x);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || param1)
         {
            §§push(this.col2.x);
            if(_loc7_ || this)
            {
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  _loc3_ = §§pop();
                  addr48:
                  §§push(this.col1.y);
                  if(_loc7_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc4_:* = §§pop();
            §§push(this.col2.y);
            if(_loc7_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               §§push(_loc2_);
               if(_loc7_ || param1)
               {
                  §§push(_loc5_);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push(_loc3_);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * _loc4_);
                           if(!(_loc8_ && this))
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc7_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    addr238:
                                    §§push(§§pop());
                                    if(_loc7_ || this)
                                    {
                                       addr246:
                                       _loc6_ = §§pop();
                                       if(_loc7_ || _loc2_)
                                       {
                                       }
                                       addr274:
                                       _loc6_ = §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          addr188:
                                          while(true)
                                          {
                                             §§push(param1.col1);
                                             loop1:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                addr192:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   addr193:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr194:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         addr195:
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(param1.col2);
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!(_loc8_ && _loc2_))
                                                               {
                                                                  addr186:
                                                                  §§push(-§§pop());
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     addr184:
                                                                     §§push(_loc3_);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     addr185:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     continue loop1;
                                                                  }
                                                                  addr186:
                                                               }
                                                               §§goto(addr184);
                                                               addr164:
                                                               §§push(param1.col2);
                                                               if(!_loc7_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(_loc6_);
                                                               if(_loc7_ || param1)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        addr104:
                                                                        §§pop().y = §§pop() * §§pop();
                                                                        if(!_loc7_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§goto(addr164);
                                                                           }
                                                                           §§goto(addr186);
                                                                           addr162:
                                                                        }
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              return param1;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr185);
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                               §§goto(addr104);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr275:
                                    }
                                    addr255:
                                    if(§§pop() != §§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          §§push(1 / _loc6_);
                                          if(!_loc8_)
                                          {
                                             addr273:
                                             §§goto(addr274);
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr274);
                                       }
                                       §§goto(addr275);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr255);
                                 §§push(0);
                              }
                              §§goto(addr274);
                           }
                           §§goto(addr246);
                        }
                        §§goto(addr255);
                     }
                     §§goto(addr273);
                  }
                  §§goto(addr255);
               }
               §§goto(addr238);
            }
            §§goto(addr195);
         }
         §§goto(addr48);
      }
      
      public function §=F§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
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
         if(!(_loc10_ && param2))
         {
            §§push(_loc7_);
            if(_loc9_ || param3)
            {
               §§push(§§pop() * §§pop());
               if(_loc9_ || param1)
               {
                  §§push(_loc5_);
                  if(!(_loc10_ && param3))
                  {
                     addr100:
                     §§push(§§pop() * _loc6_);
                     if(!(_loc10_ && this))
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc10_)
                        {
                           addr98:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc8_:* = §§pop();
                     if(!_loc10_)
                     {
                        if(§§pop() != 0)
                        {
                           if(_loc9_ || this)
                           {
                              §§push(1 / _loc8_);
                              if(!_loc10_)
                              {
                                 addr128:
                                 _loc8_ = Number(§§pop());
                                 if(!_loc10_)
                                 {
                                    addr182:
                                    §§push(param1);
                                    §§push(_loc8_);
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push(_loc7_);
                                       if(!(_loc10_ && param1))
                                       {
                                          §§push(param2);
                                          if(_loc9_ || this)
                                          {
                                             addr236:
                                             addr237:
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc10_ && this))
                                             {
                                                §§push(_loc5_);
                                                if(_loc9_ || param3)
                                                {
                                                   §§push(§§pop() * param3);
                                                }
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
                                                if(!(_loc10_ && param1))
                                                {
                                                   §§push(param3);
                                                   if(_loc9_ || param2)
                                                   {
                                                      addr177:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc9_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc9_ || param1)
                                                         {
                                                            §§push(§§pop() * param2);
                                                         }
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      continue;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§goto(addr177);
                                             }
                                             while(§§pop().y = §§pop(), !_loc9_);
                                             
                                             return param1;
                                             addr181:
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr237);
                                 }
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr100);
               }
               §§push(§§pop());
            }
            §§goto(addr100);
         }
         §§goto(addr98);
      }
      
      public function §`U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.col1.§`U§();
            do
            {
               this.col2.§`U§();
            }
            while(_loc2_ && this);
            
         }
      }
   }
}
