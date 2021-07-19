package §6!H§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.col1 = new b2Vec2();
            if(_loc2_ || _loc2_)
            {
               loop0:
               while(true)
               {
                  this.col2 = new b2Vec2();
                  if(_loc3_ && this)
                  {
                     break;
                  }
                  addr53:
                  while(true)
                  {
                     super();
                     if(!_loc3_)
                     {
                        if(true)
                        {
                           this.col1.x = this.col2.y = 1;
                        }
                        continue loop0;
                        break loop0;
                     }
                     break loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public static function §=+§(param1:Number) : b2Mat22
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
      
      public static function §5U§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!(_loc5_ && b2Mat22))
         {
            _loc3_.§;!-§(param1,param2);
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
            if(!(_loc5_ && this))
            {
               _loc2_ = §§pop();
               addr37:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(this.col1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr137:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.col2);
                        addr106:
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(-§§pop());
                           }
                           while(true)
                           {
                              §§pop().x = §§pop();
                              addr116:
                              while(!(_loc5_ && _loc2_))
                              {
                                 continue loop0;
                              }
                              addr59:
                              §§push(_loc2_);
                              continue loop2;
                              if(_loc5_ && _loc2_)
                              {
                                 continue;
                              }
                              addr77:
                              §§pop().y = §§pop();
                              if(!(_loc5_ && _loc2_))
                              {
                                 return;
                                 addr85:
                              }
                              else
                              {
                                 addr95:
                              }
                              while(_loc4_ || this)
                              {
                                 continue loop3;
                                 §§goto(addr77);
                              }
                              §§goto(addr116);
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.col2);
               if(!(_loc5_ && param1))
               {
                  §§goto(addr59);
               }
               §§goto(addr106);
            }
            §§goto(addr85);
         }
         §§goto(addr37);
      }
      
      public function §;!-§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.col1.SetV(param1);
         }
         do
         {
            this.col2.SetV(param2);
         }
         while(!_loc4_);
         
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(_loc2_)
         {
            _loc1_.§^!X§(this);
         }
         return _loc1_;
      }
      
      public function §^!X§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.col1.SetV(param1.col1);
            do
            {
               this.col2.SetV(param1.col2);
            }
            while(_loc3_);
            
         }
      }
      
      public function §8`§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(this.col1);
               addr177:
               while(true)
               {
                  §§push(§§pop().x);
                  addr178:
                  while(true)
                  {
                     §§push(param1.col1);
                     addr180:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr181:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr182:
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
         §§goto(addr162);
      }
      
      public function §!!D§() : void
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
                  if(_loc1_ && this)
                  {
                     break;
                  }
                  §§pop().y = 0;
                  loop4:
                  for(; !_loc1_; §§pop().y = 1,if(!(_loc1_ && this))
                  {
                     if(_loc1_)
                     {
                        while(true)
                        {
                           §§goto(addr79);
                        }
                        addr86:
                     }
                     return;
                  })
                  {
                     addr65:
                     §§push(this.col2);
                     if(_loc2_)
                     {
                        continue;
                     }
                     addr79:
                     while(true)
                     {
                        §§pop().x = 0;
                        break loop4;
                        §§goto(addr65);
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §7_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.col1);
            while(true)
            {
               §§push(0);
               addr88:
               while(true)
               {
                  §§pop().x = §§pop();
                  addr89:
                  while(true)
                  {
                     §§push(this.col2);
                     while(true)
                     {
                        §§push(0);
                        addr83:
                        §§goto(addr68);
                     }
                  }
               }
            }
         }
         addr68:
         while(true)
         {
            §§pop().x = §§pop();
            continue loop0;
         }
         loop7:
         while(true)
         {
            §§push(this.col2);
            if(_loc2_ && _loc2_)
            {
               continue loop3;
            }
            §§push(0);
            if(_loc1_)
            {
               §§pop().y = §§pop();
               if(_loc1_)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  continue loop2;
               }
               addr66:
               while(_loc1_)
               {
                  continue loop7;
               }
               continue loop0;
            }
            §§goto(addr83);
         }
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §<'§(param1:b2Mat22) : b2Mat22
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
         if(!_loc8_)
         {
            §§push(this.col2.x);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  _loc3_ = §§pop();
                  addr38:
                  §§push(this.col1.y);
                  if(!(_loc8_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc4_:* = §§pop();
            §§push(this.col2.y);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc8_)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  §§push(_loc5_);
                  if(!(_loc8_ && this))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc7_)
                     {
                        addr200:
                        §§push(_loc3_);
                        if(_loc7_)
                        {
                           §§push(§§pop() * _loc4_);
                           if(_loc7_)
                           {
                              §§push(§§pop() - §§pop());
                              if(!(_loc8_ && this))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_)
                                    {
                                       addr221:
                                       _loc6_ = §§pop();
                                       if(_loc8_)
                                       {
                                       }
                                       addr249:
                                       _loc6_ = §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          addr178:
                                          while(true)
                                          {
                                             §§push(param1.col1);
                                             loop1:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                addr182:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   addr183:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr184:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(param1.col2);
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               addr166:
                                                               while(true)
                                                               {
                                                                  §§push(-§§pop());
                                                                  addr167:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     addr168:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr169:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr170:
                                                                           while(_loc7_ || this)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr161:
                                                               §§push(param1.col2);
                                                               if(_loc8_ && param1)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(_loc6_);
                                                               if(_loc7_)
                                                               {
                                                                  if(!(_loc8_ && _loc2_))
                                                                  {
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        if(!(_loc8_ && _loc2_))
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr103:
                                                                              §§pop().y = §§pop() * §§pop();
                                                                              if(!_loc7_)
                                                                              {
                                                                                 while(_loc7_ || this)
                                                                                 {
                                                                                    §§goto(addr161);
                                                                                 }
                                                                                 §§goto(addr170);
                                                                                 addr154:
                                                                              }
                                                                              if(_loc7_)
                                                                              {
                                                                                 return param1;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr168);
                                                                        }
                                                                        §§goto(addr166);
                                                                     }
                                                                     §§goto(addr167);
                                                                  }
                                                                  §§goto(addr169);
                                                               }
                                                               §§goto(addr103);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr250:
                                    }
                                    addr225:
                                    if(§§pop() != §§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          addr228:
                                          §§push(1 / _loc6_);
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             addr248:
                                             §§goto(addr249);
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr249);
                                       }
                                       §§goto(addr250);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr225);
                                 §§push(0);
                              }
                              §§goto(addr249);
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr248);
                  }
                  §§goto(addr221);
               }
               §§goto(addr200);
            }
            §§goto(addr228);
         }
         §§goto(addr38);
      }
      
      public function § §(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
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
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(this.col1.y);
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(this.col2.y);
         if(!(_loc10_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_);
         if(_loc9_)
         {
            §§push(_loc7_);
            if(!(_loc10_ && param3))
            {
               §§push(§§pop() * §§pop());
               if(_loc9_ || param3)
               {
                  addr68:
                  §§push(_loc5_);
                  if(_loc9_ || param3)
                  {
                     §§push(§§pop() * _loc6_);
                     if(!(_loc10_ && param3))
                     {
                        addr85:
                        §§push(§§pop() - §§pop());
                        if(!(_loc10_ && param1))
                        {
                           addr93:
                           §§push(Number(§§pop()));
                        }
                        §§push(§§pop());
                     }
                  }
                  var _loc8_:* = §§pop();
                  if(_loc9_)
                  {
                     if(§§pop() != 0)
                     {
                        if(_loc9_ || param1)
                        {
                           §§push(1 / _loc8_);
                           if(_loc9_ || param3)
                           {
                              addr127:
                              §§push(Number(§§pop()));
                           }
                           _loc8_ = §§pop();
                           if(!(_loc10_ && this))
                           {
                              addr182:
                              §§push(param1);
                              §§push(_loc8_);
                              if(_loc9_)
                              {
                                 §§push(_loc7_);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(param2);
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc10_ && param2))
                                       {
                                          addr210:
                                          §§push(_loc5_);
                                          if(_loc9_ || param1)
                                          {
                                             addr230:
                                             §§push(§§pop() - §§pop() * param3);
                                          }
                                          §§goto(addr230);
                                       }
                                       addr232:
                                       §§pop().x = §§pop() * §§pop();
                                       do
                                       {
                                          §§push(param1);
                                          §§push(_loc8_);
                                          if(!_loc9_)
                                          {
                                             continue;
                                          }
                                          §§push(_loc4_);
                                          if(_loc9_ || param2)
                                          {
                                             §§push(param3);
                                             if(!(_loc10_ && this))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc10_ && param2))
                                                {
                                                   addr177:
                                                   §§push(_loc6_);
                                                   if(!_loc10_)
                                                   {
                                                      addr174:
                                                      §§push(§§pop() * param2);
                                                   }
                                                   §§push(§§pop() * (§§pop() - §§pop()));
                                                   continue;
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr177);
                                       }
                                       while(§§pop().y = §§pop(), !_loc9_);
                                       
                                       return param1;
                                       addr181:
                                    }
                                    §§goto(addr230);
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr232);
                           }
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr127);
               }
               §§goto(addr93);
            }
            §§goto(addr85);
         }
         §§goto(addr68);
      }
      
      public function §1T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.col1.§1T§();
         }
         do
         {
            this.col2.§1T§();
         }
         while(_loc1_);
         
      }
   }
}
