package §_-Ja§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            this.col1 = new b2Vec2();
            if(!_loc3_)
            {
               this.col2 = new b2Vec2();
               if(!_loc3_)
               {
                  super();
                  if(_loc3_)
                  {
                  }
                  §§goto(addr61);
               }
            }
            this.col1.x = this.col2.y = 1;
         }
         addr61:
      }
      
      public static function §_-P§(param1:Number) : b2Mat22
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
      
      public static function §_-HJ§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!(_loc4_ && _loc3_))
         {
            _loc3_.§_-T3§(param1,param2);
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
            if(_loc4_)
            {
               _loc2_ = §§pop();
               addr29:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || _loc3_)
            {
               §§push(this.col1);
               if(!_loc5_)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§pop().x = §§pop();
                     if(_loc4_ || this)
                     {
                        addr68:
                        §§push(this.col2);
                        if(!(_loc5_ && this))
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(-§§pop());
                              if(!_loc5_)
                              {
                                 §§pop().x = §§pop();
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    addr106:
                                    this.col1.y = _loc3_;
                                    addr96:
                                    if(_loc4_)
                                    {
                                       addr112:
                                       this.col2.y = _loc2_;
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr96);
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr68);
         }
         §§goto(addr29);
      }
      
      public function §_-T3§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.col1.SetV(param1);
            if(_loc3_)
            {
               this.col2.SetV(param2);
            }
         }
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(_loc2_)
         {
            _loc1_.§_-AH§(this);
         }
         return _loc1_;
      }
      
      public function §_-AH§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.col1.SetV(param1.col1);
            if(_loc2_)
            {
               this.col2.SetV(param1.col2);
            }
         }
      }
      
      public function get(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.col1);
            if(_loc3_)
            {
               §§push(this.col1);
               if(_loc3_)
               {
                  §§push(§§pop().x);
                  if(_loc3_)
                  {
                     §§push(param1.col1);
                     if(!_loc2_)
                     {
                        §§push(§§pop().x);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc3_)
                           {
                              addr47:
                              §§pop().x = §§pop();
                              if(!_loc2_)
                              {
                                 addr54:
                                 §§push(this.col1);
                                 §§push(this.col1.y);
                                 if(_loc3_)
                                 {
                                    addr61:
                                    §§pop().y = §§pop() + param1.col1.y;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr76:
                                       §§push(this.col2);
                                       if(_loc3_ || this)
                                       {
                                          §§push(this.col2);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§push(param1.col2);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc2_ && this))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(!_loc2_)
                                                         {
                                                            addr143:
                                                            addr124:
                                                            addr122:
                                                            addr120:
                                                            §§push(this.col2);
                                                            §§push(this.col2.y);
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               addr141:
                                                               §§push(param1.col2.y);
                                                            }
                                                            §§pop().y = §§pop();
                                                            §§goto(addr144);
                                                         }
                                                         addr144:
                                                         return;
                                                      }
                                                   }
                                                   §§goto(addr143);
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr141);
                                             }
                                             §§goto(addr143);
                                          }
                                          §§goto(addr124);
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr61);
                              }
                              §§goto(addr76);
                           }
                        }
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr47);
               }
            }
            §§goto(addr54);
         }
         §§goto(addr143);
      }
      
      public function §_-Xx§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.col1);
            if(!_loc1_)
            {
               §§pop().x = 1;
               if(!_loc1_)
               {
                  §§push(this.col2);
                  if(_loc2_)
                  {
                     §§pop().x = 0;
                     if(_loc2_)
                     {
                        addr46:
                        this.col1.y = 0;
                     }
                     §§goto(addr66);
                  }
                  §§pop().y = 1;
                  addr66:
                  if(!(_loc1_ && _loc2_))
                  {
                     addr62:
                     §§push(this.col2);
                  }
                  return;
               }
               §§goto(addr62);
            }
         }
         §§goto(addr46);
      }
      
      public function §_-0a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.col1);
            if(_loc1_ || this)
            {
               §§push(0);
               if(_loc1_)
               {
                  §§pop().x = §§pop();
                  if(!_loc2_)
                  {
                     §§push(this.col2);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(0);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop().x = §§pop();
                           if(_loc1_)
                           {
                              addr60:
                              this.col1.y = 0;
                           }
                           §§goto(addr79);
                        }
                        §§pop().y = §§pop();
                        §§goto(addr79);
                     }
                     §§goto(addr77);
                  }
                  addr79:
                  if(!(_loc2_ && _loc2_))
                  {
                     addr77:
                     §§push(this.col2);
                     §§push(0);
                  }
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §_-uq§(param1:b2Mat22) : b2Mat22
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
         if(_loc7_ || this)
         {
            §§push(this.col2.x);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  _loc3_ = §§pop();
                  addr40:
                  §§push(this.col1.y);
                  if(!_loc8_)
                  {
                     addr45:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               §§push(this.col2.y);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc7_)
               {
                  §§push(_loc2_);
                  §§push(_loc5_);
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop() * §§pop());
                     §§push(_loc3_);
                     if(_loc7_)
                     {
                        addr69:
                        §§push(§§pop() * _loc4_);
                        if(_loc7_)
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc7_ || this)
                           {
                              §§push(Number(§§pop()));
                              §§push(Number(§§pop()));
                              if(!_loc8_)
                              {
                                 addr85:
                                 _loc6_ = §§pop();
                                 if(_loc7_)
                                 {
                                    addr89:
                                    if(§§pop() != 0)
                                    {
                                       addr101:
                                       _loc6_ = Number(1 / _loc6_);
                                       if(_loc7_ || _loc3_)
                                       {
                                          addr109:
                                          §§push(param1.col1);
                                          if(!_loc8_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc7_ || this)
                                             {
                                                §§push(_loc5_);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc7_)
                                                   {
                                                      §§pop().x = §§pop();
                                                      if(_loc7_ || this)
                                                      {
                                                         §§push(param1.col2);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc7_)
                                                            {
                                                               §§push(-§§pop());
                                                               if(_loc7_ || _loc2_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        addr164:
                                                                        §§push(param1.col1);
                                                                        §§push(_loc6_);
                                                                        if(_loc7_)
                                                                        {
                                                                           addr167:
                                                                           §§push(-§§pop());
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              addr175:
                                                                              §§push(§§pop() * _loc4_);
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           addr187:
                                                                           §§push(param1.col2);
                                                                           §§push(_loc6_);
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr191:
                                                                              §§push(§§pop() * _loc2_);
                                                                           }
                                                                        }
                                                                        §§goto(addr175);
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     return param1;
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                            }
                                                            §§goto(addr191);
                                                         }
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                }
                                                §§goto(addr175);
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr109);
                                 }
                                 §§goto(addr101);
                              }
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr69);
               }
               §§goto(addr164);
            }
            §§goto(addr45);
         }
         §§goto(addr40);
      }
      
      public function §_-B-§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
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
         if(!(_loc10_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(this.col1.y);
         if(_loc9_)
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
         if(_loc9_ || param1)
         {
            §§push(_loc7_);
            if(!_loc10_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc10_)
               {
                  addr60:
                  §§push(_loc5_);
                  if(!(_loc10_ && param3))
                  {
                     §§push(§§pop() * _loc6_);
                     if(!_loc10_)
                     {
                        addr72:
                        §§push(§§pop() - §§pop());
                        if(!(_loc10_ && param2))
                        {
                           addr81:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr81);
                     }
                     var _loc8_:* = §§pop();
                     if(!_loc10_)
                     {
                        if(§§pop() != 0)
                        {
                           if(_loc9_ || param2)
                           {
                              §§push(1 / _loc8_);
                              if(_loc9_ || this)
                              {
                                 addr112:
                                 _loc8_ = Number(§§pop());
                                 if(!_loc10_)
                                 {
                                    §§goto(addr115);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr112);
                           }
                        }
                        addr115:
                        §§push(param1);
                        §§push(_loc8_);
                        if(!_loc10_)
                        {
                           §§push(_loc7_);
                           if(!(_loc10_ && this))
                           {
                              §§push(param2);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc10_)
                                 {
                                    addr133:
                                    §§push(_loc5_);
                                    if(!(_loc10_ && param3))
                                    {
                                       addr143:
                                       §§push(§§pop() - §§pop() * param3);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr133);
                        }
                        addr145:
                        §§pop().x = §§pop() * §§pop();
                        if(_loc9_ || param1)
                        {
                           addr153:
                           §§push(param1);
                           §§push(_loc8_);
                           if(_loc9_)
                           {
                              §§push(_loc4_);
                              if(_loc9_ || param1)
                              {
                                 §§push(param3);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc9_)
                                    {
                                       addr178:
                                       §§push(_loc6_);
                                       if(_loc9_)
                                       {
                                          addr183:
                                          §§push(§§pop() - §§pop() * param2);
                                       }
                                       §§goto(addr183);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr185);
                        }
                        addr185:
                        §§pop().y = §§pop() * §§pop();
                        return param1;
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr72);
               }
               §§goto(addr81);
            }
            §§goto(addr72);
         }
         §§goto(addr60);
      }
      
      public function §_-xY§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.col1.§_-xY§();
            if(_loc1_)
            {
               this.col2.§_-xY§();
            }
         }
      }
   }
}
