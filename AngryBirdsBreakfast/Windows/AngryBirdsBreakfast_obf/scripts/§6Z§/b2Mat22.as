package §6Z§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.col1 = new b2Vec2();
            if(_loc3_)
            {
               addr56:
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
                        }
                        continue loop0;
                        break;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      public static function §;!1§(param1:Number) : b2Mat22
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
      
      public static function §]!X§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!_loc5_)
         {
            _loc3_.§0"#§(param1,param2);
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
            if(_loc4_ || this)
            {
               _loc2_ = §§pop();
               addr37:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               §§push(this.col1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr122:
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
                        if(_loc5_)
                        {
                           break;
                        }
                        §§pop().y = §§pop();
                        loop7:
                        for(; _loc4_; §§pop().y = §§pop(),if(_loc5_ && _loc2_)
                        {
                           continue;
                        },if(!_loc5_)
                        {
                           return;
                        },addr123:,while(true)
                        {
                           §§goto(addr115);
                        })
                        {
                           addr101:
                           §§push(this.col2);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    §§push(-§§pop());
                                 }
                                 addr116:
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
                                 §§goto(addr101);
                              }
                              addr115:
                           }
                           §§goto(addr116);
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  §§goto(addr122);
               }
            }
            §§goto(addr123);
         }
         §§goto(addr37);
      }
      
      public function §0"#§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.col1.SetV(param1);
         }
         do
         {
            this.col2.SetV(param2);
         }
         while(_loc4_ && param1);
         
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(_loc3_)
         {
            _loc1_.§17§(this);
         }
         return _loc1_;
      }
      
      public function §17§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.col1.SetV(param1.col1);
         }
         do
         {
            this.col2.SetV(param1.col2);
         }
         while(_loc3_);
         
      }
      
      public function §"M§(param1:b2Mat22) : void
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
               addr148:
               while(true)
               {
                  §§push(§§pop().x);
                  addr149:
                  while(true)
                  {
                     §§push(param1.col1);
                     addr151:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr152:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr153:
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
         §§goto(addr133);
      }
      
      public function §&w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
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
                     addr80:
                     while(true)
                     {
                        §§push(this.col2);
                        if(_loc1_ && _loc2_)
                        {
                           break;
                        }
                        §§pop().y = 1;
                        if(!(_loc1_ && _loc1_))
                        {
                           if(_loc2_ || _loc1_)
                           {
                              if(_loc2_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §5!H§() : void
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
               addr104:
               while(true)
               {
                  §§pop().x = §§pop();
                  addr105:
                  loop2:
                  while(true)
                  {
                     §§push(this.col2);
                     while(true)
                     {
                        §§push(0);
                        addr82:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           addr83:
                           while(!(_loc1_ && _loc1_))
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        addr77:
                        §§push(this.col2);
                        if(_loc1_ && _loc2_)
                        {
                           continue;
                        }
                        §§push(0);
                        if(!(_loc1_ && this))
                        {
                           addr57:
                           §§pop().y = §§pop();
                           if(!(_loc2_ || this))
                           {
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    §§goto(addr77);
                                 }
                                 break;
                                 §§goto(addr57);
                              }
                              §§goto(addr83);
                              addr75:
                           }
                           return;
                        }
                        §§goto(addr82);
                     }
                  }
               }
            }
            addr103:
         }
         while(true)
         {
            §§push(this.col1);
            if(!_loc1_)
            {
               §§push(0);
               if(_loc2_)
               {
                  §§pop().y = §§pop();
                  §§goto(addr75);
               }
               else
               {
                  §§goto(addr104);
               }
            }
            else
            {
               §§goto(addr103);
            }
            §§goto(addr104);
         }
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §,&§(param1:b2Mat22) : b2Mat22
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
         if(!_loc7_)
         {
            §§push(this.col2.x);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
               if(!(_loc7_ && param1))
               {
                  _loc3_ = §§pop();
                  addr44:
                  §§push(this.col1.y);
                  if(!(_loc7_ && _loc2_))
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
            if(_loc8_)
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  §§push(_loc5_);
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc7_)
                     {
                        §§push(_loc3_);
                        if(!(_loc7_ && this))
                        {
                           §§push(§§pop() * _loc4_);
                           if(!_loc7_)
                           {
                              addr205:
                              §§push(§§pop() - §§pop());
                              if(!_loc7_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc7_ && param1))
                                 {
                                    addr216:
                                    §§push(§§pop());
                                    if(!_loc7_)
                                    {
                                       addr219:
                                       _loc6_ = §§pop();
                                       if(!_loc7_)
                                       {
                                          addr223:
                                          if(§§pop() != 0)
                                          {
                                             loop1:
                                             while(true)
                                             {
                                                §§push(1 / _loc6_);
                                                if(!(_loc7_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr245:
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         addr246:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr244:
                                                }
                                                §§goto(addr245);
                                             }
                                             addr224:
                                          }
                                          loop2:
                                          while(true)
                                          {
                                             §§push(param1.col1);
                                             loop3:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                if(_loc8_)
                                                {
                                                   §§push(_loc5_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr138:
                                                      §§push(_loc4_);
                                                      if(!(_loc8_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      addr147:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         §§pop().y = §§pop();
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(param1.col2);
                                                            if(_loc8_)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!_loc7_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc8_)
                                                                     {
                                                                        addr85:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc8_ || _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr155:
                                                                           while(true)
                                                                           {
                                                                              §§push(-§§pop());
                                                                              addr156:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 addr157:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr159:
                                                                           addr170:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(param1.col1);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(_loc6_);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       §§goto(addr138);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr147);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr224);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              addr171:
                                                                              while(!(_loc7_ && _loc2_))
                                                                              {
                                                                                 §§push(param1.col2);
                                                                                 break loop13;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr157);
                                                                  }
                                                                  §§goto(addr156);
                                                               }
                                                               §§goto(addr85);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr155);
                                                            §§goto(addr150);
                                                         }
                                                         addr150:
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                }
                                                §§goto(addr170);
                                             }
                                          }
                                       }
                                       §§goto(addr244);
                                    }
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr245);
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr245);
                  }
                  §§goto(addr205);
               }
               §§goto(addr216);
            }
            §§goto(addr246);
         }
         §§goto(addr44);
      }
      
      public function §=^§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(this.col1.x);
         if(_loc9_ || param3)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.col2.x);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(this.col1.y);
         if(!(_loc10_ && param3))
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
         if(_loc9_)
         {
            §§push(_loc7_);
            if(_loc9_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc10_)
               {
                  addr63:
                  §§push(_loc5_);
                  if(_loc9_)
                  {
                     §§push(§§pop() * _loc6_);
                     if(!_loc10_)
                     {
                        addr70:
                        §§push(§§pop() - §§pop());
                        if(_loc9_ || param1)
                        {
                           addr79:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr79);
                     }
                  }
                  var _loc8_:* = §§pop();
                  if(_loc9_ || this)
                  {
                     if(§§pop() != 0)
                     {
                        if(!_loc10_)
                        {
                           §§push(1 / _loc8_);
                           if(!(_loc10_ && param2))
                           {
                              addr102:
                              §§push(Number(§§pop()));
                           }
                           _loc8_ = §§pop();
                           if(_loc9_ || this)
                           {
                              addr177:
                              §§push(param1);
                              §§push(_loc8_);
                              if(!(_loc10_ && param2))
                              {
                                 §§push(_loc7_);
                                 if(_loc9_ || param2)
                                 {
                                    §§push(param2);
                                    if(!(_loc10_ && param3))
                                    {
                                       addr227:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc10_)
                                       {
                                          addr205:
                                          §§push(_loc5_);
                                          if(_loc9_ || param2)
                                          {
                                             addr223:
                                             §§push(§§pop() * param3);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().x = §§pop() * §§pop();
                                       do
                                       {
                                          §§push(param1);
                                          §§push(_loc8_);
                                          if(_loc10_ && param2)
                                          {
                                             continue;
                                          }
                                          §§push(_loc4_);
                                          if(!(_loc10_ && param1))
                                          {
                                             §§push(param3);
                                             if(!(_loc10_ && param1))
                                             {
                                                addr167:
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
                                          §§goto(addr167);
                                       }
                                       while(§§pop().y = §§pop(), !(_loc9_ || this));
                                       
                                       return param1;
                                       addr228:
                                    }
                                    §§goto(addr223);
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr227);
                           }
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr102);
               }
               §§goto(addr79);
            }
            §§goto(addr70);
         }
         §§goto(addr63);
      }
      
      public function §"!2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.col1.§"!2§();
            do
            {
               this.col2.§"!2§();
            }
            while(!_loc1_);
            
         }
      }
   }
}
