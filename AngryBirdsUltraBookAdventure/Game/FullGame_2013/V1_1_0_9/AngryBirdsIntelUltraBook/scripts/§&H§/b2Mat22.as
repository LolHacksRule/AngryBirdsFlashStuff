package §&H§
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
            if(_loc2_)
            {
               addr60:
               loop0:
               while(true)
               {
                  this.col2 = new b2Vec2();
                  while(true)
                  {
                     super();
                     if(_loc3_)
                     {
                        break;
                     }
                     if(!_loc3_)
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
         §§goto(addr60);
      }
      
      public static function §&!i§(param1:Number) : b2Mat22
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = new b2Mat22();
         if(_loc3_ || _loc3_)
         {
            _loc2_.Set(param1);
         }
         return _loc2_;
      }
      
      public static function §,A§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!(_loc5_ && param1))
         {
            _loc3_.§^j§(param1,param2);
         }
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(Math.cos(param1)));
            if(!(_loc4_ && _loc2_))
            {
               _loc2_ = §§pop();
               addr38:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               §§push(this.col1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr128:
                  while(true)
                  {
                     §§pop().x = §§pop();
                  }
                  while(true)
                  {
                     §§push(this.col1);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           break;
                        }
                        §§pop().y = §§pop();
                        loop7:
                        while(_loc5_ || param1)
                        {
                           addr117:
                           §§push(this.col2);
                           if(!_loc4_)
                           {
                              §§push(_loc2_);
                              if(_loc5_ || this)
                              {
                                 if(!_loc4_)
                                 {
                                    §§pop().y = §§pop();
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc4_ && this))
                                    {
                                       return;
                                    }
                                    addr129:
                                    while(true)
                                    {
                                       §§push(this.col2);
                                       addr121:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          §§goto(addr117);
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
                           §§goto(addr121);
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  §§goto(addr128);
               }
            }
            §§goto(addr129);
         }
         §§goto(addr38);
      }
      
      public function §^j§(param1:b2Vec2, param2:b2Vec2) : void
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
            while(_loc4_ && this);
            
         }
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(_loc3_ || _loc2_)
         {
            _loc1_.§97§(this);
         }
         return _loc1_;
      }
      
      public function §97§(param1:b2Mat22) : void
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
         while(!_loc2_);
         
      }
      
      public function §=p§(param1:b2Mat22) : void
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
         }
         §§goto(addr92);
      }
      
      public function §3!-§() : void
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
               loop1:
               while(true)
               {
                  §§push(this.col2);
                  while(true)
                  {
                     §§pop().x = 0;
                     continue loop0;
                     addr80:
                     §§push(this.col2);
                     if(!(_loc1_ && _loc1_))
                     {
                        addr44:
                        §§pop().y = 1;
                        if(_loc1_ && _loc2_)
                        {
                           while(_loc2_)
                           {
                              §§goto(addr80);
                              §§goto(addr44);
                           }
                           continue loop1;
                           addr78:
                        }
                        if(_loc2_ || _loc2_)
                        {
                           return;
                           addr70:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §+J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.col1);
            while(true)
            {
               §§push(0);
               addr99:
               while(true)
               {
                  §§pop().x = §§pop();
                  addr100:
                  while(true)
                  {
                     §§push(this.col2);
                     while(true)
                     {
                        §§push(0);
                        addr94:
                        §§goto(addr89);
                     }
                  }
               }
            }
         }
         addr89:
         while(true)
         {
            §§pop().x = §§pop();
            continue loop0;
         }
         loop7:
         while(true)
         {
            §§push(this.col2);
            if(_loc1_ && _loc1_)
            {
               continue loop3;
            }
            §§push(0);
            if(!_loc1_)
            {
               addr52:
               §§pop().y = §§pop();
               if(!(_loc1_ && _loc1_))
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     break;
                  }
                  continue loop2;
               }
               addr87:
               while(!_loc1_)
               {
                  continue loop7;
                  §§goto(addr52);
               }
               continue loop0;
            }
            §§goto(addr94);
         }
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §]i§(param1:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         §§push(this.col1.x);
         if(_loc8_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            §§push(this.col2.x);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
               if(!_loc7_)
               {
                  _loc3_ = §§pop();
                  addr44:
                  §§push(this.col1.y);
                  if(_loc8_ || _loc2_)
                  {
                  }
                  addr55:
                  var _loc4_:* = §§pop();
                  §§push(this.col2.y);
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                     if(!_loc7_)
                     {
                        §§push(_loc5_);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc8_)
                           {
                              §§push(_loc3_);
                              if(!(_loc7_ && param1))
                              {
                                 §§push(§§pop() * _loc4_);
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(§§pop());
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             addr274:
                                             _loc6_ = §§pop();
                                             if(_loc8_ || this)
                                             {
                                                addr283:
                                                if(§§pop() != 0)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(1 / _loc6_);
                                                      if(_loc8_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr290:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               addr291:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         addr289:
                                                      }
                                                      §§goto(addr290);
                                                      addr175:
                                                      if(!(_loc8_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      addr182:
                                                      §§push(param1.col2);
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc7_)
                                                         {
                                                            addr89:
                                                            §§push(_loc2_);
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               addr98:
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     addr112:
                                                                     §§pop().y = §§pop();
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        if(!(_loc8_ || this))
                                                                        {
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.col1);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(_loc8_ || param1)
                                                                                       {
                                                                                          if(_loc8_ || this)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             if(_loc8_ || param1)
                                                                                             {
                                                                                                addr172:
                                                                                                §§pop().y = §§pop() * §§pop();
                                                                                                loop13:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§goto(addr175);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(!(_loc7_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(param1.col2);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            addr187:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               if(_loc8_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     break loop13;
                                                                                                                     §§goto(addr89);
                                                                                                                  }
                                                                                                                  addr196:
                                                                                                               }
                                                                                                               break loop13;
                                                                                                            }
                                                                                                            §§goto(addr182);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr291);
                                                                                                      addr206:
                                                                                                   }
                                                                                                   §§goto(addr186);
                                                                                                   §§goto(addr112);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   continue loop12;
                                                                                                }
                                                                                                addr173:
                                                                                                addr197:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr205:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   §§goto(addr206);
                                                                                                }
                                                                                             }
                                                                                             addr204:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr204);
                                                                                          }
                                                                                          addr203:
                                                                                       }
                                                                                       §§goto(addr172);
                                                                                    }
                                                                                    §§goto(addr205);
                                                                                 }
                                                                                 §§goto(addr172);
                                                                              }
                                                                              addr202:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr203);
                                                                              }
                                                                           }
                                                                        }
                                                                        return param1;
                                                                        addr127:
                                                                     }
                                                                     §§goto(addr173);
                                                                  }
                                                                  §§goto(addr187);
                                                               }
                                                               §§goto(addr197);
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                         §§goto(addr98);
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr202);
                                                   §§goto(addr291);
                                                }
                                             }
                                             §§goto(addr290);
                                          }
                                          §§goto(addr283);
                                       }
                                       §§goto(addr290);
                                    }
                                    §§goto(addr289);
                                 }
                                 §§goto(addr274);
                              }
                              §§goto(addr283);
                           }
                           §§goto(addr290);
                        }
                        §§goto(addr274);
                     }
                     §§goto(addr283);
                  }
                  §§goto(addr127);
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr55);
         }
         §§goto(addr44);
      }
      
      public function §,!&§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
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
         if(_loc10_ || param3)
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
            if(!_loc9_)
            {
               §§push(§§pop() * §§pop());
               if(_loc10_)
               {
                  §§push(_loc5_);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _loc6_);
                     if(!_loc10_)
                     {
                     }
                     addr71:
                     var _loc8_:* = §§pop();
                     if(_loc10_)
                     {
                        if(§§pop() != 0)
                        {
                           if(_loc10_)
                           {
                              §§push(1 / _loc8_);
                              if(!_loc9_)
                              {
                                 addr94:
                                 _loc8_ = Number(§§pop());
                                 if(!(_loc9_ && param1))
                                 {
                                    addr153:
                                    §§push(param1);
                                    §§push(_loc8_);
                                    if(_loc10_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc10_ || param2)
                                       {
                                          §§push(param2);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc9_)
                                             {
                                                addr192:
                                                addr193:
                                                §§push(_loc5_);
                                                if(!(_loc9_ && param1))
                                                {
                                                   addr189:
                                                   §§push(§§pop() * param3);
                                                }
                                                §§pop().x = §§pop() * (§§pop() - §§pop());
                                                do
                                                {
                                                   §§push(param1);
                                                   §§push(_loc8_);
                                                   if(!(_loc10_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc4_);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§push(param3);
                                                      if(!_loc9_)
                                                      {
                                                         addr148:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc10_ || this)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc10_ || param3)
                                                            {
                                                               §§push(§§pop() * param2);
                                                            }
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                         continue;
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   §§goto(addr148);
                                                }
                                                while(§§pop().y = §§pop(), !_loc10_);
                                                
                                                return param1;
                                                addr194:
                                                addr152:
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr192);
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr94);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc9_)
                  {
                     addr69:
                     §§push(Number(§§pop()));
                  }
                  §§push(§§pop());
               }
               §§goto(addr69);
            }
            §§goto(addr71);
         }
         §§goto(addr69);
      }
      
      public function §0@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.col1.§0@§();
            do
            {
               this.col2.§0@§();
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
   }
}
