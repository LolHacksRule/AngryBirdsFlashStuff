package §>!Z§
{
   import §&H§.*;
   import §3b§.*;
   import §@!3§.*;
   
   class b2Simplex
   {
       
      
      public var m_v1:b2SimplexVertex;
      
      public var m_v2:b2SimplexVertex;
      
      public var m_v3:b2SimplexVertex;
      
      public var §0!k§:Vector.<b2SimplexVertex>;
      
      public var §;!4§:int;
      
      function b2Simplex()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_v1 = new b2SimplexVertex();
            while(true)
            {
               this.m_v2 = new b2SimplexVertex();
               loop1:
               for(; _loc2_; if(!(_loc2_ || this))
               {
                  continue;
               },super(),§§goto(addr74))
               {
                  this.m_v3 = new b2SimplexVertex();
                  while(true)
                  {
                     this.§0!k§ = new Vector.<b2SimplexVertex>(3);
                     while(!(_loc1_ && _loc1_))
                     {
                        continue loop1;
                        loop5:
                        while(_loc2_ || _loc1_)
                        {
                           loop6:
                           while(true)
                           {
                              this.§0!k§[1] = this.m_v2;
                              while(!_loc1_)
                              {
                                 this.§0!k§[2] = this.m_v3;
                                 if(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       break loop6;
                                    }
                                    continue loop5;
                                 }
                              }
                              addr74:
                              while(true)
                              {
                                 this.§0!k§[0] = this.m_v1;
                                 continue loop5;
                              }
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §@!i§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc10_:b2SimplexVertex = null;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         if(_loc13_)
         {
            §§push(b2Settings);
            if(!_loc14_)
            {
               §§push(0 <= param1.count);
               if(_loc13_ || param2)
               {
                  if(§§pop())
                  {
                     if(!_loc14_)
                     {
                        addr49:
                        §§pop();
                        §§push(param1.count <= 3);
                     }
                  }
                  §§pop().b2Assert(§§pop());
                  if(!(_loc14_ && param3))
                  {
                     this.§;!4§ = param1.count;
                     addr66:
                     var _loc8_:Vector.<b2SimplexVertex> = this.§0!k§;
                     var _loc9_:int = 0;
                     while(true)
                     {
                        §§push(_loc9_);
                        if(!_loc14_)
                        {
                           §§push(this.§;!4§);
                           if(!_loc14_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc13_)
                                 {
                                    §§push(this.§;!4§);
                                    if(_loc13_ || param2)
                                    {
                                       §§push(1);
                                       if(_loc13_ || param2)
                                       {
                                          addr187:
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc13_ || this)
                                             {
                                                addr205:
                                                §§push(param1.§<!9§);
                                                if(_loc13_ || param2)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc14_ && this))
                                                   {
                                                      _loc11_ = §§pop();
                                                      if(!_loc14_)
                                                      {
                                                         addr317:
                                                         §§push(this.§6!1§());
                                                         if(_loc13_)
                                                         {
                                                            addr312:
                                                            §§push(_loc12_ = §§pop());
                                                         }
                                                         §§push(§§pop() < 0.5 * _loc11_);
                                                         if(!(§§pop() < 0.5 * _loc11_))
                                                         {
                                                            addr319:
                                                            §§pop();
                                                            addr260:
                                                            addr320:
                                                            §§push(2);
                                                            if(!_loc14_)
                                                            {
                                                               addr266:
                                                               §§push(§§pop() * _loc11_);
                                                               if(!_loc14_)
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(_loc12_);
                                                                     if(!(_loc14_ && param2))
                                                                     {
                                                                        if(!(_loc14_ && param1))
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(§§pop() < §§pop());
                                                                              if(!_loc14_)
                                                                              {
                                                                                 addr290:
                                                                                 §§push(§§pop());
                                                                                 if(_loc13_ || param3)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       addr300:
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr303:
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(_loc12_);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(§§pop() < Number.MIN_VALUE);
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      addr237:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc13_ || param2)
                                                                                                         {
                                                                                                            if(!(_loc14_ && param1))
                                                                                                            {
                                                                                                               this.§;!4§ = 0;
                                                                                                               addr325:
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr260);
                                                                                                                  }
                                                                                                                  addr321:
                                                                                                                  §§push(this.§;!4§);
                                                                                                                  break;
                                                                                                               }
                                                                                                               (_loc10_ = _loc8_[0]).indexA = 0;
                                                                                                               if(!(_loc14_ && param2))
                                                                                                               {
                                                                                                                  _loc10_.indexB = 0;
                                                                                                               }
                                                                                                               _loc6_ = param2.§2l§(0);
                                                                                                               _loc7_ = param4.§2l§(0);
                                                                                                               if(!(_loc14_ && param2))
                                                                                                               {
                                                                                                                  _loc10_.§<o§ = b2Math.§%!r§(param3,_loc6_);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc10_.§4x§ = b2Math.§%!r§(param5,_loc7_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr393:
                                                                                                                     §§goto(addr418);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr303);
                                                                                                         }
                                                                                                         §§goto(addr325);
                                                                                                      }
                                                                                                      §§goto(addr321);
                                                                                                   }
                                                                                                   §§goto(addr319);
                                                                                                }
                                                                                                §§goto(addr300);
                                                                                             }
                                                                                             §§goto(addr266);
                                                                                             addr305:
                                                                                          }
                                                                                          §§goto(addr320);
                                                                                       }
                                                                                       §§goto(addr317);
                                                                                    }
                                                                                    §§goto(addr237);
                                                                                 }
                                                                                 §§goto(addr317);
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr312);
                                                                        }
                                                                     }
                                                                     §§goto(addr317);
                                                                  }
                                                                  §§goto(addr312);
                                                               }
                                                               §§goto(addr317);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr290);
                                                      }
                                                      §§goto(addr305);
                                                   }
                                                }
                                                §§goto(addr312);
                                             }
                                             §§goto(addr325);
                                          }
                                          §§goto(addr321);
                                       }
                                       §§goto(addr324);
                                    }
                                    break;
                                 }
                                 §§goto(addr205);
                              }
                              else
                              {
                                 (_loc10_ = _loc8_[_loc9_]).indexA = param1.indexA[_loc9_];
                                 if(!(_loc14_ && this))
                                 {
                                    _loc10_.indexB = param1.indexB[_loc9_];
                                 }
                                 _loc6_ = param2.§2l§(_loc10_.indexA);
                                 _loc7_ = param4.§2l§(_loc10_.indexB);
                                 if(!_loc14_)
                                 {
                                    _loc10_.§<o§ = b2Math.§%!r§(param3,_loc6_);
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    _loc10_.§4x§ = b2Math.§%!r§(param5,_loc7_);
                                    addr152:
                                    while(true)
                                    {
                                       _loc10_.§=Q§ = b2Math.§%M§(_loc10_.§4x§,_loc10_.§<o§);
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           §§goto(addr187);
                        }
                        break;
                     }
                     addr324:
                     if(§§pop() == §§pop())
                     {
                        §§goto(addr325);
                     }
                     addr418:
                     while(true)
                     {
                        _loc10_.§=Q§ = b2Math.§%M§(_loc10_.§4x§,_loc10_.§<o§);
                        do
                        {
                           this.§;!4§ = 1;
                        }
                        while(!_loc13_);
                        
                        if(_loc13_ || param3)
                        {
                           continue loop6;
                        }
                        continue loop7;
                     }
                     return;
                     §§push(0);
                  }
                  §§goto(addr66);
               }
            }
            §§goto(addr49);
         }
         §§goto(addr66);
      }
      
      public function §@'§(param1:b2SimplexCache) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            param1.§<!9§ = this.§6!1§();
            if(!(_loc5_ && this))
            {
               param1.count = uint(this.§;!4§);
            }
         }
         var _loc2_:Vector.<b2SimplexVertex> = this.§0!k§;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§;!4§)
            {
               if(!(_loc5_ && param1))
               {
                  if(_loc4_ || _loc2_)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     param1.indexB[_loc3_] = uint(_loc2_[_loc3_].indexB);
                     addr113:
                  }
                  _loc3_++;
               }
               continue;
            }
            param1.indexA[_loc3_] = uint(_loc2_[_loc3_].indexA);
            §§goto(addr113);
         }
      }
      
      public function §;G§() : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:b2Vec2 = null;
         var _loc2_:* = NaN;
         §§push(this.§;!4§);
         if(_loc5_)
         {
            var _loc3_:* = §§pop();
            if(_loc5_ || _loc1_)
            {
               §§push(1);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && _loc1_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc4_)
                        {
                           addr157:
                           §§push(0);
                           if(_loc5_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr171:
                           §§push(1);
                           if(!(_loc4_ && this))
                           {
                              addr179:
                           }
                        }
                        addr185:
                        switch(§§pop())
                        {
                           case 0:
                              return this.m_v1.§=Q§.§=,§();
                           case 1:
                              _loc1_ = b2Math.§%M§(this.m_v2.§=Q§,this.m_v1.§=Q§);
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§push(b2Math.§'!e§(_loc1_,this.m_v1.§=Q§.§=,§()));
                              loop0:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc5_ || this))
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          if(§§pop() <= 0)
                                          {
                                             return b2Math.§66§(_loc1_,1);
                                          }
                                          addr60:
                                          if(_loc5_ || this)
                                          {
                                             return b2Math.§<G§(1,_loc1_);
                                          }
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              break;
                           default:
                              b2Settings.b2Assert(false);
                              if(_loc5_)
                              {
                                 return new b2Vec2();
                              }
                              break;
                        }
                        §§goto(addr60);
                        addr184:
                     }
                     else
                     {
                        §§push(2);
                        if(_loc5_)
                        {
                           addr170:
                           if(§§pop() === _loc3_)
                           {
                              §§goto(addr171);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr184);
                        }
                     }
                     §§goto(addr179);
                  }
               }
               §§goto(addr170);
            }
            §§goto(addr157);
         }
         §§goto(addr185);
      }
      
      public function §`!'§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§;!4§);
         if(_loc2_)
         {
            var _loc1_:* = §§pop();
            if(_loc2_ || _loc1_)
            {
               §§push(0);
               if(_loc2_ || this)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(!_loc2_)
                           {
                              addr272:
                           }
                        }
                        else
                        {
                           addr250:
                           §§push(1);
                           if(!(_loc2_ || _loc2_))
                           {
                              addr262:
                              if(§§pop() === _loc1_)
                              {
                                 addr264:
                                 §§push(2);
                                 if(!(_loc3_ && this))
                                 {
                                    §§goto(addr272);
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                        }
                        §§goto(addr278);
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc3_ && this))
                        {
                           addr224:
                           §§push(_loc1_);
                           if(!(_loc3_ && this))
                           {
                              addr232:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    §§goto(addr250);
                                 }
                                 §§goto(addr264);
                              }
                              else
                              {
                                 §§push(2);
                                 if(!_loc3_)
                                 {
                                    §§goto(addr262);
                                 }
                                 §§goto(addr272);
                              }
                           }
                           §§goto(addr262);
                        }
                     }
                     §§goto(addr272);
                  }
                  §§goto(addr232);
               }
               §§goto(addr224);
            }
            §§goto(addr250);
         }
         addr278:
         loop1:
         switch(§§pop())
         {
            case 0:
               b2Settings.b2Assert(false);
               break;
            case 1:
               return this.m_v1.§=Q§;
            case 2:
               §§push(§§findproperty(b2Vec2));
               §§push(this.m_v1.a);
               if(!_loc3_)
               {
                  §§push(this.m_v1);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(§§pop().§=Q§.x);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc2_)
                        {
                           §§goto(addr72);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr101);
               }
               addr72:
               §§push(this.m_v2.a);
               if(_loc2_ || _loc2_)
               {
                  addr82:
                  §§push(this.m_v2);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop().§=Q§);
                     if(_loc2_)
                     {
                        §§push(§§pop().x);
                        if(_loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc2_)
                           {
                              addr101:
                              §§push(§§pop() + §§pop());
                              §§push(this.m_v1.a);
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr114:
                                 §§push(this.m_v1.§=Q§.y);
                                 if(!(_loc3_ && this))
                                 {
                                    addr122:
                                    §§push(§§pop() * §§pop());
                                    if(_loc3_ && _loc1_)
                                    {
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr145);
                              }
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr151);
               }
               addr151:
               §§push(this.m_v2.a);
               if(!_loc3_)
               {
                  addr145:
                  §§push(§§pop() * this.m_v2.§=Q§.y);
               }
               return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
            default:
               while(true)
               {
                  b2Settings.b2Assert(false);
                  if(_loc2_ || _loc3_)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     break loop1;
                  }
               }
               return new b2Vec2();
         }
         return new b2Vec2();
      }
      
      public function §-7§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§;!4§);
         if(_loc5_)
         {
            var _loc3_:* = §§pop();
            if(_loc5_ || this)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr506:
                           }
                           addr526:
                           switch(§§pop())
                           {
                              case 0:
                                 b2Settings.b2Assert(false);
                                 break;
                                 addr237:
                              case 1:
                                 param1.SetV(this.m_v1.§<o§);
                                 param2.SetV(this.m_v1.§4x§);
                                 break;
                                 addr222:
                                 addr231:
                              case 2:
                                 §§push(param1);
                                 §§push(this.m_v1.a);
                                 if(!_loc4_)
                                 {
                                    §§push(this.m_v1.§<o§.x);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc4_)
                                       {
                                          addr191:
                                          §§push(this.m_v2.a);
                                          if(!(_loc4_ && param1))
                                          {
                                             addr206:
                                             §§push(§§pop() + §§pop() * this.m_v2.§<o§.x);
                                          }
                                          §§goto(addr206);
                                       }
                                       §§pop().x = §§pop();
                                       while(true)
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§push(param1);
                                             §§push(this.m_v1.a);
                                             if(_loc4_)
                                             {
                                                continue;
                                             }
                                             §§push(this.m_v1.§<o§.y);
                                             if(_loc5_ || this)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc4_ && param2))
                                                {
                                                   §§push(this.m_v2.a);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr156:
                                                      §§push(§§pop() * this.m_v2.§<o§.y);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                continue;
                                             }
                                             §§goto(addr156);
                                          }
                                          else
                                          {
                                             §§goto(addr222);
                                          }
                                       }
                                       addr341:
                                       §§push(param2);
                                       §§push(param1);
                                       §§push(this.m_v1.a);
                                       if(!_loc4_)
                                       {
                                          §§push(this.m_v1.§<o§.y);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc5_ || param1)
                                             {
                                                addr362:
                                                §§push(this.m_v2.a);
                                                if(_loc5_)
                                                {
                                                   §§push(this.m_v2.§<o§);
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      §§push(§§pop().y);
                                                      if(_loc5_ || param2)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc5_)
                                                            {
                                                               addr391:
                                                               §§push(this.m_v3.a);
                                                               if(_loc5_)
                                                               {
                                                                  addr396:
                                                                  §§push(§§pop() * this.m_v3.§<o§.y);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     addr408:
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  _loc3_ = §§pop();
                                                                  §§pop().y = §§pop();
                                                                  §§pop().y = _loc3_;
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr417);
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                            §§goto(addr408);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr396);
                                                }
                                                §§goto(addr408);
                                             }
                                             §§goto(addr391);
                                          }
                                          §§goto(addr408);
                                       }
                                       §§goto(addr362);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr191);
                              case 3:
                                 §§push(param2);
                                 §§push(param1);
                                 §§push(this.m_v1.a);
                                 if(!(_loc4_ && param2))
                                 {
                                    §§push(this.m_v1.§<o§.x);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc4_ && param2))
                                       {
                                          addr281:
                                          §§push(this.m_v2.a);
                                          if(!_loc4_)
                                          {
                                             addr286:
                                             §§push(this.m_v2.§<o§);
                                             if(!(_loc4_ && this))
                                             {
                                                §§push(§§pop().x);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         addr315:
                                                         §§push(this.m_v3.a);
                                                         if(!_loc4_)
                                                         {
                                                            addr334:
                                                            §§push(§§pop() * this.m_v3.§<o§.x);
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            _loc3_ = §§pop();
                                                            §§pop().x = §§pop();
                                                            §§pop().x = _loc3_;
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr341);
                                                            }
                                                            §§goto(addr417);
                                                         }
                                                         §§goto(addr334);
                                                      }
                                                      §§push(§§pop());
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr334);
                                       }
                                       §§goto(addr315);
                                    }
                                    §§goto(addr286);
                                 }
                                 §§goto(addr281);
                              default:
                                 b2Settings.b2Assert(false);
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                           }
                           return;
                           addr525:
                        }
                        else
                        {
                           addr488:
                           §§push(2);
                           if(_loc5_ || _loc3_)
                           {
                              §§goto(addr506);
                           }
                           else
                           {
                              addr520:
                           }
                           §§goto(addr525);
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc4_ && this))
                        {
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              addr467:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    addr470:
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       addr511:
                                       if(§§pop() === _loc3_)
                                       {
                                          addr512:
                                          §§push(3);
                                          if(!(_loc4_ && param2))
                                          {
                                             §§goto(addr520);
                                          }
                                       }
                                       else
                                       {
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr525);
                                 }
                                 §§goto(addr512);
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             §§goto(addr488);
                                          }
                                          else
                                          {
                                             §§goto(addr512);
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(!_loc5_)
                                          {
                                          }
                                          §§goto(addr520);
                                       }
                                       §§goto(addr520);
                                    }
                                    §§goto(addr511);
                                 }
                              }
                           }
                           §§goto(addr511);
                        }
                     }
                     §§goto(addr506);
                  }
                  §§goto(addr467);
               }
               §§goto(addr520);
            }
            §§goto(addr470);
         }
         §§goto(addr526);
      }
      
      public function §6!1§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§;!4§);
         if(!(_loc2_ && _loc1_))
         {
            var _loc1_:* = §§pop();
            if(_loc3_ || _loc1_)
            {
               §§push(0);
               if(!_loc2_)
               {
                  §§push(_loc1_);
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc2_ && this))
                        {
                           §§push(0);
                           if(!_loc2_)
                           {
                              addr261:
                              switch(§§pop())
                              {
                                 case 0:
                                    b2Settings.b2Assert(false);
                                    addr115:
                                    return 0;
                                    addr139:
                                 default:
                                    b2Settings.b2Assert(false);
                                    if(!_loc2_)
                                    {
                                       §§push(0);
                                       if(_loc2_ && _loc3_)
                                       {
                                          addr72:
                                          if(_loc3_ || _loc3_)
                                          {
                                             return §§pop();
                                          }
                                          addr91:
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             return §§pop();
                                          }
                                          break;
                                       }
                                       if(_loc3_ || _loc3_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       if(_loc3_ || _loc1_)
                                       {
                                          addr53:
                                          §§goto(addr72);
                                          §§push(b2Math.§'!e§(b2Math.§%M§(this.m_v2.§=Q§,this.m_v1.§=Q§),b2Math.§%M§(this.m_v3.§=Q§,this.m_v1.§=Q§)));
                                       }
                                       else if(!_loc2_)
                                       {
                                          addr81:
                                          §§push(b2Math.§%M§(this.m_v1.§=Q§,this.m_v2.§=Q§).§,!t§());
                                       }
                                       else
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             addr107:
                                             §§push(0);
                                             break;
                                          }
                                          §§goto(addr139);
                                       }
                                       §§goto(addr91);
                                    }
                                    §§goto(addr115);
                                 case 2:
                                    §§goto(addr81);
                                 case 1:
                                    §§goto(addr107);
                                 case 3:
                                    §§goto(addr53);
                              }
                              return §§pop();
                              addr260:
                           }
                           else
                           {
                              addr207:
                              §§push(_loc1_);
                              if(_loc3_ || _loc2_)
                              {
                                 addr215:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr233:
                                       §§push(2);
                                       if(_loc3_ || this)
                                       {
                                          addr241:
                                          §§goto(addr260);
                                       }
                                       else
                                       {
                                          addr250:
                                          §§push(_loc1_);
                                       }
                                       §§goto(addr260);
                                    }
                                    addr252:
                                    §§push(3);
                                    if(!_loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(3);
                                    if(_loc3_ || _loc1_)
                                    {
                                       §§goto(addr250);
                                    }
                                 }
                                 §§goto(addr260);
                              }
                              if(§§pop() !== §§pop())
                              {
                                 §§goto(addr260);
                                 §§push(4);
                              }
                              §§goto(addr260);
                           }
                           §§goto(addr260);
                        }
                        §§goto(addr252);
                     }
                     else
                     {
                        §§push(1);
                        if(_loc3_)
                        {
                           addr184:
                           §§push(_loc1_);
                           if(!(_loc2_ && _loc1_))
                           {
                              addr192:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§push(1);
                                    if(_loc2_)
                                    {
                                    }
                                    §§goto(addr260);
                                 }
                                 else
                                 {
                                    §§goto(addr233);
                                 }
                              }
                              else
                              {
                                 §§push(2);
                                 if(!(_loc2_ && this))
                                 {
                                    §§goto(addr207);
                                 }
                              }
                              §§goto(addr241);
                           }
                           §§goto(addr215);
                        }
                     }
                     §§goto(addr260);
                  }
                  §§goto(addr192);
               }
               §§goto(addr184);
            }
            §§goto(addr233);
         }
         §§goto(addr261);
      }
      
      public function Solve2() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:b2Vec2 = this.m_v1.§=Q§;
         var _loc2_:b2Vec2 = this.m_v2.§=Q§;
         var _loc3_:b2Vec2 = b2Math.§%M§(_loc2_,_loc1_);
         §§push(_loc1_.x);
         if(!(_loc7_ && this))
         {
            §§push(_loc3_.x);
            if(!_loc7_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc7_ && this))
               {
                  §§push(_loc1_.y);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc3_.y);
                     if(!_loc7_)
                     {
                        addr63:
                        §§push(§§pop() + §§pop());
                        if(!(_loc7_ && _loc2_))
                        {
                           addr71:
                           §§push(-§§pop());
                           if(_loc8_)
                           {
                              addr75:
                              §§push(Number(§§pop()));
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr75);
                     }
                  }
                  var _loc4_:* = §§pop();
                  if(_loc8_ || this)
                  {
                     §§push(0);
                     if(!_loc7_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(_loc8_ || _loc2_)
                           {
                              this.m_v1.a = 1;
                              if(_loc8_ || _loc1_)
                              {
                                 this.§;!4§ = 1;
                                 if(!_loc7_)
                                 {
                                    return;
                                 }
                              }
                           }
                        }
                        §§push(_loc2_.x);
                        if(_loc8_)
                        {
                           §§push(_loc3_.x);
                           if(_loc8_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc7_ && _loc2_))
                              {
                                 addr138:
                                 §§push(_loc2_.y);
                                 if(_loc8_)
                                 {
                                    addr142:
                                    §§push(§§pop() * _loc3_.y);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc8_)
                                       {
                                          addr151:
                                          §§push(Number(§§pop()));
                                          §§push(Number(§§pop()));
                                       }
                                       §§goto(addr151);
                                    }
                                 }
                              }
                              §§goto(addr151);
                           }
                           var _loc5_:* = §§pop();
                           if(_loc8_)
                           {
                              if(§§pop() <= 0)
                              {
                                 if(_loc8_ || _loc2_)
                                 {
                                    this.m_v2.a = 1;
                                    if(!(_loc7_ && this))
                                    {
                                       this.§;!4§ = 1;
                                       this.m_v1.Set(this.m_v2);
                                       addr204:
                                    }
                                    return;
                                 }
                                 §§goto(addr204);
                              }
                              else
                              {
                                 §§push(1);
                                 §§push(_loc5_);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push(§§pop() + _loc4_);
                                 }
                                 §§push(§§pop() / §§pop());
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                           var _loc6_:* = §§pop();
                           if(_loc8_ || _loc3_)
                           {
                              §§push(this.m_v1);
                              §§push(_loc5_);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() * _loc6_);
                              }
                              §§pop().a = §§pop();
                              while(true)
                              {
                                 §§push(this.m_v2);
                                 §§push(_loc4_);
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§pop().a = §§pop();
                                 loop1:
                                 while(_loc8_)
                                 {
                                    while(true)
                                    {
                                       this.§;!4§ = 2;
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    return;
                                 }
                              }
                           }
                           §§goto(addr271);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr138);
               }
               §§goto(addr75);
            }
            §§goto(addr63);
         }
         §§goto(addr71);
      }
      
      public function Solve3() : void
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:Number = NaN;
         var _loc1_:b2Vec2 = this.m_v1.§=Q§;
         var _loc2_:b2Vec2 = this.m_v2.§=Q§;
         var _loc3_:b2Vec2 = this.m_v3.§=Q§;
         var _loc4_:b2Vec2 = b2Math.§%M§(_loc2_,_loc1_);
         §§push(b2Math.§#D§(_loc1_,_loc4_));
         if(!(_loc28_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(b2Math.§#D§(_loc2_,_loc4_));
         if(!(_loc28_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:*;
         §§push(_loc6_ = §§pop());
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc5_);
         if(!(_loc28_ && _loc2_))
         {
            §§push(-§§pop());
            if(!_loc28_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         var _loc9_:b2Vec2 = b2Math.§%M§(_loc3_,_loc1_);
         §§push(b2Math.§#D§(_loc1_,_loc9_));
         if(_loc27_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(b2Math.§#D§(_loc3_,_loc9_));
         if(!(_loc28_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:*;
         §§push(_loc11_ = §§pop());
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc10_);
         if(!_loc28_)
         {
            §§push(-§§pop());
            if(!(_loc28_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc13_:* = §§pop();
         var _loc14_:b2Vec2 = b2Math.§%M§(_loc3_,_loc2_);
         §§push(b2Math.§#D§(_loc2_,_loc14_));
         if(!_loc28_)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:* = §§pop();
         §§push(b2Math.§#D§(_loc3_,_loc14_));
         if(_loc27_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:*;
         §§push(_loc16_ = §§pop());
         if(_loc27_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc17_:* = §§pop();
         §§push(_loc15_);
         if(!_loc28_)
         {
            §§push(-§§pop());
            if(!(_loc28_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc18_:* = §§pop();
         §§push(b2Math.§'!e§(_loc4_,_loc9_));
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc19_:*;
         §§push(_loc19_ = §§pop());
         if(!_loc28_)
         {
            §§push(§§pop() * b2Math.§'!e§(_loc2_,_loc3_));
            if(_loc27_)
            {
               addr205:
               §§push(Number(§§pop()));
            }
            var _loc20_:* = §§pop();
            §§push(_loc19_);
            if(!(_loc28_ && _loc3_))
            {
               §§push(§§pop() * b2Math.§'!e§(_loc3_,_loc1_));
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc21_:* = §§pop();
            §§push(_loc19_);
            if(!_loc28_)
            {
               §§push(§§pop() * b2Math.§'!e§(_loc1_,_loc2_));
               if(!(_loc28_ && _loc1_))
               {
                  addr239:
                  §§push(Number(§§pop()));
               }
               var _loc22_:* = §§pop();
               if(_loc27_)
               {
                  §§push(_loc8_);
                  if(!(_loc28_ && this))
                  {
                     §§push(0);
                     while(true)
                     {
                        §§push(§§pop() <= §§pop());
                        while(true)
                        {
                           §§push(§§pop());
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr1158:
                                    while(true)
                                    {
                                       §§push(_loc13_);
                                       addr1136:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr1137:
                                          while(true)
                                          {
                                             §§push(§§pop() <= §§pop());
                                          }
                                       }
                                    }
                                 }
                                 addr1157:
                              }
                              while(true)
                              {
                                 loop8:
                                 while(!§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(0);
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc27_ || this)
                                                            {
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(0);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        if(_loc27_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr1117:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc22_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             addr1065:
                                                                                             addr976:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() <= §§pop());
                                                                                                addr1066:
                                                                                                while(!_loc28_)
                                                                                                {
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                             if(_loc28_ && this)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             _loc25_ = §§pop();
                                                                                             §§push(this.m_v1);
                                                                                             §§push(_loc12_);
                                                                                             if(_loc27_ || _loc2_)
                                                                                             {
                                                                                                if(_loc27_ || _loc1_)
                                                                                                {
                                                                                                   §§push(_loc25_);
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      addr901:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc28_ && _loc3_))
                                                                                                      {
                                                                                                         §§pop().a = §§pop();
                                                                                                         addr875:
                                                                                                         this.m_v3.a = _loc13_ * _loc25_;
                                                                                                         addr876:
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            return;
                                                                                                            addr1133:
                                                                                                         }
                                                                                                         this.§;!4§ = 2;
                                                                                                         §§push(this.m_v2);
                                                                                                         if(_loc27_ || this)
                                                                                                         {
                                                                                                            §§pop().Set(this.m_v3);
                                                                                                            return;
                                                                                                            addr863:
                                                                                                         }
                                                                                                         addr909:
                                                                                                         addr874:
                                                                                                         addr873:
                                                                                                         addr872:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop84:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc24_);
                                                                                                            addr1057:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr1058:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().a = §§pop();
                                                                                                                  addr1059:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(this.m_v2);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(!_loc27_)
                                                                                                                        {
                                                                                                                           break loop17;
                                                                                                                        }
                                                                                                                        loop77:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                           addr1073:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 addr1077:
                                                                                                                              }
                                                                                                                              addr1078:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                 if(!(_loc28_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       continue loop10;
                                                                                                                                    }
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 addr1089:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc24_ = §§pop();
                                                                                                                                    addr1090:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc27_ || _loc1_))
                                                                                                                                       {
                                                                                                                                          break loop8;
                                                                                                                                       }
                                                                                                                                       §§push(this.m_v1);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop84;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop77;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1070:
                                                                                                                        addr1072:
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr1056:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         addr1046:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc24_);
                                                                                                            addr1047:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr1048:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().a = §§pop();
                                                                                                                  addr1049:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        this.§;!4§ = 2;
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  §§goto(addr1041);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1057);
                                                                                                }
                                                                                                §§goto(addr1058);
                                                                                             }
                                                                                             §§goto(addr901);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr1116:
                                                                                 }
                                                                                 while(!§§pop())
                                                                                 {
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() > §§pop());
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                if(!(_loc28_ && this))
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop71:
                                                                                                            while(_loc27_ || _loc3_)
                                                                                                            {
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     while(_loc27_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              while(!(_loc28_ && this))
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop33:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       §§push(_loc21_);
                                                                                                                                       if(_loc27_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          loop34:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc28_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(!(_loc27_ || _loc1_))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() <= §§pop());
                                                                                                                                                loop35:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc28_ && this)
                                                                                                                                                   {
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         loop37:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               loop38:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                  addr829:
                                                                                                                                                                  addr691:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     addr830:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              addr832:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc28_ && _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr944:
                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                       if(_loc27_ || _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                if(!(_loc28_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1186:
                                                                                                                                                                                                   §§push(§§pop() / (§§pop() + §§pop()));
                                                                                                                                                                                                   if(_loc27_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1194);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1195);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr968:
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                break loop33;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1078);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1073);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1160:
                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                          if(_loc27_ || _loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1168:
                                                                                                                                                                                             §§push(_loc21_);
                                                                                                                                                                                             if(_loc27_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1176:
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc27_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1186);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1186);
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc28_ && _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop9;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                 if(_loc27_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc27_ || _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() <= §§pop());
                                                                                                                                                                                          addr796:
                                                                                                                                                                                          while(!_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                   addr733:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop33;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                                                                         continue loop35;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr763:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc28_ && _loc1_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr816:
                                                                                                                                                                                                   §§push(this.m_v2);
                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().a = 1;
                                                                                                                                                                                                      addr820:
                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§;!4§ = 1;
                                                                                                                                                                                                         addr775:
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr767:
                                                                                                                                                                                                            this.m_v1.Set(this.m_v2);
                                                                                                                                                                                                            return;
                                                                                                                                                                                                            addr770:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop37;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr868);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr853);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1041:
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop71;
                                                                                                                                                                                             return;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop8;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr795:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1089);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1195);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr1144:
                                                                                                                                                                              this.§;!4§ = 1;
                                                                                                                                                                              §§goto(addr1133);
                                                                                                                                                                           }
                                                                                                                                                                           addr831:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr798);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr691:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc27_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop16;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop38;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop34;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1195);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr944);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop15;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1065);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1137);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                       §§goto(addr976);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr1195);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr942);
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1117);
                                                                                                            }
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                         addr1023:
                                                                                                      }
                                                                                                      §§goto(addr996);
                                                                                                      if(_loc28_ && this)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§goto(addr1159);
                                                                                                      }
                                                                                                      §§goto(addr471);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr1023);
                                                                                          }
                                                                                          §§goto(addr1066);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1070);
                                                                              }
                                                                           }
                                                                           addr1113:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1157);
                                                                        }
                                                                     }
                                                                     §§goto(addr1158);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr1195);
                                                         }
                                                         §§goto(addr1136);
                                                      }
                                                   }
                                                   §§goto(addr1113);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr1142);
                              }
                           }
                        }
                     }
                  }
                  addr1195:
                  var _loc23_:Number = §§pop();
                  addr1194:
                  if(_loc27_)
                  {
                     §§push(this.m_v1);
                     §§push(_loc20_);
                     if(!_loc28_)
                     {
                        §§push(§§pop() * _loc23_);
                     }
                     §§pop().a = §§pop();
                     loop74:
                     while(true)
                     {
                        §§push(this.m_v2);
                        §§push(_loc21_);
                        if(!(_loc28_ && _loc1_))
                        {
                           §§push(§§pop() * _loc23_);
                        }
                        §§pop().a = §§pop();
                        loop75:
                        while(true)
                        {
                           §§push(this.m_v3);
                           §§push(_loc22_);
                           if(_loc27_)
                           {
                              §§push(§§pop() * _loc23_);
                           }
                           §§pop().a = §§pop();
                           do
                           {
                              if(!(_loc28_ && _loc1_))
                              {
                                 continue loop74;
                              }
                              continue loop75;
                              this.§;!4§ = 3;
                           }
                           while(!(_loc27_ || _loc2_));
                           
                           §§goto(addr1214);
                        }
                     }
                  }
                  addr1214:
                  return;
               }
               §§goto(addr1072);
            }
            §§goto(addr239);
         }
         §§goto(addr205);
      }
   }
}
