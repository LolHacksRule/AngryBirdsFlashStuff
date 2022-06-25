package §&L§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            this.col1 = new b2Vec2();
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.col2 = new b2Vec2();
                  if(!_loc2_)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        super();
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                        if(true)
                        {
                           this.col1.x = this.col2.y = 1;
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
                  break;
               }
               return;
            }
         }
         §§goto(addr61);
      }
      
      public static function §3!H§(param1:Number) : b2Mat22
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
      
      public static function §]!W§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!_loc5_)
         {
            _loc3_.§-!-§(param1,param2);
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
            if(!_loc4_)
            {
               _loc2_ = §§pop();
               addr34:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || _loc2_)
            {
               §§push(this.col1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  addr110:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     addr111:
                     loop2:
                     while(true)
                     {
                        §§push(this.col2);
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              §§push(-§§pop());
                           }
                           addr105:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop0;
                           }
                           addr97:
                           §§push(this.col2);
                           if(!_loc5_)
                           {
                              continue;
                           }
                           §§push(_loc2_);
                           if(!_loc4_)
                           {
                              addr70:
                              §§pop().y = §§pop();
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr97);
                                    §§goto(addr70);
                                 }
                                 continue;
                                 addr95:
                              }
                              if(!_loc4_)
                              {
                                 return;
                                 addr85:
                              }
                              continue loop2;
                           }
                           §§goto(addr105);
                        }
                     }
                  }
               }
               addr109:
            }
            while(true)
            {
               §§push(this.col1);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     §§pop().y = §§pop();
                     §§goto(addr95);
                  }
                  else
                  {
                     §§goto(addr110);
                  }
               }
               else
               {
                  §§goto(addr109);
               }
               §§goto(addr110);
            }
            §§goto(addr85);
         }
         §§goto(addr34);
      }
      
      public function §-!-§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.col1.SetV(param1);
            do
            {
               this.col2.SetV(param2);
            }
            while(_loc4_);
            
         }
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(!_loc3_)
         {
            _loc1_.§>!c§(this);
         }
         return _loc1_;
      }
      
      public function §>!c§(param1:b2Mat22) : void
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
         while(_loc2_);
         
      }
      
      public function §[!#§(param1:b2Mat22) : void
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
         §§goto(addr147);
      }
      
      public function §'u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
                     §§goto(addr84);
                  }
               }
            }
         }
         addr84:
         loop5:
         while(true)
         {
            §§push(this.col2);
            if(_loc1_ || _loc2_)
            {
               §§pop().y = 1;
               addr33:
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               addr75:
               while(!_loc2_)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     continue loop5;
                  }
                  continue loop1;
                  §§goto(addr33);
               }
               continue loop0;
            }
            continue loop2;
         }
      }
      
      public function §5b§() : void
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
               addr103:
               while(true)
               {
                  §§pop().x = §§pop();
               }
               loop5:
               while(true)
               {
                  §§push(this.col1);
                  if(!(_loc1_ || this))
                  {
                     continue loop0;
                  }
                  §§push(0);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().y = §§pop();
                  loop6:
                  while(true)
                  {
                     §§push(this.col2);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(0);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop().y = §§pop();
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(_loc2_ && _loc2_)
                           {
                              continue loop5;
                           }
                           if(!_loc2_)
                           {
                              return;
                           }
                           addr104:
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
                        addr98:
                     }
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr98);
                     §§goto(addr93);
                  }
                  addr93:
               }
               §§goto(addr103);
            }
         }
         §§goto(addr104);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §,0§(param1:b2Mat22) : b2Mat22
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
            if(_loc7_)
            {
               §§push(Number(§§pop()));
               if(_loc7_)
               {
                  addr37:
                  _loc3_ = §§pop();
                  §§push(this.col1.y);
                  if(!(_loc8_ && _loc3_))
                  {
                     addr48:
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
                     if(!_loc8_)
                     {
                        §§push(_loc5_);
                        if(_loc7_ || param1)
                        {
                           addr251:
                           §§push(§§pop() * §§pop());
                           while(true)
                           {
                              §§push(_loc3_);
                           }
                           addr251:
                        }
                        loop0:
                        while(true)
                        {
                           §§push(§§pop() * _loc4_);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              loop2:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop3:
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                    addr257:
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       if(_loc7_ || this)
                                       {
                                          §§push(0);
                                          if(_loc8_ && this)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc8_ && this)
                                          {
                                             continue loop0;
                                          }
                                          if(§§pop() != §§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(1 / _loc6_);
                                                if(_loc7_ || _loc3_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   while(!(_loc8_ && _loc2_))
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         _loc6_ = §§pop();
                                                         while(true)
                                                         {
                                                         }
                                                         addr238:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr251);
                                                      }
                                                   }
                                                   continue loop2;
                                                   addr213:
                                                }
                                                §§goto(addr213);
                                             }
                                             continue loop3;
                                             addr200:
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(param1.col1);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                if(_loc7_)
                                                {
                                                   §§push(_loc5_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr127:
                                                      §§push(_loc4_);
                                                      if(_loc7_ || _loc2_)
                                                      {
                                                         addr136:
                                                         §§pop().y = §§pop() * §§pop();
                                                         while(true)
                                                         {
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               if(_loc8_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               addr151:
                                                               §§push(param1.col2);
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr84:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    return param1;
                                                                                 }
                                                                                 while(_loc7_)
                                                                                 {
                                                                                    §§push(param1.col2);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       addr156:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§goto(addr151);
                                                                                    }
                                                                                 }
                                                                                 continue loop5;
                                                                                 addr172:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 addr158:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                              }
                                                                           }
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              addr160:
                                                                              addr171:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    break loop16;
                                                                                 }
                                                                                 §§push(param1.col1);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 §§push(_loc6_);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       addr110:
                                                                                       if(!(_loc7_ || param1))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr127);
                                                                                    }
                                                                                    §§goto(addr136);
                                                                                 }
                                                                                 §§goto(addr110);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 §§goto(addr172);
                                                                              }
                                                                           }
                                                                           §§goto(addr200);
                                                                        }
                                                                        §§goto(addr158);
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  §§goto(addr84);
                                                               }
                                                               §§goto(addr155);
                                                            }
                                                            §§goto(addr160);
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                                §§goto(addr171);
                                             }
                                          }
                                       }
                                       §§goto(addr213);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr251);
                  }
                  §§goto(addr257);
               }
               §§goto(addr48);
            }
         }
         §§goto(addr37);
      }
      
      public function §<!6§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.col1.x);
         if(_loc10_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.col2.x);
         if(_loc10_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(this.col1.y);
         if(_loc10_ || this)
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
         if(_loc10_)
         {
            §§push(_loc7_);
            if(!_loc9_)
            {
               §§push(§§pop() * §§pop());
               if(_loc10_ || param1)
               {
                  addr74:
                  §§push(_loc5_);
                  if(_loc10_)
                  {
                     addr79:
                     §§push(§§pop() - §§pop() * _loc6_);
                     if(_loc10_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr79);
               }
               var _loc8_:* = §§pop();
               if(_loc10_ || param2)
               {
                  §§push(_loc8_);
                  if(!_loc9_)
                  {
                     if(§§pop() != 0)
                     {
                        if(_loc10_)
                        {
                           §§push(1 / _loc8_);
                           if(_loc10_)
                           {
                              addr225:
                              _loc8_ = Number(§§pop());
                              while(true)
                              {
                              }
                              addr226:
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr226);
                     }
                     while(true)
                     {
                        §§push(param1);
                        §§push(_loc8_);
                        if(!(_loc9_ && param1))
                        {
                           §§push(_loc7_);
                           if(_loc10_ || param1)
                           {
                              §§push(param2);
                              if(_loc10_ || param1)
                              {
                                 addr210:
                                 §§push(§§pop() * §§pop());
                                 if(_loc10_)
                                 {
                                    addr198:
                                    §§push(_loc5_);
                                    if(!(_loc9_ && param1))
                                    {
                                       addr206:
                                       §§push(§§pop() * param3);
                                    }
                                    §§push(§§pop() - §§pop());
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
                                    if(!(_loc9_ && param2))
                                    {
                                       §§push(param3);
                                       if(!(_loc9_ && param3))
                                       {
                                          addr147:
                                          §§push(§§pop() * §§pop());
                                          if(_loc10_ || this)
                                          {
                                             §§push(_loc6_);
                                             if(_loc10_ || this)
                                             {
                                                §§push(§§pop() * param2);
                                             }
                                          }
                                          §§push(§§pop() * §§pop());
                                          continue;
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§goto(addr147);
                                 }
                                 while(§§pop().y = §§pop(), _loc9_);
                                 
                                 if(_loc10_ || param3)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr210);
                     }
                     return param1;
                  }
               }
               §§goto(addr225);
            }
            §§goto(addr79);
         }
         §§goto(addr74);
      }
      
      public function §"b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.col1.§"b§();
         }
         do
         {
            this.col2.§"b§();
         }
         while(_loc1_ && _loc1_);
         
      }
   }
}
