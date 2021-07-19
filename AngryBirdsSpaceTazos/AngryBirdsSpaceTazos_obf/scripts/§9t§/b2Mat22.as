package §9t§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.col1 = new b2Vec2();
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.col2 = new b2Vec2();
                  if(_loc2_ && this)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     super();
                     if(_loc3_ || _loc1_)
                     {
                        while(true)
                        {
                           if(true)
                           {
                              this.col1.x = this.col2.y = 1;
                           }
                           continue loop1;
                        }
                        addr30:
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr30);
      }
      
      public static function §@!O§(param1:Number) : b2Mat22
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
      
      public static function § "<§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!(_loc5_ && param1))
         {
            _loc3_.§`q§(param1,param2);
         }
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         if(_loc5_)
         {
            §§push(Number(Math.cos(param1)));
            if(!_loc4_)
            {
               _loc2_ = §§pop();
               addr28:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || this)
            {
               §§push(this.col1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr123:
                  while(true)
                  {
                     §§pop().x = §§pop();
                  }
                  while(true)
                  {
                     §§push(this.col1);
                     if(!_loc4_)
                     {
                        §§push(_loc3_);
                        if(!(_loc5_ || _loc3_))
                        {
                           break;
                        }
                        §§pop().y = §§pop();
                        loop7:
                        while(!(_loc4_ && _loc2_))
                        {
                           addr102:
                           §§push(this.col2);
                           if(!_loc4_)
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && this))
                              {
                                 if(!_loc4_)
                                 {
                                    §§pop().y = §§pop();
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       return;
                                    }
                                    addr124:
                                    while(true)
                                    {
                                       §§push(this.col2);
                                       addr116:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          §§goto(addr102);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(-§§pop());
                                 }
                              }
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 break loop7;
                              }
                           }
                           §§goto(addr116);
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  §§goto(addr123);
               }
            }
            §§goto(addr124);
         }
         §§goto(addr28);
      }
      
      public function §`q§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.col1.SetV(param1);
            do
            {
               this.col2.SetV(param2);
            }
            while(!(_loc4_ || _loc3_));
            
         }
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§?"4§(this);
         }
         return _loc1_;
      }
      
      public function §?"4§(param1:b2Mat22) : void
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
         while(_loc2_ && param1);
         
      }
      
      public function §@3§(param1:b2Mat22) : void
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
               addr166:
               while(true)
               {
                  §§push(§§pop().x);
                  if(!_loc2_)
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
                        if(_loc2_ && param1)
                        {
                           continue;
                        }
                        §§push(§§pop().y);
                        if(!_loc2_)
                        {
                           addr143:
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && this))
                           {
                              §§pop().y = §§pop();
                              while(true)
                              {
                                 §§push(this.col2);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.col2);
                                    addr106:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr107:
                                       while(true)
                                       {
                                          §§push(param1.col2);
                                          addr109:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr110:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr111:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   continue loop7;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr151:
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
         §§goto(addr151);
      }
      
      public function §&!e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
                     addr73:
                     while(!(_loc2_ && _loc2_))
                     {
                        continue loop0;
                     }
                     §§goto(addr67);
                  }
               }
            }
         }
         addr67:
         continue loop1;
         while(true)
         {
            §§push(this.col2);
            if(_loc1_ || this)
            {
               continue;
            }
            continue loop2;
         }
      }
      
      public function §@!d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(0);
               addr93:
               while(true)
               {
                  §§pop().x = §§pop();
                  addr94:
                  loop2:
                  while(true)
                  {
                     §§push(this.col2);
                     while(true)
                     {
                        §§push(0);
                        addr88:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop0;
                        }
                        addr73:
                        §§push(this.col2);
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        §§push(0);
                        if(_loc1_)
                        {
                           addr51:
                           §§pop().y = §§pop();
                           if(!(_loc2_ && this))
                           {
                              return;
                              addr69:
                           }
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              §§goto(addr73);
                              §§goto(addr51);
                           }
                           continue;
                        }
                        §§goto(addr88);
                     }
                  }
               }
            }
            addr92:
         }
         while(true)
         {
            §§push(this.col1);
            if(!_loc2_)
            {
               §§push(0);
               if(!_loc2_)
               {
                  §§pop().y = §§pop();
                  §§goto(addr69);
               }
               else
               {
                  §§goto(addr93);
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
      
      public function §-r§(param1:b2Mat22) : b2Mat22
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
               if(_loc8_)
               {
                  addr38:
                  _loc3_ = §§pop();
                  §§push(this.col1.y);
                  if(_loc8_)
                  {
                     addr44:
                     §§push(Number(§§pop()));
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
                     if(_loc8_)
                     {
                        §§push(_loc5_);
                        if(_loc8_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc7_ && param1))
                           {
                              §§push(_loc3_);
                              if(_loc8_)
                              {
                                 §§push(§§pop() * _loc4_);
                                 if(_loc8_)
                                 {
                                    addr203:
                                    §§push(§§pop() - §§pop());
                                    if(_loc8_ || this)
                                    {
                                       addr211:
                                       §§push(Number(§§pop()));
                                       if(!(_loc7_ && param1))
                                       {
                                          addr219:
                                          §§push(§§pop());
                                          if(_loc8_)
                                          {
                                             _loc6_ = §§pop();
                                             if(_loc8_ || param1)
                                             {
                                                addr231:
                                                if(§§pop() != 0)
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      §§push(1 / _loc6_);
                                                      if(_loc8_)
                                                      {
                                                         addr255:
                                                         _loc6_ = Number(§§pop());
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   while(true)
                                                   {
                                                   }
                                                   addr256:
                                                }
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(param1.col1);
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      addr176:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         addr177:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr178:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               addr179:
                                                               loop6:
                                                               while(!_loc7_)
                                                               {
                                                                  §§push(param1.col2);
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        §§push(-§§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           addr169:
                                                                           addr84:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           if(_loc7_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(_loc2_);
                                                                           if(_loc8_)
                                                                           {
                                                                              addr95:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    return param1;
                                                                                    addr100:
                                                                                 }
                                                                                 addr146:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§goto(addr169);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr169);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              continue loop2;
                                                                           }
                                                                           addr170:
                                                                        }
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr255);
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr255);
                                    }
                                    §§goto(addr219);
                                 }
                              }
                              §§goto(addr231);
                           }
                           §§goto(addr211);
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr219);
                  }
                  §§goto(addr100);
               }
               §§goto(addr44);
            }
         }
         §§goto(addr38);
      }
      
      public function §3!N§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
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
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_);
         if(!(_loc9_ && this))
         {
            §§push(_loc7_);
            if(!_loc9_)
            {
               §§push(§§pop() * §§pop());
               if(_loc10_ || param1)
               {
                  §§push(_loc5_);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc6_);
                     if(_loc9_ && param3)
                     {
                     }
                     addr86:
                     var _loc8_:* = §§pop();
                     if(_loc10_ || param1)
                     {
                        if(§§pop() != 0)
                        {
                           if(!(_loc9_ && this))
                           {
                              §§push(1 / _loc8_);
                              if(_loc10_)
                              {
                                 addr119:
                                 _loc8_ = Number(§§pop());
                                 if(!_loc9_)
                                 {
                                    addr168:
                                    §§push(param1);
                                    §§push(_loc8_);
                                    if(_loc10_ || param2)
                                    {
                                       §§push(_loc7_);
                                       if(_loc10_)
                                       {
                                          §§push(param2);
                                          if(_loc10_)
                                          {
                                             addr202:
                                             addr203:
                                             §§push(§§pop() * §§pop());
                                             if(_loc10_)
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
                                                if(_loc9_)
                                                {
                                                   continue;
                                                }
                                                §§push(_loc4_);
                                                if(_loc10_)
                                                {
                                                   §§push(param3);
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc10_ || param3)
                                                      {
                                                         addr152:
                                                         §§push(_loc6_);
                                                         if(!(_loc9_ && param1))
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
                                                §§goto(addr152);
                                             }
                                             while(§§pop().y = §§pop(), !_loc10_);
                                             
                                             return param1;
                                             addr204:
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr203);
                                 }
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr204);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr119);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc10_)
                  {
                     addr85:
                     §§push(Number(§§pop()));
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr86);
         }
         §§goto(addr85);
      }
      
      public function §<D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.col1.§<D§();
            do
            {
               this.col2.§<D§();
            }
            while(_loc2_);
            
         }
      }
   }
}
