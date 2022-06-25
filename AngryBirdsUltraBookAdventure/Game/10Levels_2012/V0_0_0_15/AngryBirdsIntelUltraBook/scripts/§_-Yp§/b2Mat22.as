package §_-Yp§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.col1 = new b2Vec2();
            if(_loc2_)
            {
               addr70:
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
                     if(!(_loc3_ && _loc1_))
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
         §§goto(addr70);
      }
      
      public static function §_-06D§(param1:Number) : b2Mat22
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
      
      public static function §_-qY§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(_loc5_)
         {
            _loc3_.§_-ZL§(param1,param2);
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
            if(_loc4_ || this)
            {
               _loc2_ = §§pop();
               addr32:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(this.col1);
               while(true)
               {
                  §§push(_loc2_);
                  addr132:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     addr133:
                     while(true)
                     {
                        §§push(this.col2);
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              §§push(-§§pop());
                           }
                           addr127:
                           §§goto(addr119);
                        }
                     }
                  }
               }
            }
            addr119:
            while(true)
            {
               §§pop().x = §§pop();
               continue loop0;
            }
            loop7:
            while(true)
            {
               §§push(this.col2);
               if(_loc5_ && this)
               {
                  continue loop3;
               }
               §§push(_loc2_);
               if(!_loc5_)
               {
                  addr67:
                  §§pop().y = §§pop();
                  if(!(_loc5_ && _loc3_))
                  {
                     if(_loc4_ || _loc2_)
                     {
                        break;
                     }
                     continue loop2;
                  }
                  addr112:
                  while(!(_loc5_ && this))
                  {
                     continue loop7;
                     §§goto(addr67);
                  }
                  continue loop0;
               }
               §§goto(addr127);
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function §_-ZL§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.col1.SetV(param1);
         }
         do
         {
            this.col2.SetV(param2);
         }
         while(_loc4_ && _loc3_);
         
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(!_loc2_)
         {
            _loc1_.§_-tP§(this);
         }
         return _loc1_;
      }
      
      public function §_-tP§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.col1.SetV(param1.col1);
            do
            {
               this.col2.SetV(param1.col2);
            }
            while(!_loc2_);
            
         }
      }
      
      public function §_-a3§(param1:b2Mat22) : void
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
         loop6:
         while(true)
         {
            §§push(this.col1);
            if(!_loc2_)
            {
               §§push(this.col1);
               if(!(_loc2_ && param1))
               {
                  §§push(§§pop().y);
                  if(_loc3_)
                  {
                     if(!_loc2_)
                     {
                        §§push(param1.col1);
                        if(_loc3_ || param1)
                        {
                           §§push(§§pop().y);
                           if(_loc3_)
                           {
                              addr150:
                              §§push(§§pop() + §§pop());
                              if(_loc3_ || _loc2_)
                              {
                                 §§pop().y = §§pop();
                                 while(true)
                                 {
                                    §§push(this.col2);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.col2);
                                       addr94:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr95:
                                          while(true)
                                          {
                                             §§push(param1.col2);
                                             addr97:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr98:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr99:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      addr100:
                                                      while(!(_loc2_ && param1))
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       return;
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr167);
                           }
                           §§goto(addr168);
                        }
                        else
                        {
                           §§goto(addr166);
                        }
                     }
                     else
                     {
                        §§goto(addr164);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr150);
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
      
      public function §_-H2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
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
                     addr95:
                     §§push(this.col2);
                     if(_loc2_ || _loc1_)
                     {
                        §§pop().y = 1;
                        addr39:
                        if(!(_loc2_ || this))
                        {
                           while(!(_loc1_ && this))
                           {
                              §§goto(addr95);
                              §§goto(addr39);
                           }
                           continue loop1;
                           addr88:
                        }
                        if(!(_loc1_ && this))
                        {
                           return;
                           addr65:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §_-el§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.col1);
            loop0:
            while(true)
            {
               §§push(0);
               addr109:
               while(true)
               {
                  §§pop().x = §§pop();
                  addr110:
                  loop2:
                  while(true)
                  {
                     §§push(this.col2);
                     while(true)
                     {
                        §§push(0);
                        addr104:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop0;
                        }
                        addr99:
                        §§push(this.col2);
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        §§push(0);
                        if(!(_loc1_ && this))
                        {
                           addr57:
                           §§pop().y = §§pop();
                           if(_loc1_ && _loc1_)
                           {
                              while(true)
                              {
                                 if(_loc1_ && this)
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr99);
                                 §§goto(addr57);
                              }
                              continue;
                              addr92:
                           }
                           if(_loc2_)
                           {
                              return;
                              addr67:
                           }
                           continue loop0;
                        }
                        §§goto(addr104);
                     }
                  }
               }
            }
            addr108:
         }
         while(true)
         {
            §§push(this.col1);
            if(_loc2_)
            {
               §§push(0);
               if(!(_loc1_ && this))
               {
                  §§pop().y = §§pop();
                  §§goto(addr92);
               }
               else
               {
                  §§goto(addr109);
               }
            }
            else
            {
               §§goto(addr108);
            }
            §§goto(addr109);
         }
         §§goto(addr67);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §_-84§(param1:b2Mat22) : b2Mat22
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
         if(_loc8_ || _loc2_)
         {
            §§push(this.col2.x);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
               if(_loc8_ || this)
               {
                  _loc3_ = §§pop();
                  addr49:
                  §§push(this.col1.y);
                  if(_loc7_)
                  {
                  }
                  addr55:
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
                        if(!_loc7_)
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
                                    if(!(_loc7_ && param1))
                                    {
                                       addr221:
                                       §§push(Number(§§pop()));
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(§§pop());
                                          if(_loc8_)
                                          {
                                             addr232:
                                             _loc6_ = §§pop();
                                             if(_loc8_)
                                             {
                                                addr236:
                                                if(§§pop() != 0)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      addr239:
                                                      §§push(1 / _loc6_);
                                                      if(_loc8_)
                                                      {
                                                         addr245:
                                                         _loc6_ = Number(§§pop());
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   while(true)
                                                   {
                                                      addr164:
                                                      if(!(_loc8_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(param1.col1);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(-§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr140:
                                                                     §§pop().y = §§pop() * §§pop();
                                                                     loop12:
                                                                     for(; _loc8_ || param1; §§pop().y = §§pop(),if(!(_loc7_ && this))
                                                                     {
                                                                        return param1;
                                                                     })
                                                                     {
                                                                        §§push(param1.col2);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 addr88:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       addr153:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       addr155:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    break loop12;
                                                                                 }
                                                                              }
                                                                              §§goto(addr155);
                                                                           }
                                                                           §§goto(addr88);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr153);
                                                                           §§goto(addr148);
                                                                        }
                                                                        addr148:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           §§goto(addr164);
                                                                        }
                                                                        addr181:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr152);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        §§goto(addr181);
                                                                     }
                                                                     addr180:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr179:
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc8_)
                                                         {
                                                            §§goto(addr179);
                                                            §§push(_loc5_);
                                                         }
                                                         §§goto(addr140);
                                                         §§goto(addr171);
                                                      }
                                                      addr171:
                                                      addr175:
                                                   }
                                                   addr246:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr175);
                                                   §§goto(addr246);
                                                }
                                             }
                                             §§goto(addr245);
                                          }
                                          §§goto(addr236);
                                       }
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr236);
                              }
                              §§goto(addr232);
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr245);
                  }
                  §§goto(addr239);
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr55);
         }
         §§goto(addr49);
      }
      
      public function §_-NQ§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(this.col1.x);
         if(!(_loc10_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.col2.x);
         if(_loc9_ || this)
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
         if(!(_loc10_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc4_);
         if(!_loc10_)
         {
            §§push(_loc7_);
            if(!_loc10_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc10_ && param2))
               {
                  addr73:
                  §§push(_loc5_);
                  if(!(_loc10_ && param1))
                  {
                     addr105:
                     §§push(§§pop() * _loc6_);
                     if(_loc9_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc10_ && param2))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc8_:* = §§pop();
                     if(!_loc10_)
                     {
                        if(§§pop() != 0)
                        {
                           if(_loc9_)
                           {
                              §§push(1 / _loc8_);
                              if(!(_loc10_ && param1))
                              {
                                 addr123:
                                 _loc8_ = Number(§§pop());
                                 if(!(_loc10_ && param3))
                                 {
                                    addr177:
                                    §§push(param1);
                                    §§push(_loc8_);
                                    if(_loc9_)
                                    {
                                       §§push(_loc7_);
                                       if(!(_loc10_ && param1))
                                       {
                                          §§push(param2);
                                          if(_loc9_ || param2)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc10_)
                                             {
                                                addr216:
                                                addr217:
                                                §§push(_loc5_);
                                                if(_loc9_)
                                                {
                                                   addr213:
                                                   §§push(§§pop() * param3);
                                                }
                                                §§pop().x = §§pop() * (§§pop() - §§pop());
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
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            addr172:
                                                            §§push(_loc6_);
                                                            if(_loc9_)
                                                            {
                                                               addr169:
                                                               §§push(§§pop() * param2);
                                                            }
                                                            §§push(§§pop() * (§§pop() - §§pop()));
                                                            continue;
                                                         }
                                                         §§goto(addr172);
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr172);
                                                }
                                                while(§§pop().y = §§pop(), _loc10_);
                                                
                                                return param1;
                                                addr218:
                                             }
                                             §§goto(addr216);
                                          }
                                          §§goto(addr213);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr217);
                                    addr131:
                                 }
                                 §§goto(addr218);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr105);
               }
               §§push(§§pop());
            }
            §§goto(addr105);
         }
         §§goto(addr73);
      }
      
      public function §_-010§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.col1.§_-010§();
            do
            {
               this.col2.§_-010§();
            }
            while(!_loc1_);
            
         }
      }
   }
}
