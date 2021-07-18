package §_-qg§
{
   import §_-Ja§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §_-N-§:b2Vec2;
      
      public var §_-TE§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-N-§ = new b2Vec2();
            if(!_loc2_)
            {
               this.§_-TE§ = new b2Vec2();
               if(_loc1_ || _loc1_)
               {
                  addr51:
                  super();
               }
               return;
            }
         }
         §§goto(addr51);
      }
      
      public static function §_-ot§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2AABB = new b2AABB();
         if(!_loc5_)
         {
            _loc3_.§_-ot§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §_-yU§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§_-TE§.x);
         if(!_loc4_)
         {
            §§push(§§pop() - this.§_-N-§.x);
            if(!(_loc4_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(this.§_-TE§.y);
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop() - this.§_-N-§.y);
            if(!(_loc4_ && _loc3_))
            {
               addr53:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               §§push(_loc1_);
               if(!_loc4_)
               {
                  §§push(0);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() >= §§pop());
                     if(_loc5_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              addr90:
                              addr89:
                              addr88:
                              §§push(_loc2_ >= 0);
                              if(_loc4_ && _loc1_)
                              {
                              }
                              addr99:
                              var _loc3_:* = §§pop();
                              if(_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(Boolean(§§pop()));
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             addr132:
                                             §§push(Boolean(this.§_-N-§.§_-yU§()));
                                             if(Boolean(this.§_-N-§.§_-yU§()))
                                             {
                                                §§pop();
                                                if(_loc5_ || this)
                                                {
                                                   addr149:
                                                   §§push(this.§_-TE§.§_-yU§());
                                                   if(!_loc4_)
                                                   {
                                                      addr155:
                                                      §§push(Boolean(Boolean(§§pop())));
                                                   }
                                                   return §§pop();
                                                   addr157:
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr155);
                                          }
                                          §§goto(addr149);
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                              }
                              §§goto(addr149);
                           }
                        }
                        §§push(Boolean(§§pop()));
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr90);
               }
               §§goto(addr89);
            }
            §§goto(addr88);
         }
         §§goto(addr53);
      }
      
      public function §_-aW§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§_-N-§.x);
         if(_loc1_)
         {
            §§push(this.§_-TE§.x);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + §§pop());
               if(_loc1_)
               {
                  addr39:
                  §§push(§§pop() / 2);
               }
               §§push(this.§_-N-§.y);
               if(!_loc2_)
               {
                  §§push(§§pop() + this.§_-TE§.y);
                  if(!(_loc2_ && this))
                  {
                     addr64:
                     §§push(§§pop() / 2);
                  }
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
            §§goto(addr64);
         }
         §§goto(addr39);
      }
      
      public function §_-Dr§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§_-TE§.x);
         if(!(_loc2_ && this))
         {
            §§push(this.§_-N-§.x);
            if(_loc1_ || this)
            {
               §§push(§§pop() - §§pop());
               if(_loc1_)
               {
                  addr46:
                  §§push(§§pop() / 2);
                  §§push(this.§_-TE§.y);
                  if(!_loc2_)
                  {
                     §§goto(addr58);
                  }
                  §§goto(addr64);
               }
               §§goto(addr46);
            }
            addr58:
            §§push(§§pop() - this.§_-N-§.y);
            if(_loc1_)
            {
               addr64:
               §§push(§§pop() / 2);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr46);
      }
      
      public function §_-r2§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         §§push(Boolean(_loc2_));
         §§push(Boolean(_loc2_));
         if(!(_loc3_ && _loc3_))
         {
            if(§§pop())
            {
               §§pop();
               if(_loc4_)
               {
                  §§push(this.§_-N-§);
                  if(!_loc3_)
                  {
                     §§push(§§pop().x);
                     if(!_loc3_)
                     {
                        §§push(param1.§_-N-§);
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop().x);
                           if(_loc4_ || _loc3_)
                           {
                              addr55:
                              §§push(Boolean(§§pop() <= §§pop()));
                              if(!(_loc3_ && _loc2_))
                              {
                                 _loc2_ = §§pop();
                                 §§push(_loc2_);
                                 if(!_loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop());
                                       if(_loc4_ || param1)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§pop();
                                                if(!(_loc3_ && param1))
                                                {
                                                   addr96:
                                                   §§push(this.§_-N-§.y);
                                                   if(_loc4_ || this)
                                                   {
                                                      addr113:
                                                      §§push(param1.§_-N-§.y);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         addr122:
                                                         _loc2_ = Boolean(§§pop() <= §§pop());
                                                         §§push(Boolean(_loc2_));
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc3_)
                                                            {
                                                               addr131:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     §§pop();
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(param1.§_-TE§);
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              addr159:
                                                                              §§push(this.§_-TE§);
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    addr177:
                                                                                    §§push(Boolean(§§pop() <= §§pop()));
                                                                                    if(!(_loc3_ && param1))
                                                                                    {
                                                                                       addr185:
                                                                                       _loc2_ = §§pop();
                                                                                       addr187:
                                                                                       §§push(Boolean(_loc2_));
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          addr195:
                                                                                          addr196:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§pop();
                                                                                             §§goto(addr216);
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    _loc2_ = §§pop();
                                                                                    §§goto(addr216);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr213);
                                                                     }
                                                                     §§goto(addr216);
                                                                  }
                                                                  §§goto(addr195);
                                                               }
                                                               §§goto(addr177);
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr122);
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr96);
               }
               addr216:
               if(_loc4_)
               {
                  addr213:
                  §§push(param1.§_-TE§.y <= this.§_-TE§.y);
               }
               return _loc2_;
            }
            §§goto(addr55);
         }
         §§goto(addr195);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         §§push(-Number.MAX_VALUE);
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Number.MAX_VALUE;
         §§push(param2.p1.x);
         if(_loc18_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.p1.y);
         if(_loc18_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(!(_loc17_ && param2))
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc18_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         §§push(param2.p2.y);
         if(_loc18_ || _loc3_)
         {
            §§push(§§pop() - param2.p1.y);
            if(!_loc17_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         var _loc9_:Number = Math.abs(_loc7_);
         var _loc10_:Number = Math.abs(_loc8_);
         _loc11_ = param1.normal;
         if(!(_loc17_ && param1))
         {
            if(_loc9_ < Number.MIN_VALUE)
            {
               addr128:
               §§push(_loc5_);
               §§push(this.§_-N-§);
               if(_loc18_)
               {
                  §§push(§§pop() < §§pop().x);
                  §§push(§§pop() < §§pop().x);
                  if(_loc18_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc17_ && param1))
                        {
                           §§pop();
                           §§push(this.§_-TE§);
                           if(_loc18_ || param2)
                           {
                              addr159:
                              if(§§pop().x < _loc5_)
                              {
                                 return false;
                              }
                              addr348:
                              if(_loc10_ < Number.MIN_VALUE)
                              {
                                 if(!(_loc17_ && this))
                                 {
                                    §§push(_loc6_);
                                    if(_loc18_)
                                    {
                                       addr364:
                                       §§push(§§pop() < this.§_-N-§.y);
                                       if(_loc18_)
                                       {
                                          §§goto(addr369);
                                       }
                                       §§goto(addr573);
                                    }
                                    §§goto(addr505);
                                 }
                                 §§goto(addr543);
                              }
                              else
                              {
                                 §§push(1);
                                 if(!_loc17_)
                                 {
                                    addr411:
                                    §§push(§§pop() / _loc8_);
                                    if(!_loc17_)
                                    {
                                       §§goto(addr415);
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr452);
                                 }
                                 §§goto(addr480);
                              }
                           }
                           else
                           {
                              addr217:
                              §§push(§§pop().x);
                              §§push(_loc5_);
                              if(!(_loc17_ && _loc3_))
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc18_)
                                 {
                                    §§push(_loc12_);
                                    if(_loc18_ || _loc3_)
                                    {
                                       addr237:
                                       §§push(§§pop() * §§pop());
                                       if(_loc18_)
                                       {
                                          _loc14_ = Number(§§pop());
                                          §§push(-1);
                                          if(!_loc17_)
                                          {
                                             _loc16_ = Number(§§pop());
                                             §§push(_loc13_);
                                             if(_loc18_ || param2)
                                             {
                                                if(§§pop() > _loc14_)
                                                {
                                                   §§push(Number(_loc13_));
                                                   if(_loc18_ || _loc3_)
                                                   {
                                                      _loc15_ = §§pop();
                                                      §§push(_loc14_);
                                                      if(_loc18_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc18_)
                                                         {
                                                            _loc13_ = §§pop();
                                                            §§push(_loc15_);
                                                            if(_loc18_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc18_)
                                                               {
                                                                  _loc14_ = §§pop();
                                                                  §§push(1);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc18_ || param2)
                                                                     {
                                                                        _loc16_ = §§pop();
                                                                        if(_loc18_)
                                                                        {
                                                                           addr302:
                                                                           §§push(_loc13_);
                                                                           if(_loc18_ || this)
                                                                           {
                                                                              if(§§pop() > _loc3_)
                                                                              {
                                                                                 _loc11_.x = _loc16_;
                                                                                 _loc11_.y = 0;
                                                                                 addr320:
                                                                                 _loc3_ = Number(_loc13_);
                                                                              }
                                                                           }
                                                                           §§goto(addr515);
                                                                        }
                                                                        _loc4_ = Math.min(_loc4_,_loc14_);
                                                                        §§push(_loc3_);
                                                                        §§push(_loc4_);
                                                                        if(!(_loc17_ && this))
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 return false;
                                                                              }
                                                                              §§goto(addr418);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr348);
                                                                           }
                                                                           §§goto(addr480);
                                                                        }
                                                                        §§goto(addr424);
                                                                     }
                                                                     §§goto(addr320);
                                                                  }
                                                                  §§goto(addr529);
                                                               }
                                                               §§goto(addr418);
                                                            }
                                                            §§goto(addr515);
                                                         }
                                                         §§goto(addr488);
                                                      }
                                                      §§goto(addr452);
                                                   }
                                                   §§goto(addr468);
                                                }
                                                §§goto(addr302);
                                             }
                                             §§goto(addr488);
                                          }
                                          §§goto(addr480);
                                       }
                                       §§goto(addr348);
                                    }
                                    §§goto(addr500);
                                 }
                                 §§goto(addr320);
                              }
                           }
                           §§goto(addr424);
                        }
                        §§goto(addr405);
                     }
                     §§goto(addr159);
                  }
                  addr369:
                  if(!§§pop())
                  {
                     if(!_loc17_)
                     {
                        §§pop();
                        §§push(this.§_-TE§);
                        if(_loc18_ || param2)
                        {
                           §§push(§§pop().y);
                           if(!_loc17_)
                           {
                              §§push(_loc6_);
                              if(!_loc17_)
                              {
                                 §§push(§§pop() < §§pop());
                                 if(!(_loc17_ && _loc3_))
                                 {
                                    §§goto(addr396);
                                 }
                                 else
                                 {
                                    §§goto(addr573);
                                 }
                              }
                              else
                              {
                                 addr444:
                                 §§push(§§pop() - §§pop());
                                 if(_loc18_ || param2)
                                 {
                                    addr452:
                                    §§push(_loc12_);
                                    if(!(_loc17_ && _loc3_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc18_ || _loc3_)
                                       {
                                          addr468:
                                          §§push(Number(§§pop()));
                                          if(!_loc17_)
                                          {
                                             _loc14_ = §§pop();
                                             §§push(-1);
                                             if(_loc18_ || param2)
                                             {
                                                addr480:
                                                §§push(Number(§§pop()));
                                                if(_loc18_ || _loc3_)
                                                {
                                                   addr488:
                                                   _loc16_ = §§pop();
                                                   if(_loc18_ || _loc3_)
                                                   {
                                                      addr496:
                                                      §§push(_loc13_);
                                                      if(_loc18_)
                                                      {
                                                         addr500:
                                                         if(§§pop() > _loc14_)
                                                         {
                                                            addr501:
                                                            §§push(_loc13_);
                                                            if(!_loc17_)
                                                            {
                                                               addr505:
                                                               _loc15_ = Number(§§pop());
                                                               §§push(Number(_loc14_));
                                                               if(_loc18_ || param1)
                                                               {
                                                                  addr515:
                                                                  _loc13_ = §§pop();
                                                                  §§push(_loc15_);
                                                                  if(!(_loc17_ && _loc3_))
                                                                  {
                                                                     addr552:
                                                                     addr553:
                                                                     addr524:
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc17_)
                                                                     {
                                                                        _loc14_ = §§pop();
                                                                        addr529:
                                                                        §§push(Number(1));
                                                                     }
                                                                     _loc3_ = Number(§§pop());
                                                                     if(_loc18_)
                                                                     {
                                                                        addr561:
                                                                        _loc4_ = Math.min(_loc4_,_loc14_);
                                                                        addr556:
                                                                     }
                                                                     if(_loc3_ > _loc4_)
                                                                     {
                                                                        addr573:
                                                                        return §§pop();
                                                                        §§push(false);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr574);
                                                                     }
                                                                  }
                                                                  _loc16_ = §§pop();
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr534:
                                                                     if(_loc13_ > _loc3_)
                                                                     {
                                                                        if(_loc18_ || _loc3_)
                                                                        {
                                                                           addr543:
                                                                           _loc11_.y = _loc16_;
                                                                           if(!_loc17_)
                                                                           {
                                                                              _loc11_.x = 0;
                                                                              addr551:
                                                                              §§goto(addr552);
                                                                              §§push(_loc13_);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr556);
                                                                  }
                                                                  §§goto(addr551);
                                                               }
                                                               §§goto(addr553);
                                                            }
                                                         }
                                                         §§goto(addr534);
                                                      }
                                                      §§goto(addr561);
                                                   }
                                                   §§goto(addr501);
                                                }
                                                §§goto(addr552);
                                             }
                                             §§goto(addr529);
                                          }
                                          §§goto(addr505);
                                       }
                                       §§goto(addr524);
                                    }
                                    §§goto(addr500);
                                 }
                                 §§goto(addr505);
                              }
                              §§goto(addr574);
                           }
                           else
                           {
                              addr415:
                              _loc12_ = §§pop();
                              if(!_loc17_)
                              {
                                 addr418:
                                 §§push(this.§_-N-§.y);
                                 §§push(_loc6_);
                                 if(!_loc17_)
                                 {
                                    addr424:
                                    §§push(§§pop() - §§pop());
                                    if(_loc18_ || param1)
                                    {
                                       §§push(Number(§§pop() * _loc12_));
                                       if(!_loc17_)
                                       {
                                          _loc13_ = §§pop();
                                          addr440:
                                          §§push(this.§_-TE§.y);
                                          if(_loc18_)
                                          {
                                             §§goto(addr444);
                                             §§push(_loc6_);
                                          }
                                       }
                                       §§goto(addr552);
                                    }
                                    §§goto(addr561);
                                 }
                                 §§goto(addr534);
                              }
                           }
                           §§goto(addr496);
                        }
                        §§goto(addr440);
                     }
                     §§goto(addr405);
                  }
                  addr396:
                  if(§§pop())
                  {
                     §§push(false);
                     if(!(_loc17_ && param2))
                     {
                        addr405:
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr574:
                     param1.fraction = _loc3_;
                     §§push(true);
                  }
                  return §§pop();
               }
               §§goto(addr364);
            }
            else
            {
               §§push(1);
               if(_loc18_ || _loc3_)
               {
                  §§push(_loc7_);
                  if(!_loc17_)
                  {
                     _loc12_ = Number(§§pop() / §§pop());
                     §§push(this.§_-N-§);
                     if(_loc18_)
                     {
                        §§push(§§pop().x);
                        if(!_loc17_)
                        {
                           §§push(§§pop() - _loc5_);
                           if(!(_loc17_ && this))
                           {
                              §§push(_loc12_);
                              if(!_loc17_)
                              {
                                 _loc13_ = Number(§§pop() * §§pop());
                                 if(_loc18_)
                                 {
                                    §§push(this.§_-TE§);
                                    if(!(_loc17_ && param1))
                                    {
                                       §§goto(addr217);
                                    }
                                    §§goto(addr440);
                                 }
                                 §§goto(addr574);
                              }
                              §§goto(addr237);
                           }
                        }
                        §§goto(addr552);
                     }
                     §§goto(addr418);
                  }
                  §§goto(addr411);
               }
            }
            §§goto(addr480);
         }
         §§goto(addr128);
      }
      
      public function §_-pb§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§_-N-§.x);
         if(_loc6_)
         {
            §§push(§§pop() - this.§_-TE§.x);
            if(_loc6_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(param1.§_-N-§.y);
         if(!_loc7_)
         {
            §§push(§§pop() - this.§_-TE§.y);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.§_-N-§.x);
         if(_loc6_)
         {
            §§push(§§pop() - param1.§_-TE§.x);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.§_-N-§.y);
         if(!(_loc7_ && this))
         {
            §§push(§§pop() - param1.§_-TE§.y);
            if(!(_loc7_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc2_);
         if(!_loc7_)
         {
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() > §§pop());
               §§push(§§pop() > §§pop());
               if(!_loc7_)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     if(_loc6_ || param1)
                     {
                        §§push(_loc3_);
                        if(_loc6_ || this)
                        {
                           addr114:
                           §§push(0);
                           if(!(_loc7_ && _loc2_))
                           {
                              addr123:
                              if(§§pop() > §§pop())
                              {
                                 §§goto(addr124);
                              }
                              else
                              {
                                 §§push(_loc4_);
                                 if(!_loc7_)
                                 {
                                    addr136:
                                    §§push(0);
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       addr144:
                                       §§push(§§pop() > §§pop());
                                       if(_loc6_ || param1)
                                       {
                                          addr153:
                                          if(!§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                §§pop();
                                                addr166:
                                                §§push(_loc5_ > 0);
                                                if(_loc6_)
                                                {
                                                   addr169:
                                                   if(§§pop())
                                                   {
                                                      return false;
                                                   }
                                                   §§push(true);
                                                }
                                             }
                                             return §§pop();
                                          }
                                       }
                                       §§goto(addr169);
                                    }
                                 }
                                 §§goto(addr166);
                              }
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr136);
                     }
                     addr124:
                     return false;
                  }
                  §§goto(addr123);
               }
               §§goto(addr153);
            }
            §§goto(addr144);
         }
         §§goto(addr114);
      }
      
      public function §_-ot§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§_-N-§);
            if(!_loc4_)
            {
               §§pop().x = Math.min(param1.§_-N-§.x,param2.§_-N-§.x);
               if(_loc3_)
               {
                  this.§_-N-§.y = Math.min(param1.§_-N-§.y,param2.§_-N-§.y);
                  addr32:
                  if(!_loc4_)
                  {
                     §§push(this.§_-TE§);
                     if(!(_loc4_ && param2))
                     {
                        §§pop().x = Math.max(param1.§_-TE§.x,param2.§_-TE§.x);
                        §§goto(addr93);
                     }
                     §§pop().y = Math.max(param1.§_-TE§.y,param2.§_-TE§.y);
                     §§goto(addr93);
                  }
                  §§goto(addr75);
               }
               addr93:
               if(_loc3_ || param1)
               {
                  addr75:
                  §§push(this.§_-TE§);
               }
               return;
            }
         }
         §§goto(addr32);
      }
   }
}
