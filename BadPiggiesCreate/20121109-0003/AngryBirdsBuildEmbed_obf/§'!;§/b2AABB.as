package §'!;§
{
   import §<!B§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var § !d§:b2Vec2;
      
      public var §=!j§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§ !d§ = new b2Vec2();
            if(!(_loc1_ && _loc1_))
            {
               addr45:
               this.§=!j§ = new b2Vec2();
               if(!_loc1_)
               {
                  super();
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public static function §^!C§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2AABB = new b2AABB();
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.§^!C§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §@Y§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§=!j§.x);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() - this.§ !d§.x);
            if(_loc5_ || this)
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(this.§=!j§.y);
            if(_loc5_)
            {
               §§push(§§pop() - this.§ !d§.y);
               if(!(_loc4_ && this))
               {
                  addr56:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc4_)
               {
                  §§push(_loc1_);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(§§pop() >= §§pop());
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 addr93:
                                 §§pop();
                                 §§push(_loc2_ >= 0);
                                 if(!_loc4_)
                                 {
                                    addr99:
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              var _loc3_:* = §§pop();
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc4_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                addr125:
                                                §§pop();
                                                if(!_loc4_)
                                                {
                                                   §§push(this.§ !d§.§@Y§());
                                                   if(!_loc4_)
                                                   {
                                                      addr133:
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         addr141:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc4_ && _loc1_))
                                                            {
                                                               addr160:
                                                               §§pop();
                                                               if(_loc5_)
                                                               {
                                                                  addr163:
                                                                  §§push(this.§=!j§.§@Y§());
                                                                  if(_loc5_)
                                                                  {
                                                                     addr168:
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr171:
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc5_ || _loc1_)
                                                                        {
                                                                        }
                                                                        §§goto(addr181);
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                     addr180:
                                                                     §§push(_loc3_);
                                                                  }
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                            addr181:
                                                            return §§pop();
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr168);
                                                   }
                                                   §§goto(addr160);
                                                }
                                                §§goto(addr163);
                                             }
                                          }
                                       }
                                       §§goto(addr141);
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr99);
                        }
                     }
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr56);
         }
         §§goto(addr38);
      }
      
      public function §9Y§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§ !d§.x);
         if(_loc1_)
         {
            §§push(this.§=!j§.x);
            if(!_loc2_)
            {
               §§push(§§pop() + §§pop());
               if(!(_loc2_ && _loc2_))
               {
                  addr57:
                  §§push(§§pop() / 2);
                  §§push(this.§ !d§.y);
                  if(!_loc2_)
                  {
                     §§goto(addr62);
                  }
                  §§goto(addr68);
               }
               §§goto(addr57);
            }
            addr62:
            §§push(§§pop() + this.§=!j§.y);
            if(!_loc2_)
            {
               addr68:
               §§push(§§pop() / 2);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr57);
      }
      
      public function §]b§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§=!j§.x);
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§ !d§.x);
            if(_loc1_)
            {
               §§push(§§pop() - §§pop());
               if(!_loc2_)
               {
                  addr55:
                  §§push(§§pop() / 2);
               }
               §§push(this.§=!j§.y);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() - this.§ !d§.y);
                  if(!_loc2_)
                  {
                     addr73:
                     §§push(§§pop() / 2);
                  }
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
            §§goto(addr73);
         }
         §§goto(addr55);
      }
      
      public function §'!q§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Boolean = true;
         §§push(Boolean(_loc2_));
         if(!_loc3_)
         {
            §§push(§§pop());
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§pop();
                     §§push(this.§ !d§);
                     if(_loc4_)
                     {
                        §§push(§§pop().x);
                        if(!_loc3_)
                        {
                           §§push(param1.§ !d§);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop().x);
                              if(_loc4_ || this)
                              {
                                 §§push(§§pop() <= §§pop());
                                 if(!_loc3_)
                                 {
                                    addr57:
                                    _loc2_ = §§pop();
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(_loc2_);
                                       if(_loc4_ || param1)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(§§pop());
                                             if(_loc4_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§pop();
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         addr108:
                                                         §§push(this.§ !d§.y);
                                                         if(_loc4_)
                                                         {
                                                            addr113:
                                                            §§push(param1.§ !d§.y);
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                               if(_loc4_ || param1)
                                                               {
                                                                  addr124:
                                                                  _loc2_ = §§pop();
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     §§push(Boolean(_loc2_));
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr140:
                                                                           if(§§pop())
                                                                           {
                                                                              addr141:
                                                                              §§pop();
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr144:
                                                                                 §§push(param1.§=!j§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       addr156:
                                                                                       §§push(this.§=!j§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             addr178:
                                                                                             §§push(§§pop() <= §§pop());
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr181:
                                                                                                _loc2_ = §§pop();
                                                                                                addr205:
                                                                                                §§push(_loc2_);
                                                                                                if(!(_loc3_ && param1))
                                                                                                {
                                                                                                   addr191:
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr194:
                                                                                                      §§push(§§pop() && param1.§=!j§.y <= this.§=!j§.y);
                                                                                                   }
                                                                                                }
                                                                                                return Boolean(§§pop());
                                                                                                addr206:
                                                                                             }
                                                                                             §§goto(addr194);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr203);
                                                                              }
                                                                              §§goto(addr206);
                                                                           }
                                                                           §§goto(addr181);
                                                                        }
                                                                        §§goto(addr194);
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr156);
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr124);
                                             }
                                             §§goto(addr140);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr141);
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr196);
               }
               §§goto(addr57);
            }
            §§goto(addr194);
         }
         §§goto(addr205);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         §§push(-Number.MAX_VALUE);
         if(_loc17_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(param2.p1.x);
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.p1.y);
         if(!(_loc18_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(_loc17_)
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc17_ || this)
            {
               addr80:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(param2.p2.y);
            if(!(_loc18_ && param2))
            {
               §§push(§§pop() - param2.p1.y);
               if(!(_loc18_ && param2))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            var _loc9_:Number = Math.abs(_loc7_);
            var _loc10_:Number = Math.abs(_loc8_);
            _loc11_ = param1.normal;
            if(_loc17_ || this)
            {
               §§push(_loc9_);
               if(!_loc18_)
               {
                  if(§§pop() < Number.MIN_VALUE)
                  {
                     if(!(_loc18_ && param2))
                     {
                        §§push(_loc5_);
                        if(!(_loc18_ && param1))
                        {
                           §§push(this.§ !d§);
                           if(_loc17_ || _loc3_)
                           {
                              §§push(§§pop().x);
                              if(_loc17_)
                              {
                                 §§push(§§pop() < §§pop());
                                 §§push(§§pop() < §§pop());
                                 if(!(_loc18_ && this))
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc17_)
                                       {
                                          §§pop();
                                          if(!_loc18_)
                                          {
                                             §§push(this.§=!j§);
                                             if(_loc17_)
                                             {
                                                addr181:
                                                if(§§pop().x < _loc5_)
                                                {
                                                   return false;
                                                }
                                                addr396:
                                                §§push(_loc10_);
                                                if(_loc17_)
                                                {
                                                   if(§§pop() < Number.MIN_VALUE)
                                                   {
                                                      §§goto(addr408);
                                                   }
                                                   else
                                                   {
                                                      §§push(1);
                                                      if(_loc17_ || param1)
                                                      {
                                                         addr458:
                                                         §§push(§§pop() / _loc8_);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc18_ && param1))
                                                            {
                                                               addr469:
                                                               _loc12_ = §§pop();
                                                               if(!(_loc18_ && this))
                                                               {
                                                                  addr479:
                                                                  §§push(this.§ !d§.y);
                                                                  if(_loc17_ || this)
                                                                  {
                                                                     addr488:
                                                                     §§push(§§pop() - _loc6_);
                                                                     if(_loc17_ || this)
                                                                     {
                                                                        addr496:
                                                                        §§push(§§pop() * _loc12_);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc18_)
                                                                           {
                                                                              addr503:
                                                                              _loc13_ = §§pop();
                                                                              addr504:
                                                                              §§goto(addr506);
                                                                              §§push(this.§=!j§);
                                                                           }
                                                                           §§goto(addr526);
                                                                        }
                                                                        §§goto(addr548);
                                                                     }
                                                                     §§goto(addr514);
                                                                  }
                                                                  §§goto(addr538);
                                                               }
                                                               §§goto(addr526);
                                                            }
                                                            §§goto(addr572);
                                                         }
                                                         §§goto(addr469);
                                                      }
                                                   }
                                                   §§goto(addr535);
                                                }
                                                §§goto(addr548);
                                             }
                                             §§goto(addr426);
                                          }
                                          §§goto(addr581);
                                       }
                                       §§goto(addr416);
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr408);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr408);
                        }
                        §§goto(addr545);
                     }
                     §§goto(addr636);
                  }
                  else
                  {
                     §§push(1);
                     if(_loc17_)
                     {
                        §§push(_loc7_);
                        if(!(_loc18_ && param2))
                        {
                           §§push(Number(§§pop() / §§pop()));
                           if(_loc17_ || param2)
                           {
                              _loc12_ = §§pop();
                              if(_loc17_)
                              {
                                 §§push(this.§ !d§);
                                 if(!_loc18_)
                                 {
                                    §§push(§§pop().x);
                                    §§push(_loc5_);
                                    if(_loc17_ || param2)
                                    {
                                       §§push(§§pop() - §§pop());
                                       §§push(_loc12_);
                                       if(_loc17_)
                                       {
                                          _loc13_ = Number(§§pop() * §§pop());
                                          if(_loc17_)
                                          {
                                             §§push(this.§=!j§);
                                             if(_loc17_)
                                             {
                                                §§push(§§pop().x);
                                                §§push(_loc5_);
                                                if(!(_loc18_ && this))
                                                {
                                                   §§push((§§pop() - §§pop()) * _loc12_);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!_loc18_)
                                                      {
                                                         _loc14_ = §§pop();
                                                         addr252:
                                                         §§push(-1);
                                                         if(_loc17_ || _loc3_)
                                                         {
                                                            addr260:
                                                            _loc16_ = §§pop();
                                                            addr263:
                                                            §§push(_loc13_);
                                                            §§push(_loc14_);
                                                            if(_loc17_)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(_loc17_ || _loc3_)
                                                                  {
                                                                     _loc15_ = Number(_loc13_);
                                                                     if(_loc17_ || _loc3_)
                                                                     {
                                                                        §§push(_loc14_);
                                                                        if(_loc17_ || _loc3_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc18_ && _loc3_))
                                                                           {
                                                                              _loc13_ = §§pop();
                                                                              addr301:
                                                                              §§push(_loc15_);
                                                                              if(_loc17_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc17_ || param1)
                                                                                 {
                                                                                    _loc14_ = §§pop();
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(!(_loc18_ && _loc3_))
                                                                                       {
                                                                                          _loc16_ = §§pop();
                                                                                          addr335:
                                                                                          §§push(_loc13_);
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             if(§§pop() > _loc3_)
                                                                                             {
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   _loc11_.x = _loc16_;
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      _loc11_.y = 0;
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         if(!(_loc18_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc18_ && this))
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               addr369:
                                                                                                               §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                               if(_loc17_ || _loc3_)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  addr384:
                                                                                                                  if(_loc3_ > _loc4_)
                                                                                                                  {
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        addr387:
                                                                                                                        §§push(false);
                                                                                                                        if(!(_loc18_ && this))
                                                                                                                        {
                                                                                                                           return §§pop();
                                                                                                                        }
                                                                                                                        §§goto(addr416);
                                                                                                                     }
                                                                                                                     §§goto(addr632);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr396);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr526);
                                                                                                            }
                                                                                                            §§goto(addr523);
                                                                                                         }
                                                                                                         §§goto(addr496);
                                                                                                      }
                                                                                                      §§goto(addr416);
                                                                                                   }
                                                                                                   §§goto(addr504);
                                                                                                }
                                                                                                §§goto(addr387);
                                                                                             }
                                                                                             §§goto(addr369);
                                                                                          }
                                                                                          §§goto(addr560);
                                                                                       }
                                                                                       §§goto(addr535);
                                                                                    }
                                                                                    §§goto(addr591);
                                                                                 }
                                                                                 §§goto(addr496);
                                                                              }
                                                                              §§goto(addr535);
                                                                           }
                                                                           §§goto(addr525);
                                                                        }
                                                                        addr408:
                                                                        §§push(_loc6_ < this.§ !d§.y);
                                                                        if(!(_loc6_ < this.§ !d§.y))
                                                                        {
                                                                           if(!(_loc18_ && _loc3_))
                                                                           {
                                                                              addr416:
                                                                              §§pop();
                                                                              §§push(this.§=!j§);
                                                                              if(_loc17_ || _loc3_)
                                                                              {
                                                                                 addr426:
                                                                                 §§push(§§pop().y);
                                                                                 §§push(_loc6_);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§goto(addr431);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr580:
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       addr581:
                                                                                       _loc11_.y = _loc16_;
                                                                                       if(!(_loc18_ && _loc3_))
                                                                                       {
                                                                                          addr591:
                                                                                          _loc11_.x = 0;
                                                                                          §§push(_loc13_);
                                                                                          if(_loc17_ || this)
                                                                                          {
                                                                                             addr612:
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!(_loc18_ && param1))
                                                                                             {
                                                                                                addr620:
                                                                                                _loc3_ = §§pop();
                                                                                                addr621:
                                                                                                §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                }
                                                                                                addr630:
                                                                                                if(§§pop() > _loc4_)
                                                                                                {
                                                                                                   addr632:
                                                                                                   return false;
                                                                                                }
                                                                                                §§goto(addr636);
                                                                                             }
                                                                                             addr628:
                                                                                             _loc4_ = §§pop();
                                                                                             addr629:
                                                                                             §§push(_loc3_);
                                                                                          }
                                                                                          §§goto(addr630);
                                                                                       }
                                                                                       §§goto(addr629);
                                                                                    }
                                                                                    §§goto(addr621);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr506:
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc17_ || param2)
                                                                                 {
                                                                                    addr514:
                                                                                    §§push(_loc6_);
                                                                                    if(!(_loc18_ && param1))
                                                                                    {
                                                                                       addr526:
                                                                                       _loc14_ = Number((§§pop() - §§pop()) * _loc12_);
                                                                                       §§push(-1);
                                                                                       if(!(_loc18_ && param2))
                                                                                       {
                                                                                          addr535:
                                                                                          _loc16_ = §§pop();
                                                                                          addr538:
                                                                                          §§push(_loc13_);
                                                                                          §§push(_loc14_);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                §§push(_loc13_);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   addr545:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      addr548:
                                                                                                      _loc15_ = §§pop();
                                                                                                      §§push(Number(_loc14_));
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         _loc13_ = §§pop();
                                                                                                         §§push(_loc15_);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            addr557:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               addr560:
                                                                                                               _loc14_ = §§pop();
                                                                                                               addr562:
                                                                                                               _loc16_ = 1;
                                                                                                               addr564:
                                                                                                               §§push(_loc13_);
                                                                                                               if(!(_loc18_ && param2))
                                                                                                               {
                                                                                                                  addr572:
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(!(_loc18_ && this))
                                                                                                                  {
                                                                                                                     §§goto(addr580);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr621);
                                                                                                            }
                                                                                                            §§goto(addr612);
                                                                                                         }
                                                                                                         §§goto(addr572);
                                                                                                      }
                                                                                                      §§goto(addr557);
                                                                                                   }
                                                                                                   §§goto(addr621);
                                                                                                }
                                                                                                §§goto(addr628);
                                                                                             }
                                                                                             §§goto(addr564);
                                                                                          }
                                                                                          §§goto(addr621);
                                                                                       }
                                                                                       §§goto(addr562);
                                                                                       addr523:
                                                                                       addr525:
                                                                                       addr524:
                                                                                    }
                                                                                    §§goto(addr621);
                                                                                 }
                                                                              }
                                                                              §§goto(addr620);
                                                                           }
                                                                           §§goto(addr440);
                                                                        }
                                                                        addr431:
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           §§push(false);
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              addr440:
                                                                              return §§pop();
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr636:
                                                                           param1.fraction = _loc3_;
                                                                           §§push(true);
                                                                        }
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr636);
                                                                  }
                                                                  §§goto(addr301);
                                                               }
                                                               §§goto(addr335);
                                                            }
                                                            §§goto(addr580);
                                                         }
                                                         §§goto(addr560);
                                                      }
                                                      §§goto(addr548);
                                                   }
                                                   §§goto(addr612);
                                                }
                                                §§goto(addr488);
                                             }
                                             §§goto(addr506);
                                          }
                                          §§goto(addr416);
                                       }
                                       §§goto(addr384);
                                    }
                                    §§goto(addr524);
                                 }
                                 §§goto(addr479);
                              }
                              §§goto(addr252);
                           }
                           §§goto(addr263);
                        }
                        §§goto(addr458);
                     }
                     §§goto(addr260);
                  }
               }
               §§goto(addr503);
            }
            §§goto(addr387);
         }
         §§goto(addr80);
      }
      
      public function §,!r§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1.§ !d§.x);
         if(!_loc6_)
         {
            §§push(§§pop() - this.§=!j§.x);
            if(_loc7_ || _loc2_)
            {
               addr33:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(param1.§ !d§.y);
            if(_loc7_ || _loc2_)
            {
               §§push(§§pop() - this.§=!j§.y);
               if(!(_loc6_ && this))
               {
                  addr56:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(this.§ !d§.x);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() - param1.§=!j§.x);
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               §§push(this.§ !d§.y);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() - param1.§=!j§.y);
                  if(!_loc6_)
                  {
                     addr102:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(_loc2_);
                  if(_loc7_)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        §§push(§§pop() > §§pop());
                        §§push(§§pop() > §§pop());
                        if(_loc7_ || _loc2_)
                        {
                           if(!§§pop())
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 §§pop();
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(_loc3_);
                                    if(_loc7_ || _loc2_)
                                    {
                                       addr143:
                                       §§push(0);
                                       if(_loc7_)
                                       {
                                          addr147:
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc7_)
                                             {
                                                return false;
                                             }
                                             addr187:
                                             §§push(false);
                                             if(_loc7_ || param1)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr197);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             if(_loc7_)
                                             {
                                                §§push(0);
                                                if(!_loc7_)
                                                {
                                                }
                                                §§goto(addr185);
                                             }
                                             addr184:
                                             addr185:
                                             if(§§pop() > §§pop())
                                             {
                                                §§goto(addr187);
                                             }
                                             else
                                             {
                                                §§push(true);
                                             }
                                             addr197:
                                             return §§pop();
                                             §§push(0);
                                          }
                                          §§goto(addr187);
                                       }
                                       addr176:
                                       §§push(§§pop() > §§pop());
                                       if(!(§§pop() > §§pop()))
                                       {
                                          if(!_loc6_)
                                          {
                                             §§pop();
                                             if(_loc7_)
                                             {
                                                §§goto(addr184);
                                                §§push(_loc5_);
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr185);
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr143);
               }
               §§goto(addr102);
            }
            §§goto(addr56);
         }
         §§goto(addr33);
      }
      
      public function §^!C§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§ !d§);
            if(_loc4_ || param2)
            {
               §§pop().x = Math.min(param1.§ !d§.x,param2.§ !d§.x);
               if(!(_loc3_ && param2))
               {
                  addr61:
                  this.§ !d§.y = Math.min(param1.§ !d§.y,param2.§ !d§.y);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(this.§=!j§);
                     if(_loc4_ || this)
                     {
                        §§pop().x = Math.max(param1.§=!j§.x,param2.§=!j§.x);
                        §§goto(addr118);
                     }
                     §§pop().y = Math.max(param1.§=!j§.y,param2.§=!j§.y);
                     §§goto(addr118);
                  }
               }
               §§goto(addr107);
            }
            §§goto(addr61);
         }
         addr118:
         if(!_loc3_)
         {
            addr107:
            §§push(this.§=!j§);
         }
      }
   }
}
