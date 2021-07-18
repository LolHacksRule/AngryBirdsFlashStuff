package §6A§
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
         }
         loop0:
         while(true)
         {
            addr49:
            addr88:
            while(true)
            {
               this.col2 = new b2Vec2();
               if(_loc2_ && _loc1_)
               {
                  break;
               }
               super();
               if(_loc2_ && _loc1_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      public static function §>G§(param1:Number) : b2Mat22
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = new b2Mat22();
         if(!_loc4_)
         {
            _loc2_.Set(param1);
         }
         return _loc2_;
      }
      
      public static function §0$§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!_loc4_)
         {
            _loc3_.§7!&§(param1,param2);
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
            if(_loc4_ || this)
            {
               §§push(this.col1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr117:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     addr118:
                     loop2:
                     while(true)
                     {
                        §§push(this.col2);
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              §§push(-§§pop());
                           }
                           while(true)
                           {
                              §§pop().x = §§pop();
                              §§push(_loc2_);
                              addr49:
                              continue loop0;
                              if(_loc4_ || _loc3_)
                              {
                                 §§pop().y = §§pop();
                                 if(!_loc5_)
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       return;
                                       addr77:
                                    }
                                    continue loop2;
                                 }
                                 addr92:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
               addr116:
            }
            while(true)
            {
               §§push(this.col1);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc4_ || _loc2_)
                  {
                     §§pop().y = §§pop();
                     §§goto(addr92);
                  }
                  else
                  {
                     §§goto(addr117);
                  }
               }
               else
               {
                  §§goto(addr116);
               }
               §§goto(addr117);
            }
            §§goto(addr77);
         }
         §§goto(addr27);
      }
      
      public function §7!&§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
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
         if(!_loc3_)
         {
            _loc1_.§&o§(this);
         }
         return _loc1_;
      }
      
      public function §&o§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.col1.SetV(param1.col1);
            do
            {
               this.col2.SetV(param1.col2);
            }
            while(_loc2_ && param1);
            
         }
      }
      
      public function §3k§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(this.col1);
               addr157:
               while(true)
               {
                  §§push(§§pop().x);
                  addr158:
                  while(true)
                  {
                     §§push(param1.col1);
                     addr160:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr161:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr162:
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
         §§goto(addr142);
      }
      
      public function §%N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
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
                     §§goto(addr69);
                  }
               }
            }
         }
         addr69:
         loop5:
         while(true)
         {
            §§push(this.col2);
            if(_loc1_ || _loc1_)
            {
               §§pop().y = 1;
               if(!_loc2_)
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  continue loop1;
               }
               addr67:
               while(!_loc2_)
               {
                  continue loop5;
               }
               continue loop0;
            }
            continue loop2;
         }
      }
      
      public function §^!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(0);
               addr88:
               while(true)
               {
                  §§pop().x = §§pop();
                  addr89:
                  loop2:
                  while(true)
                  {
                     §§push(this.col2);
                     while(true)
                     {
                        §§push(0);
                        addr83:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop0;
                        }
                        addr68:
                        §§push(this.col2);
                        if(!_loc1_)
                        {
                           continue;
                        }
                        §§push(0);
                        if(_loc1_)
                        {
                           addr31:
                           §§pop().y = §§pop();
                           if(!(_loc1_ || this))
                           {
                              while(true)
                              {
                                 if(!(_loc1_ || _loc2_))
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr68);
                                 §§goto(addr31);
                              }
                              continue;
                              addr61:
                           }
                           if(_loc1_)
                           {
                              return;
                              addr51:
                           }
                           continue loop0;
                        }
                        §§goto(addr83);
                     }
                  }
               }
            }
            addr87:
         }
         while(true)
         {
            §§push(this.col1);
            if(_loc1_)
            {
               §§push(0);
               if(_loc1_)
               {
                  §§pop().y = §§pop();
                  §§goto(addr61);
               }
               else
               {
                  §§goto(addr88);
               }
            }
            else
            {
               §§goto(addr87);
            }
            §§goto(addr88);
         }
         §§goto(addr51);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §>b§(param1:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         §§push(this.col1.x);
         if(_loc8_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_ || param1)
         {
            §§push(this.col2.x);
            if(_loc8_ || param1)
            {
               §§push(Number(§§pop()));
               if(_loc8_ || param1)
               {
                  _loc3_ = §§pop();
                  addr59:
                  §§push(this.col1.y);
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc4_:* = §§pop();
            §§push(this.col2.y);
            if(_loc8_ || param1)
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
                  if(!_loc7_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc7_)
                     {
                        §§push(_loc3_);
                        if(_loc8_ || param1)
                        {
                           §§push(§§pop() * _loc4_);
                           if(_loc8_ || _loc3_)
                           {
                              addr240:
                              §§push(§§pop() - §§pop());
                              if(!(_loc7_ && this))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc8_ || _loc2_)
                                 {
                                    addr256:
                                    §§push(§§pop());
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       _loc6_ = §§pop();
                                       if(!_loc7_)
                                       {
                                          addr268:
                                          if(§§pop() != 0)
                                          {
                                             addr269:
                                             while(true)
                                             {
                                                §§push(1 / _loc6_);
                                                if(_loc8_ || this)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   addr289:
                                                }
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                   addr291:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                             addr269:
                                          }
                                          loop0:
                                          while(true)
                                          {
                                             §§push(param1.col1);
                                             loop1:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(param1.col2);
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               addr197:
                                                               while(true)
                                                               {
                                                                  §§push(-§§pop());
                                                                  addr198:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     addr199:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr200:
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr201:
                                                                           while(_loc8_)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 break loop10;
                                                                              }
                                                                              §§push(param1.col1);
                                                                              if(_loc8_ || _loc3_)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(_loc8_ || _loc2_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(!(_loc7_ && _loc2_))
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§push(_loc4_);
                                                                                       if(!(_loc8_ || this))
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                 }
                                                                                 if(_loc8_ || _loc2_)
                                                                                 {
                                                                                    §§pop().y = §§pop();
                                                                                    while(_loc8_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop0;
                                                                                    addr190:
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        §§goto(addr269);
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
                                       }
                                    }
                                 }
                                 §§goto(addr268);
                              }
                              §§goto(addr289);
                           }
                        }
                        §§goto(addr268);
                     }
                     §§goto(addr256);
                  }
                  §§goto(addr240);
               }
               §§goto(addr268);
            }
            §§goto(addr269);
         }
         §§goto(addr59);
      }
      
      public function §]!G§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(this.col1.x);
         if(!(_loc10_ && param2))
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
         if(_loc9_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(this.col2.y);
         if(_loc9_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_);
         if(!(_loc10_ && param2))
         {
            §§push(_loc7_);
            if(_loc9_)
            {
               §§push(§§pop() * §§pop());
               if(_loc9_)
               {
                  addr78:
                  §§push(_loc5_);
                  if(_loc9_)
                  {
                     addr81:
                     §§push(§§pop() * _loc6_);
                     if(_loc9_ || param3)
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc10_ && param3))
                        {
                           addr99:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr99);
                     }
                  }
                  var _loc8_:* = §§pop();
                  if(_loc9_ || param2)
                  {
                     if(§§pop() != 0)
                     {
                        if(!_loc10_)
                        {
                           §§push(1 / _loc8_);
                           if(!(_loc10_ && param1))
                           {
                              addr132:
                              §§push(Number(§§pop()));
                           }
                           _loc8_ = §§pop();
                           if(!(_loc10_ && param3))
                           {
                              addr182:
                              §§push(param1);
                              §§push(_loc8_);
                              if(!(_loc10_ && param2))
                              {
                                 §§push(_loc7_);
                                 if(!(_loc10_ && param2))
                                 {
                                    §§push(param2);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc9_)
                                       {
                                          addr215:
                                          §§push(_loc5_);
                                          if(!_loc10_)
                                          {
                                             addr220:
                                             §§push(§§pop() - §§pop() * param3);
                                          }
                                          §§goto(addr220);
                                       }
                                       addr222:
                                       §§pop().x = §§pop() * §§pop();
                                       do
                                       {
                                          §§push(param1);
                                          §§push(_loc8_);
                                          if(_loc10_)
                                          {
                                             continue;
                                          }
                                          §§push(_loc4_);
                                          if(!(_loc10_ && param2))
                                          {
                                             §§push(param3);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc10_)
                                                {
                                                   addr177:
                                                   §§push(_loc6_);
                                                   if(!(_loc10_ && param1))
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
                                       while(§§pop().y = §§pop(), _loc10_);
                                       
                                       return param1;
                                       addr223:
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr215);
                              }
                              §§goto(addr222);
                              addr141:
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr132);
               }
               §§goto(addr99);
            }
            §§goto(addr81);
         }
         §§goto(addr78);
      }
      
      public function §!V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.col1.§!V§();
            do
            {
               this.col2.§!V§();
            }
            while(!(_loc2_ || this));
            
         }
      }
   }
}
