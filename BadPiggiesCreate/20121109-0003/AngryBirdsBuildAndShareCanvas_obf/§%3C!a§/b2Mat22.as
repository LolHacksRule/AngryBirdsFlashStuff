package §<!a§
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
               addr44:
               while(true)
               {
                  this.col2 = new b2Vec2();
                  if(_loc2_ && _loc1_)
                  {
                     break;
                  }
                  super();
                  if(_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public static function §^!§(param1:Number) : b2Mat22
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = new b2Mat22();
         if(_loc4_ || _loc3_)
         {
            _loc2_.Set(param1);
         }
         return _loc2_;
      }
      
      public static function §2!x§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!_loc4_)
         {
            _loc3_.§-l§(param1,param2);
         }
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         if(_loc4_ || this)
         {
            §§push(Number(Math.cos(param1)));
            if(!(_loc5_ && _loc3_))
            {
               _loc2_ = §§pop();
               addr37:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || _loc3_)
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
                  }
                  loop5:
                  while(true)
                  {
                     §§push(this.col1);
                     if(!(_loc4_ || _loc3_))
                     {
                        continue loop0;
                     }
                     §§push(_loc3_);
                     if(!(_loc4_ || param1))
                     {
                        break;
                     }
                     §§pop().y = §§pop();
                     loop6:
                     while(true)
                     {
                        §§push(this.col2);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              §§pop().y = §§pop();
                              if(_loc5_)
                              {
                                 continue;
                              }
                              if(!_loc4_)
                              {
                                 continue loop5;
                              }
                              if(_loc4_ || param1)
                              {
                                 return;
                              }
                              addr138:
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
                           addr132:
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(-§§pop());
                        }
                        §§goto(addr132);
                        §§goto(addr109);
                     }
                     addr109:
                  }
                  §§goto(addr137);
               }
            }
            §§goto(addr138);
         }
         §§goto(addr37);
      }
      
      public function §-l§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(_loc3_)
         {
            _loc1_.§<P§(this);
         }
         return _loc1_;
      }
      
      public function §<P§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.col1.SetV(param1.col1);
            do
            {
               this.col2.SetV(param1.col2);
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function §9";§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
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
         §§goto(addr107);
      }
      
      public function §@!c§() : void
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
                     continue loop0;
                     §§goto(addr75);
                  }
               }
            }
         }
         addr75:
         loop5:
         while(true)
         {
            §§push(this.col2);
            if(!_loc1_)
            {
               addr29:
               §§pop().y = 1;
               if(_loc2_ || this)
               {
                  break;
               }
               addr61:
               while(!(_loc1_ && this))
               {
                  if(_loc2_ || _loc2_)
                  {
                     continue loop5;
                  }
                  continue loop1;
                  §§goto(addr29);
               }
               continue loop0;
            }
            continue loop2;
         }
      }
      
      public function §?b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(0);
               addr84:
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
                        addr77:
                        addr62:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           addr78:
                           while(!_loc1_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           §§push(this.col2);
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§push(0);
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr77);
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
      
      public function §'P§(param1:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         §§push(this.col1.x);
         if(!(_loc8_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || this)
         {
            §§push(this.col2.x);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
               if(_loc7_)
               {
                  _loc3_ = §§pop();
                  addr48:
                  §§push(this.col1.y);
                  if(_loc7_)
                  {
                     addr53:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(this.col2.y);
                  if(!(_loc8_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(_loc7_)
                  {
                     §§push(_loc2_);
                     if(!(_loc8_ && this))
                     {
                        §§push(_loc5_);
                        if(_loc7_ || this)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc7_)
                           {
                              §§push(_loc3_);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() * _loc4_);
                                 if(_loc8_ && _loc2_)
                                 {
                                 }
                                 addr233:
                                 _loc6_ = §§pop();
                                 if(!_loc8_)
                                 {
                                    addr237:
                                    if(§§pop() != 0)
                                    {
                                       while(true)
                                       {
                                          §§push(1 / _loc6_);
                                          if(!(_loc8_ && this))
                                          {
                                             addr259:
                                             §§push(Number(§§pop()));
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                addr260:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr259:
                                          }
                                          §§goto(addr259);
                                       }
                                       addr238:
                                    }
                                    while(true)
                                    {
                                       §§push(param1.col1);
                                       loop2:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          addr179:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             addr180:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr181:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   addr182:
                                                   while(true)
                                                   {
                                                      §§push(param1.col2);
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         addr166:
                                                         addr161:
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
                                                                     while(_loc7_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §§goto(addr238);
                                                                     }
                                                                     §§goto(addr260);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1.col2);
                                                            if(_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc6_);
                                                            if(_loc7_ || param1)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc7_)
                                                               {
                                                                  addr92:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr166);
                                                                     }
                                                                     §§goto(addr167);
                                                                  }
                                                                  §§goto(addr169);
                                                               }
                                                               §§goto(addr168);
                                                            }
                                                            §§goto(addr92);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr259);
                              }
                              §§push(§§pop() - §§pop());
                              if(!(_loc8_ && this))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc7_ || _loc2_)
                                 {
                                    addr230:
                                    §§push(§§pop());
                                    if(_loc7_)
                                    {
                                       §§goto(addr233);
                                    }
                                    §§goto(addr237);
                                 }
                              }
                              §§goto(addr230);
                           }
                           §§goto(addr259);
                        }
                        §§goto(addr233);
                     }
                     §§goto(addr230);
                  }
                  §§goto(addr182);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr48);
      }
      
      public function §1!R§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.col1.x);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.col2.x);
         if(!(_loc9_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(this.col1.y);
         if(!(_loc9_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(this.col2.y);
         if(!(_loc9_ && param2))
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
               if(!_loc9_)
               {
                  §§push(_loc5_);
                  if(_loc10_ || param2)
                  {
                     addr77:
                     §§push(§§pop() * _loc6_);
                     if(_loc10_ || param2)
                     {
                        addr86:
                        §§push(§§pop() - §§pop());
                        if(_loc10_)
                        {
                           addr90:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr90);
                     }
                     var _loc8_:* = §§pop();
                     if(!(_loc9_ && param3))
                     {
                        if(§§pop() != 0)
                        {
                           if(!(_loc9_ && param1))
                           {
                              §§push(1 / _loc8_);
                              if(_loc10_ || param1)
                              {
                                 addr129:
                                 _loc8_ = Number(§§pop());
                                 if(!(_loc9_ && param1))
                                 {
                                    addr183:
                                    §§push(param1);
                                    §§push(_loc8_);
                                    if(!_loc9_)
                                    {
                                       §§push(_loc7_);
                                       if(!_loc9_)
                                       {
                                          §§push(param2);
                                          if(!_loc9_)
                                          {
                                             addr218:
                                             §§push(§§pop() * §§pop());
                                             if(_loc10_)
                                             {
                                                addr196:
                                                §§push(_loc5_);
                                                if(!(_loc9_ && param2))
                                                {
                                                   addr214:
                                                   §§push(§§pop() * param3);
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§pop().x = §§pop() * §§pop();
                                             do
                                             {
                                                §§push(param1);
                                                §§push(_loc8_);
                                                if(!(_loc10_ || this))
                                                {
                                                   continue;
                                                }
                                                §§push(_loc4_);
                                                if(!(_loc9_ && param2))
                                                {
                                                   §§push(param3);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc10_)
                                                      {
                                                         addr167:
                                                         §§push(_loc6_);
                                                         if(!_loc9_)
                                                         {
                                                            addr172:
                                                            §§push(§§pop() - §§pop() * param2);
                                                         }
                                                         §§goto(addr172);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      continue;
                                                   }
                                                   §§goto(addr172);
                                                }
                                                §§goto(addr167);
                                             }
                                             while(§§pop().y = §§pop(), _loc9_ && param2);
                                             
                                             return param1;
                                             addr219:
                                             addr182:
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr196);
                                    }
                                    §§goto(addr218);
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr86);
               }
               §§goto(addr90);
            }
            §§goto(addr77);
         }
         §§goto(addr90);
      }
      
      public function §1!`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.col1.§1!`§();
            do
            {
               this.col2.§1!`§();
            }
            while(!_loc2_);
            
         }
      }
   }
}
