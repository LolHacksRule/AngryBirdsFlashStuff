package §#]§
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
            if(_loc2_ || _loc1_)
            {
               loop0:
               while(true)
               {
                  this.col2 = new b2Vec2();
                  if(!_loc3_)
                  {
                     super();
                     if(_loc2_ || _loc1_)
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
                        addr39:
                     }
                     break;
                  }
                  break;
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public static function § r§(param1:Number) : b2Mat22
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = new b2Mat22();
         if(_loc4_ || b2Mat22)
         {
            _loc2_.Set(param1);
         }
         return _loc2_;
      }
      
      public static function §=q§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!_loc5_)
         {
            _loc3_.§=v§(param1,param2);
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
            if(_loc5_)
            {
               _loc2_ = §§pop();
               addr28:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || _loc2_)
            {
               §§push(this.col1);
               while(true)
               {
                  §§push(_loc2_);
                  addr133:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     addr134:
                     while(true)
                     {
                        §§push(this.col2);
                        while(true)
                        {
                           §§push(_loc3_);
                           addr127:
                           §§goto(addr122);
                        }
                     }
                  }
               }
            }
            addr122:
            while(true)
            {
               §§push(-§§pop());
               addr128:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
            while(true)
            {
               §§push(this.col2);
               if(_loc4_ && param1)
               {
                  continue loop3;
               }
               §§push(_loc2_);
               if(_loc5_)
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  §§goto(addr127);
               }
               §§goto(addr128);
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §=v§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(!_loc3_)
         {
            _loc1_.§=!"§(this);
         }
         return _loc1_;
      }
      
      public function §=!"§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.col1.SetV(param1.col1);
         }
         do
         {
            this.col2.SetV(param1.col2);
         }
         while(!_loc3_);
         
      }
      
      public function §4!h§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(this.col1);
               addr178:
               while(true)
               {
                  §§push(§§pop().x);
                  addr179:
                  while(true)
                  {
                     §§push(param1.col1);
                     addr181:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr182:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr183:
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
         §§goto(addr117);
      }
      
      public function §8[§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.col1);
            while(true)
            {
               §§pop().x = 1;
               addr91:
               §§push(this.col1);
               if(_loc1_)
               {
                  continue;
               }
               §§pop().y = 0;
               loop4:
               while(true)
               {
                  §§push(this.col2);
                  if(!(_loc2_ || _loc2_))
                  {
                     break;
                  }
                  §§pop().y = 1;
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                  }
                  while(!(_loc1_ && this))
                  {
                     §§goto(addr91);
                  }
                  while(true)
                  {
                     §§push(this.col2);
                     break loop4;
                  }
                  addr84:
                  addr96:
               }
               while(true)
               {
                  §§pop().x = 0;
                  §§goto(addr84);
                  §§goto(addr78);
               }
               addr78:
            }
         }
         §§goto(addr96);
      }
      
      public function §;v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
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
               loop5:
               while(true)
               {
                  §§push(this.col1);
                  if(_loc2_ && this)
                  {
                     continue loop0;
                  }
                  §§push(0);
                  if(!(_loc1_ || _loc2_))
                  {
                     break;
                  }
                  §§pop().y = §§pop();
                  while(true)
                  {
                     §§push(this.col2);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§push(0);
                     if(_loc1_ || _loc1_)
                     {
                        continue;
                     }
                     addr103:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        continue loop5;
                     }
                  }
                  while(true)
                  {
                     §§goto(addr103);
                     §§goto(addr98);
                  }
                  addr98:
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
      
      public function §`"7§(param1:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         §§push(this.col1.x);
         if(!(_loc8_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && _loc3_))
         {
            §§push(this.col2.x);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               if(!(_loc8_ && _loc2_))
               {
                  _loc3_ = §§pop();
                  addr53:
                  §§push(this.col1.y);
                  if(!_loc7_)
                  {
                  }
                  addr59:
                  var _loc4_:* = §§pop();
                  §§push(this.col2.y);
                  if(_loc7_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(_loc7_ || this)
                  {
                     §§push(_loc2_);
                     if(!(_loc8_ && this))
                     {
                        §§push(_loc5_);
                        if(!(_loc8_ && _loc2_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc7_ || _loc2_)
                           {
                              §§push(_loc3_);
                              if(!_loc8_)
                              {
                                 addr225:
                                 §§push(§§pop() * _loc4_);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc8_ && param1))
                                    {
                                       addr247:
                                       §§push(Number(§§pop()));
                                       if(_loc7_)
                                       {
                                          §§push(§§pop());
                                          if(_loc7_)
                                          {
                                             addr253:
                                             _loc6_ = §§pop();
                                             if(_loc7_)
                                             {
                                                addr257:
                                                if(§§pop() != 0)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(1 / _loc6_);
                                                      if(_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr264:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               addr265:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         addr263:
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   addr258:
                                                }
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(param1.col1);
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc7_)
                                                      {
                                                         §§push(_loc5_);
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr153:
                                                            §§push(_loc4_);
                                                            if(!(_loc7_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            addr162:
                                                            §§pop().y = §§pop() * §§pop();
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§push(param1.col2);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr102:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc8_ && _loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           break loop10;
                                                                        }
                                                                        addr181:
                                                                     }
                                                                     §§goto(addr102);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           §§goto(addr181);
                                                                           §§push(_loc3_);
                                                                        }
                                                                        break loop10;
                                                                     }
                                                                     break loop10;
                                                                     §§goto(addr165);
                                                                  }
                                                                  addr165:
                                                                  addr169:
                                                               }
                                                               addr183:
                                                               while(true)
                                                               {
                                                                  §§push(param1.col1);
                                                                  if(!(_loc7_ || this))
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(_loc6_);
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§goto(addr153);
                                                                        }
                                                                        §§goto(addr162);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr193:
                                                                           while(_loc7_)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§goto(addr169);
                                                                                 §§push(param1.col2);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr258);
                                                                              }
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        addr192:
                                                                     }
                                                                  }
                                                                  §§goto(addr153);
                                                               }
                                                               continue loop3;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               §§goto(addr183);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                }
                                             }
                                             §§goto(addr263);
                                          }
                                          §§goto(addr257);
                                       }
                                    }
                                    §§goto(addr264);
                                 }
                              }
                              §§goto(addr253);
                           }
                           §§goto(addr264);
                        }
                        §§goto(addr225);
                     }
                     §§goto(addr247);
                  }
                  §§goto(addr129);
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr59);
         }
         §§goto(addr53);
      }
      
      public function §#!6§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
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
         if(!(_loc9_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(this.col1.y);
         if(_loc10_ || param2)
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
         if(_loc10_ || param1)
         {
            §§push(_loc7_);
            if(!(_loc9_ && this))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc9_ && param3))
               {
                  addr89:
                  §§push(_loc5_);
                  if(_loc10_)
                  {
                     addr102:
                     §§push(§§pop() * _loc6_);
                     if(_loc10_)
                     {
                        addr106:
                        §§push(§§pop() - §§pop());
                        if(!_loc9_)
                        {
                           addr110:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr110);
                     }
                     var _loc8_:* = §§pop();
                     if(!_loc9_)
                     {
                        if(§§pop() != 0)
                        {
                           if(!_loc9_)
                           {
                              §§push(1 / _loc8_);
                              if(_loc10_)
                              {
                                 addr123:
                                 §§push(Number(§§pop()));
                              }
                              _loc8_ = §§pop();
                              if(!(_loc9_ && param2))
                              {
                                 addr173:
                                 §§push(param1);
                                 §§push(_loc8_);
                                 if(!_loc9_)
                                 {
                                    §§push(_loc7_);
                                    if(!_loc9_)
                                    {
                                       §§push(param2);
                                       if(_loc10_ || param3)
                                       {
                                          addr212:
                                          addr213:
                                          §§push(§§pop() * §§pop());
                                          if(!_loc9_)
                                          {
                                             §§push(_loc5_);
                                             if(_loc10_ || this)
                                             {
                                                §§push(§§pop() * param3);
                                             }
                                          }
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
                                             if(!_loc9_)
                                             {
                                                §§push(param3);
                                                if(_loc10_)
                                                {
                                                   addr168:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc10_ || param2)
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
                                             §§goto(addr168);
                                          }
                                          while(§§pop().y = §§pop(), _loc9_);
                                          
                                          return param1;
                                          addr214:
                                          addr172:
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr106);
               }
               §§goto(addr110);
            }
            §§goto(addr102);
         }
         §§goto(addr89);
      }
      
      public function §"p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.col1.§"p§();
         }
         do
         {
            this.col2.§"p§();
         }
         while(!(_loc2_ || _loc1_));
         
      }
   }
}
