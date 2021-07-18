package §<!B§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.col1 = new b2Vec2();
            if(!(_loc3_ && _loc2_))
            {
               this.col2 = new b2Vec2();
               if(!_loc3_)
               {
                  addr55:
                  super();
                  if(_loc3_ && _loc1_)
                  {
                  }
                  §§goto(addr75);
               }
               this.col1.x = this.col2.y = 1;
               addr75:
               return;
            }
         }
         §§goto(addr55);
      }
      
      public static function §"!S§(param1:Number) : b2Mat22
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
      
      public static function §'!^§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Mat22 = new b2Mat22();
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.§"_§(param1,param2);
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
            if(_loc5_)
            {
               _loc2_ = §§pop();
               addr33:
               §§push(Number(Math.sin(param1)));
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && _loc2_))
            {
               §§push(this.col1);
               if(_loc5_ || _loc3_)
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§pop().x = §§pop();
                     if(_loc5_ || this)
                     {
                        §§push(this.col2);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              §§push(-§§pop());
                              if(!_loc4_)
                              {
                                 addr95:
                                 §§pop().x = §§pop();
                                 if(!_loc4_)
                                 {
                                    addr101:
                                    this.col1.y = _loc3_;
                                 }
                                 §§goto(addr113);
                              }
                              §§pop().y = §§pop();
                              §§goto(addr113);
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr111);
                     }
                     addr113:
                     if(!(_loc4_ && _loc2_))
                     {
                        addr111:
                        §§push(this.col2);
                        §§push(_loc2_);
                     }
                     return;
                  }
               }
            }
            §§goto(addr101);
         }
         §§goto(addr33);
      }
      
      public function §"_§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.col1.SetV(param1);
            if(!(_loc4_ && param2))
            {
               addr44:
               this.col2.SetV(param2);
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function Copy() : b2Mat22
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Mat22 = new b2Mat22();
         if(_loc2_)
         {
            _loc1_.§-4§(this);
         }
         return _loc1_;
      }
      
      public function §-4§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.col1.SetV(param1.col1);
            if(_loc2_ || param1)
            {
               this.col2.SetV(param1.col2);
            }
         }
      }
      
      public function §>!Q§(param1:b2Mat22) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.col1);
            if(_loc2_ || param1)
            {
               §§push(this.col1);
               if(!_loc3_)
               {
                  §§push(§§pop().x);
                  if(_loc2_)
                  {
                     §§push(param1.col1);
                     if(_loc2_)
                     {
                        §§push(§§pop().x);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              §§pop().x = §§pop();
                              if(!_loc3_)
                              {
                                 addr61:
                                 §§push(this.col1);
                                 §§push(this.col1.y);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr83:
                                    §§pop().y = §§pop() + param1.col1.y;
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(this.col2);
                                       if(_loc2_)
                                       {
                                          §§push(this.col2);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(param1.col2);
                                                if(_loc2_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc2_ || this)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(!(_loc3_ && this))
                                                         {
                                                            addr161:
                                                            addr149:
                                                            addr147:
                                                            addr145:
                                                            §§push(this.col2);
                                                            §§push(this.col2.y);
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               addr159:
                                                               §§push(param1.col2.y);
                                                            }
                                                            §§pop().y = §§pop();
                                                            §§goto(addr162);
                                                         }
                                                         addr162:
                                                         return;
                                                      }
                                                   }
                                                   §§goto(addr161);
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr149);
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr83);
                              }
                              §§goto(addr161);
                           }
                        }
                     }
                  }
                  §§goto(addr83);
               }
            }
            §§goto(addr61);
         }
         §§goto(addr161);
      }
      
      public function §5!I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.col1);
            if(_loc1_)
            {
               §§pop().x = 1;
               if(!(_loc2_ && this))
               {
                  §§push(this.col2);
                  if(!(_loc2_ && this))
                  {
                     §§pop().x = 0;
                     if(_loc1_ || _loc2_)
                     {
                        addr71:
                        this.col1.y = 0;
                     }
                     §§goto(addr84);
                  }
                  §§pop().y = 1;
                  addr84:
                  if(!(_loc2_ && _loc1_))
                  {
                     addr80:
                     §§push(this.col2);
                  }
                  return;
               }
               §§goto(addr80);
            }
         }
         §§goto(addr71);
      }
      
      public function §22§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.col1);
            if(_loc2_ || this)
            {
               §§push(0);
               if(_loc2_ || _loc1_)
               {
                  §§pop().x = §§pop();
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.col2);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(0);
                        if(!_loc1_)
                        {
                           §§pop().x = §§pop();
                           if(_loc2_ || _loc1_)
                           {
                              addr92:
                              this.col1.y = 0;
                           }
                           §§goto(addr104);
                        }
                        §§pop().y = §§pop();
                        §§goto(addr104);
                     }
                     §§goto(addr102);
                  }
                  addr104:
                  if(!(_loc1_ && _loc2_))
                  {
                     addr102:
                     §§push(this.col2);
                     §§push(0);
                  }
                  return;
               }
            }
         }
         §§goto(addr92);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §?!U§(param1:b2Mat22) : b2Mat22
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc6_:* = NaN;
         §§push(this.col1.x);
         if(!(_loc7_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_ || this)
         {
            §§push(this.col2.x);
            if(!(_loc7_ && param1))
            {
               §§push(Number(§§pop()));
               if(_loc8_ || param1)
               {
                  addr58:
                  _loc3_ = §§pop();
                  §§push(this.col1.y);
                  if(!_loc7_)
                  {
                     addr64:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(this.col2.y);
                  if(_loc8_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(_loc2_);
                  §§push(_loc5_);
                  if(_loc8_ || param1)
                  {
                     §§push(§§pop() * §§pop());
                     §§push(_loc3_);
                     if(_loc8_ || param1)
                     {
                        §§push(§§pop() * _loc4_);
                        if(!_loc7_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                              §§push(Number(§§pop()));
                              if(_loc8_ || this)
                              {
                                 addr122:
                                 _loc6_ = §§pop();
                                 addr124:
                                 if(§§pop() != 0)
                                 {
                                    §§push(1 / _loc6_);
                                    if(_loc8_ || _loc3_)
                                    {
                                       addr136:
                                       _loc6_ = Number(§§pop());
                                       if(_loc8_ || this)
                                       {
                                          addr144:
                                          §§push(param1.col1);
                                          if(_loc8_ || _loc2_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc8_ || this)
                                             {
                                                §§push(_loc5_);
                                                if(_loc8_ || _loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§pop().x = §§pop();
                                                      §§push(param1.col2);
                                                      if(_loc8_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc8_ || this)
                                                         {
                                                            §§push(-§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc8_)
                                                                  {
                                                                     §§goto(addr199);
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            §§goto(addr247);
                                                         }
                                                         addr199:
                                                         §§pop().x = §§pop();
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            addr209:
                                                            §§push(param1.col1);
                                                            §§push(_loc6_);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(-§§pop());
                                                               if(_loc8_ || this)
                                                               {
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                            addr232:
                                                            §§pop().y = §§pop() * _loc4_;
                                                            if(_loc8_)
                                                            {
                                                               addr247:
                                                               addr237:
                                                               §§push(param1.col2);
                                                               §§push(_loc6_);
                                                               if(_loc8_ || this)
                                                               {
                                                                  §§push(_loc2_);
                                                               }
                                                               §§pop().y = §§pop();
                                                            }
                                                            §§goto(addr248);
                                                         }
                                                         addr248:
                                                         return param1;
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                }
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr136);
                        }
                     }
                  }
                  §§goto(addr122);
               }
               §§goto(addr64);
            }
         }
         §§goto(addr58);
      }
      
      public function static(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
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
         if(_loc10_ || param3)
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
         if(_loc10_ || param3)
         {
            §§push(_loc7_);
            if(!_loc9_)
            {
               §§push(§§pop() * §§pop());
               if(_loc10_ || param2)
               {
                  §§push(_loc5_);
                  if(_loc10_ || this)
                  {
                     §§push(§§pop() * _loc6_);
                     if(!_loc10_)
                     {
                     }
                     addr101:
                     var _loc8_:* = §§pop();
                     if(!_loc9_)
                     {
                        if(§§pop() != 0)
                        {
                           if(!_loc9_)
                           {
                              §§push(1 / _loc8_);
                              if(!_loc9_)
                              {
                                 addr113:
                                 §§push(Number(§§pop()));
                              }
                              _loc8_ = §§pop();
                              if(_loc10_)
                              {
                                 §§goto(addr117);
                              }
                           }
                           §§goto(addr170);
                        }
                        addr117:
                        §§push(param1);
                        §§push(_loc8_);
                        if(!(_loc9_ && param1))
                        {
                           §§push(_loc7_);
                           if(!(_loc9_ && param3))
                           {
                              §§push(param2);
                              if(_loc10_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc9_ && param3))
                                 {
                                    addr145:
                                    §§push(_loc5_);
                                    if(_loc10_)
                                    {
                                       addr150:
                                       §§push(§§pop() - §§pop() * param3);
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr145);
                        }
                        addr152:
                        §§pop().x = §§pop() * §§pop();
                        if(_loc10_ || param2)
                        {
                           addr170:
                           §§push(param1);
                           §§push(_loc8_);
                           if(!_loc9_)
                           {
                              §§push(_loc4_);
                              if(_loc10_)
                              {
                                 §§push(param3);
                                 if(!_loc9_)
                                 {
                                    §§goto(addr195);
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr195);
                        }
                        addr195:
                        §§push(§§pop() * §§pop());
                        if(_loc10_ || param1)
                        {
                           addr188:
                           §§push(_loc6_);
                           if(_loc10_)
                           {
                              addr191:
                              §§push(§§pop() * param2);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().y = §§pop() * §§pop();
                        return param1;
                     }
                     §§goto(addr113);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc9_ && param1))
                  {
                     addr99:
                     §§push(Number(§§pop()));
                  }
                  §§push(§§pop());
               }
               §§goto(addr99);
            }
            §§goto(addr101);
         }
         §§goto(addr99);
      }
      
      public function §?!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.col1.§?!3§();
            if(_loc1_ || _loc2_)
            {
               this.col2.§?!3§();
            }
         }
      }
   }
}
