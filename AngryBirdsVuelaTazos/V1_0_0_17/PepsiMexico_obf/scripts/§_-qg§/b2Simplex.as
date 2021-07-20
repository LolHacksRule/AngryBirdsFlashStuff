package §_-qg§
{
   import §_-Ja§.*;
   import §_-Kt§.*;
   import §_-lh§.*;
   
   class b2Simplex
   {
       
      
      public var m_v1:b2SimplexVertex;
      
      public var m_v2:b2SimplexVertex;
      
      public var m_v3:b2SimplexVertex;
      
      public var §_-Ui§:Vector.<b2SimplexVertex>;
      
      public var §_-01§:int;
      
      function b2Simplex()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_v1 = new b2SimplexVertex();
            this.m_v2 = new b2SimplexVertex();
            this.m_v3 = new b2SimplexVertex();
            if(!_loc2_)
            {
               this.§_-Ui§ = new Vector.<b2SimplexVertex>(3);
               if(_loc1_)
               {
                  addr45:
                  super();
               }
               this.§_-Ui§[0] = this.m_v1;
               this.§_-Ui§[1] = this.m_v2;
               this.§_-Ui§[2] = this.m_v3;
               return;
               addr53:
            }
            §§goto(addr45);
         }
         §§goto(addr53);
      }
      
      public function §_-B3§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc10_:b2SimplexVertex = null;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         if(!_loc13_)
         {
            §§push(b2Settings);
            if(_loc14_ || this)
            {
               §§push(0 <= param1.count);
               if(!(_loc13_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc14_)
                     {
                        addr52:
                        §§pop();
                        §§push(param1.count <= 3);
                     }
                  }
                  §§pop().b2Assert(§§pop());
                  if(_loc14_)
                  {
                     this.§_-01§ = param1.count;
                     addr64:
                     var _loc8_:Vector.<b2SimplexVertex> = this.§_-Ui§;
                     var _loc9_:int = 0;
                     while(true)
                     {
                        §§push(_loc9_);
                        if(_loc14_ || param1)
                        {
                           §§push(this.§_-01§);
                           if(_loc14_ || param1)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§push(this.§_-01§);
                                 if(_loc14_)
                                 {
                                    §§push(1);
                                    if(!_loc13_)
                                    {
                                       addr184:
                                       if(§§pop() > §§pop())
                                       {
                                          _loc11_ = param1.§_-hj§;
                                          if(!_loc13_)
                                          {
                                             §§push(Number(this.§_-uh§()));
                                             §§push(Number(this.§_-uh§()));
                                             if(_loc14_)
                                             {
                                                _loc12_ = §§pop();
                                                if(!_loc13_)
                                                {
                                                   §§push(0.5);
                                                   if(!(_loc13_ && param3))
                                                   {
                                                      §§push(§§pop() * _loc11_);
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         addr217:
                                                         §§push(§§pop() < §§pop());
                                                         if(!_loc13_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc14_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr226:
                                                                     §§pop();
                                                                     §§push(2);
                                                                     if(!_loc13_)
                                                                     {
                                                                        addr233:
                                                                        addr232:
                                                                        addr230:
                                                                        §§push(§§pop() * _loc11_ < _loc12_);
                                                                        if(!(_loc13_ && this))
                                                                        {
                                                                           addr241:
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc14_ || param2)
                                                                              {
                                                                              }
                                                                              addr257:
                                                                              if(§§pop())
                                                                              {
                                                                                 addr258:
                                                                                 this.§_-01§ = 0;
                                                                                 addr261:
                                                                                 §§push(this.§_-01§);
                                                                                 break;
                                                                              }
                                                                              §§goto(addr261);
                                                                           }
                                                                           §§goto(addr257);
                                                                        }
                                                                        §§pop();
                                                                        if(_loc14_)
                                                                        {
                                                                           §§push(_loc12_ < Number.MIN_VALUE);
                                                                        }
                                                                        §§goto(addr261);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                            }
                                                            §§goto(addr241);
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr232);
                                             }
                                             §§goto(addr217);
                                          }
                                       }
                                       §§goto(addr258);
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr230);
                              }
                              else
                              {
                                 (_loc10_ = _loc8_[_loc9_]).indexA = param1.indexA[_loc9_];
                                 if(!_loc13_)
                                 {
                                    _loc10_.indexB = param1.indexB[_loc9_];
                                 }
                                 _loc6_ = param2.§_-Su§(_loc10_.indexA);
                                 _loc7_ = param4.§_-Su§(_loc10_.indexB);
                                 if(!_loc13_)
                                 {
                                    _loc10_.§_-s3§ = b2Math.§_-Y9§(param3,_loc6_);
                                    if(!(_loc13_ && this))
                                    {
                                       addr118:
                                       _loc10_.§_-yk§ = b2Math.§_-Y9§(param5,_loc7_);
                                       if(!(_loc13_ && this))
                                       {
                                          _loc10_.§_-ah§ = b2Math.§_-TD§(_loc10_.§_-yk§,_loc10_.§_-s3§);
                                          if(_loc13_ && param2)
                                          {
                                             continue;
                                          }
                                       }
                                       _loc10_.a = 0;
                                       if(!_loc14_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc9_++;
                                    continue;
                                 }
                                 §§goto(addr118);
                              }
                           }
                           §§goto(addr184);
                        }
                        break;
                     }
                     addr264:
                     if(§§pop() == §§pop())
                     {
                        (_loc10_ = _loc8_[0]).indexA = 0;
                        if(!_loc13_)
                        {
                           _loc10_.indexB = 0;
                        }
                        _loc6_ = param2.§_-Su§(0);
                        _loc7_ = param4.§_-Su§(0);
                        if(!(_loc13_ && this))
                        {
                           _loc10_.§_-s3§ = b2Math.§_-Y9§(param3,_loc6_);
                           if(_loc14_ || param1)
                           {
                              _loc10_.§_-yk§ = b2Math.§_-Y9§(param5,_loc7_);
                              if(_loc13_ && param3)
                              {
                              }
                              §§goto(addr346);
                           }
                           _loc10_.§_-ah§ = b2Math.§_-TD§(_loc10_.§_-yk§,_loc10_.§_-s3§);
                           if(!(_loc13_ && param3))
                           {
                              this.§_-01§ = 1;
                           }
                        }
                     }
                     addr346:
                     return;
                     §§push(0);
                  }
                  §§goto(addr64);
               }
            }
            §§goto(addr52);
         }
         §§goto(addr64);
      }
      
      public function §_-rB§(param1:b2SimplexCache) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            param1.§_-hj§ = this.§_-uh§();
            if(!_loc4_)
            {
               addr27:
               param1.count = uint(this.§_-01§);
            }
            var _loc2_:Vector.<b2SimplexVertex> = this.§_-Ui§;
            var _loc3_:int = 0;
            while(_loc3_ < this.§_-01§)
            {
               param1.indexA[_loc3_] = uint(_loc2_[_loc3_].indexA);
               if(!(_loc5_ || this))
               {
                  break;
               }
               param1.indexB[_loc3_] = uint(_loc2_[_loc3_].indexB);
               if(_loc5_ || _loc2_)
               {
                  _loc3_++;
                  if(_loc4_ && param1)
                  {
                     break;
                  }
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function §_-f2§() : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:b2Vec2 = null;
         var _loc2_:* = NaN;
         §§push(this.§_-01§);
         if(_loc4_)
         {
            var _loc3_:* = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               §§push(1);
               if(_loc4_ || _loc2_)
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_ || _loc2_)
                        {
                           addr110:
                           §§push(0);
                           if(_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr126:
                           §§push(1);
                           if(!_loc4_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(2);
                        if(!_loc5_)
                        {
                           addr118:
                           if(§§pop() === _loc3_)
                           {
                              §§goto(addr126);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     addr135:
                     switch(§§pop())
                     {
                        case 0:
                           return this.m_v1.§_-ah§.§_-D§();
                        case 1:
                           _loc1_ = b2Math.§_-TD§(this.m_v2.§_-ah§,this.m_v1.§_-ah§);
                           §§push(b2Math.§_-iK§(_loc1_,this.m_v1.§_-ah§.§_-D§()));
                           if(!_loc5_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc4_)
                              {
                                 addr48:
                                 _loc2_ = §§pop();
                                 §§push(_loc2_);
                              }
                              if(§§pop() > 0)
                              {
                                 return b2Math.§_-dj§(1,_loc1_);
                              }
                              return b2Math.§_-a4§(_loc1_,1);
                           }
                           §§goto(addr48);
                        default:
                           b2Settings.b2Assert(false);
                           return new b2Vec2();
                     }
                  }
               }
               §§goto(addr118);
            }
            §§goto(addr110);
         }
         §§goto(addr135);
      }
      
      public function §_-5s§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§_-01§);
         if(_loc2_)
         {
            var _loc1_:* = §§pop();
            if(!_loc3_)
            {
               §§push(0);
               §§push(_loc1_);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc2_)
                     {
                        addr166:
                        §§push(0);
                     }
                     else
                     {
                        addr175:
                        §§push(1);
                        if(!(_loc2_ || this))
                        {
                           addr192:
                           if(§§pop() === _loc1_)
                           {
                              addr201:
                              §§push(2);
                              if(_loc2_)
                              {
                                 addr204:
                              }
                           }
                           else
                           {
                              §§push(3);
                           }
                        }
                     }
                     addr210:
                     switch(§§pop())
                     {
                        case 0:
                           b2Settings.b2Assert(false);
                           return new b2Vec2();
                        case 1:
                           return this.m_v1.§_-ah§;
                        case 2:
                           §§push(§§findproperty(b2Vec2));
                           §§push(this.m_v1.a);
                           if(!_loc3_)
                           {
                              §§push(this.m_v1);
                              if(_loc2_)
                              {
                                 §§push(§§pop().§_-ah§.x);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc2_)
                                    {
                                       addr49:
                                       §§push(this.m_v2.a);
                                       if(_loc2_ || this)
                                       {
                                          §§push(this.m_v2);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop().§_-ah§);
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                §§push(§§pop().x);
                                                if(_loc2_ || _loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc2_ || this)
                                                   {
                                                      addr88:
                                                      §§push(§§pop() + §§pop());
                                                      §§push(this.m_v1.a);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         addr108:
                                                         addr105:
                                                         §§push(this.m_v1.§_-ah§.y);
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr135);
                                                         }
                                                         addr135:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            addr119:
                                                            §§push(this.m_v2.a);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr129:
                                                               §§push(§§pop() * this.m_v2.§_-ah§.y);
                                                            }
                                                         }
                                                         return new §§pop().b2Vec2(§§pop(),§§pop());
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§goto(addr119);
                                                   }
                                                   §§goto(addr135);
                                                }
                                                §§goto(addr129);
                                             }
                                             §§goto(addr108);
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr105);
                                    }
                                 }
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr49);
                        default:
                           b2Settings.b2Assert(false);
                           return new b2Vec2();
                     }
                  }
                  else
                  {
                     §§push(1);
                     §§push(_loc1_);
                     if(_loc2_)
                     {
                        addr172:
                        if(§§pop() === §§pop())
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr175);
                           }
                           §§goto(addr201);
                        }
                        else
                        {
                           §§push(2);
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr192);
                           }
                        }
                        §§goto(addr204);
                     }
                  }
                  §§goto(addr192);
               }
               §§goto(addr172);
            }
            §§goto(addr166);
         }
         §§goto(addr210);
      }
      
      public function §_-LS§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§_-01§);
         if(_loc5_)
         {
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               §§push(0);
               §§push(_loc3_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(_loc4_ && _loc3_)
                        {
                           addr450:
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              addr453:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    addr456:
                                    §§push(2);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr484:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             b2Settings.b2Assert(false);
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             addr307:
                                             §§push(param2);
                                             §§push(param1);
                                             §§push(this.m_v1.a);
                                             if(_loc5_ || param1)
                                             {
                                                §§push(this.m_v1.§_-s3§.y);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc5_ || param2)
                                                   {
                                                      §§push(this.m_v2.a);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(this.m_v2.§_-s3§);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     addr362:
                                                                     §§push(this.m_v3.a);
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        addr376:
                                                                        §§push(§§pop() * this.m_v3.§_-s3§.y);
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           addr385:
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        §§pop().y = §§pop();
                                                                        §§pop().y = _loc3_;
                                                                        break;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr385);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                   §§goto(addr385);
                                                }
                                                §§goto(addr376);
                                             }
                                             §§goto(addr362);
                                             break;
                                          case 1:
                                             param1.SetV(this.m_v1.§_-s3§);
                                             param2.SetV(this.m_v1.§_-yk§);
                                             break;
                                          case 2:
                                             §§push(param1);
                                             §§push(this.m_v1.a);
                                             if(_loc5_ || param1)
                                             {
                                                §§push(this.m_v1.§_-s3§.x);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr81:
                                                      §§push(this.m_v2.a);
                                                      if(!(_loc4_ && param2))
                                                      {
                                                         addr75:
                                                         §§push(§§pop() * this.m_v2.§_-s3§.x);
                                                      }
                                                      §§pop().x = §§pop() + §§pop();
                                                      if(_loc5_)
                                                      {
                                                         §§push(param1);
                                                         §§push(this.m_v1.a);
                                                         if(_loc5_)
                                                         {
                                                            §§push(this.m_v1.§_-s3§.y);
                                                            if(_loc5_ || this)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  addr109:
                                                                  §§push(this.m_v2.a);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     addr119:
                                                                     §§push(§§pop() * this.m_v2.§_-s3§.y);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§pop().y = §§pop();
                                                               if(_loc5_)
                                                               {
                                                                  §§push(param2);
                                                                  §§push(this.m_v1.a);
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     §§push(this.m_v1.§_-yk§.x);
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        addr174:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           §§push(this.m_v2.a);
                                                                           if(!(_loc4_ && param2))
                                                                           {
                                                                              §§push(§§pop() * this.m_v2.§_-yk§.x);
                                                                           }
                                                                        }
                                                                        §§pop().x = §§pop();
                                                                        if(_loc5_)
                                                                        {
                                                                           addr177:
                                                                           §§push(param2);
                                                                           §§push(this.m_v1.a);
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              §§push(this.m_v1.§_-yk§.y);
                                                                              if(!(_loc4_ && param2))
                                                                              {
                                                                                 addr218:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(this.m_v2.a);
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       §§push(§§pop() * this.m_v2.§_-yk§.y);
                                                                                    }
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr218);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr174);
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                            §§goto(addr119);
                                                         }
                                                         §§goto(addr109);
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr81);
                                                }
                                                §§goto(addr75);
                                             }
                                             §§goto(addr81);
                                          case 3:
                                             §§push(param2);
                                             §§push(param1);
                                             §§push(this.m_v1.a);
                                             if(_loc5_)
                                             {
                                                §§push(this.m_v1.§_-s3§.x);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(this.m_v2.a);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(this.m_v2.§_-s3§);
                                                         if(_loc5_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     addr283:
                                                                     §§push(this.m_v3.a);
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr292:
                                                                        addr291:
                                                                        addr288:
                                                                        §§push(§§pop() * this.m_v3.§_-s3§.x);
                                                                        if(_loc4_ && param2)
                                                                        {
                                                                        }
                                                                        addr302:
                                                                        _loc3_ = §§pop();
                                                                        §§pop().x = §§pop();
                                                                        §§pop().x = _loc3_;
                                                                        §§goto(addr307);
                                                                     }
                                                                     §§goto(addr302);
                                                                  }
                                                                  addr301:
                                                                  §§goto(addr302);
                                                                  §§push(§§pop());
                                                               }
                                                               §§goto(addr301);
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§goto(addr292);
                                                         }
                                                         §§goto(addr291);
                                                      }
                                                      §§goto(addr288);
                                                   }
                                                   §§goto(addr283);
                                                }
                                                §§goto(addr292);
                                             }
                                             §§goto(addr301);
                                          default:
                                             b2Settings.b2Assert(false);
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                       }
                                       return;
                                       addr483:
                                    }
                                    §§goto(addr483);
                                 }
                                 else
                                 {
                                    addr477:
                                    §§push(3);
                                 }
                              }
                              else
                              {
                                 §§push(3);
                                 if(!_loc4_)
                                 {
                                    addr476:
                                    if(§§pop() === _loc3_)
                                    {
                                       §§goto(addr477);
                                    }
                                    else
                                    {
                                       §§goto(addr483);
                                       §§push(4);
                                    }
                                    §§goto(addr483);
                                 }
                              }
                              addr478:
                              §§goto(addr483);
                           }
                           §§goto(addr476);
                        }
                        §§goto(addr483);
                     }
                     §§goto(addr456);
                  }
                  else
                  {
                     §§push(1);
                     §§push(_loc3_);
                     if(_loc5_ || param2)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc4_ && param1))
                           {
                              §§push(1);
                           }
                           else
                           {
                              §§goto(addr456);
                           }
                           §§goto(addr483);
                        }
                        else
                        {
                           §§push(2);
                           if(!(_loc4_ && param1))
                           {
                              §§goto(addr450);
                           }
                        }
                        §§goto(addr478);
                     }
                  }
               }
               §§goto(addr453);
            }
            §§goto(addr456);
         }
         §§goto(addr484);
      }
      
      public function §_-uh§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§_-01§);
         if(!(_loc2_ && _loc1_))
         {
            var _loc1_:* = §§pop();
            if(_loc3_)
            {
               §§push(0);
               if(_loc3_ || _loc2_)
               {
                  §§push(_loc1_);
                  if(!_loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr115:
                           §§push(0);
                        }
                        else
                        {
                           addr155:
                           §§push(2);
                           if(!_loc3_)
                           {
                              addr177:
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc2_)
                        {
                           addr120:
                           §§push(_loc1_);
                           if(_loc3_ || _loc3_)
                           {
                              addr128:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc2_ && this)
                                 {
                                 }
                              }
                              else
                              {
                                 addr139:
                                 §§push(2);
                                 §§push(_loc1_);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr147:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr155);
                                       }
                                       else
                                       {
                                          addr176:
                                          §§push(3);
                                       }
                                       §§goto(addr177);
                                    }
                                    else
                                    {
                                       §§push(3);
                                       if(_loc3_ || _loc1_)
                                       {
                                          §§push(_loc1_);
                                       }
                                       §§goto(addr182);
                                    }
                                 }
                                 if(§§pop() !== §§pop())
                                 {
                                    addr182:
                                    switch(1)
                                    {
                                       case 0:
                                          b2Settings.b2Assert(false);
                                          if(_loc3_ || this)
                                          {
                                             §§push(0);
                                             if(!_loc2_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr34);
                                          }
                                       case 3:
                                          §§push(b2Math.§_-iK§(b2Math.§_-TD§(this.m_v2.§_-ah§,this.m_v1.§_-ah§),b2Math.§_-TD§(this.m_v3.§_-ah§,this.m_v1.§_-ah§)));
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§goto(addr75);
                                          break;
                                       case 1:
                                          §§push(0);
                                          if(!_loc2_)
                                          {
                                             addr34:
                                             return §§pop();
                                          }
                                          break;
                                       case 2:
                                          §§push(b2Math.§_-TD§(this.m_v1.§_-ah§,this.m_v2.§_-ah§).§_-dP§());
                                          if(_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          break;
                                       default:
                                          b2Settings.b2Assert(false);
                                          addr75:
                                          return §§pop();
                                    }
                                    return 0;
                                    §§push(4);
                                 }
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr128);
               }
               §§goto(addr120);
            }
            §§goto(addr115);
         }
         §§goto(addr182);
      }
      
      public function Solve2() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:b2Vec2 = this.m_v1.§_-ah§;
         var _loc2_:b2Vec2 = this.m_v2.§_-ah§;
         var _loc3_:b2Vec2 = b2Math.§_-TD§(_loc2_,_loc1_);
         §§push(_loc1_.x);
         if(_loc8_ || _loc2_)
         {
            §§push(_loc3_.x);
            if(_loc8_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc7_ && _loc2_))
               {
                  §§push(_loc1_.y);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc3_.y);
                     if(_loc7_)
                     {
                     }
                     addr68:
                     var _loc4_:* = §§pop();
                     if(_loc8_)
                     {
                        §§push(0);
                        if(_loc8_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(!_loc7_)
                              {
                                 this.m_v1.a = 1;
                                 if(!_loc7_)
                                 {
                                    this.§_-01§ = 1;
                                    if(_loc7_ && _loc3_)
                                    {
                                       addr94:
                                       §§push(_loc2_.x);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(_loc3_.x);
                                          if(!(_loc7_ && _loc1_))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc8_)
                                             {
                                                addr115:
                                                §§push(_loc2_.y);
                                                if(!_loc7_)
                                                {
                                                   addr119:
                                                   §§push(§§pop() * _loc3_.y);
                                                   if(_loc7_ && _loc2_)
                                                   {
                                                   }
                                                   addr146:
                                                   var _loc5_:* = §§pop();
                                                   if(_loc8_)
                                                   {
                                                      if(§§pop() <= 0)
                                                      {
                                                         if(!(_loc7_ && _loc1_))
                                                         {
                                                            this.m_v2.a = 1;
                                                            if(_loc8_ || this)
                                                            {
                                                               this.§_-01§ = 1;
                                                               if(!(_loc7_ && _loc1_))
                                                               {
                                                                  this.m_v1.Set(this.m_v2);
                                                                  if(_loc7_ && _loc3_)
                                                                  {
                                                                     addr192:
                                                                     §§push(1);
                                                                     §§push(_loc5_);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(§§pop() + _loc4_);
                                                                     }
                                                                     §§push(§§pop() / §§pop());
                                                                     if(!(_loc7_ && _loc1_))
                                                                     {
                                                                        addr207:
                                                                        var _loc6_:Number = §§pop();
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(this.m_v1);
                                                                           §§push(_loc5_);
                                                                           if(!(_loc7_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() * _loc6_);
                                                                           }
                                                                           §§pop().a = §§pop();
                                                                           if(!(_loc7_ && _loc1_))
                                                                           {
                                                                              §§push(this.m_v2);
                                                                              §§push(_loc4_);
                                                                              if(!(_loc7_ && _loc1_))
                                                                              {
                                                                                 §§push(§§pop() * _loc6_);
                                                                              }
                                                                              §§pop().a = §§pop();
                                                                              if(_loc8_)
                                                                              {
                                                                                 addr252:
                                                                                 this.§_-01§ = 2;
                                                                              }
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr252);
                                                                     }
                                                                     §§goto(addr207);
                                                                  }
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   §§goto(addr207);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   addr144:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§goto(addr146);
                                             §§push(§§pop());
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr115);
                                    }
                                 }
                                 §§goto(addr94);
                              }
                              return;
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr144);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc8_)
                  {
                     addr63:
                     §§push(-§§pop());
                     if(_loc8_)
                     {
                        addr66:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr68);
                  §§push(§§pop());
               }
               §§goto(addr66);
            }
            §§goto(addr68);
         }
         §§goto(addr63);
      }
      
      public function Solve3() : void
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc24_:* = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc1_:b2Vec2 = this.m_v1.§_-ah§;
         var _loc2_:b2Vec2 = this.m_v2.§_-ah§;
         var _loc3_:b2Vec2 = this.m_v3.§_-ah§;
         var _loc4_:b2Vec2 = b2Math.§_-TD§(_loc2_,_loc1_);
         §§push(b2Math.§_-Ly§(_loc1_,_loc4_));
         if(!(_loc27_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(b2Math.§_-Ly§(_loc2_,_loc4_));
         if(_loc28_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:*;
         §§push(_loc6_ = §§pop());
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc5_);
         if(!_loc27_)
         {
            §§push(-§§pop());
            if(!(_loc27_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         var _loc9_:b2Vec2 = b2Math.§_-TD§(_loc3_,_loc1_);
         §§push(b2Math.§_-Ly§(_loc1_,_loc9_));
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(b2Math.§_-Ly§(_loc3_,_loc9_));
         if(_loc28_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:*;
         §§push(_loc11_ = §§pop());
         if(!(_loc27_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc10_);
         if(_loc28_)
         {
            §§push(-§§pop());
            if(_loc28_ || _loc1_)
            {
               addr123:
               §§push(Number(§§pop()));
            }
            var _loc13_:* = §§pop();
            var _loc14_:b2Vec2 = b2Math.§_-TD§(_loc3_,_loc2_);
            §§push(b2Math.§_-Ly§(_loc2_,_loc14_));
            if(!_loc27_)
            {
               §§push(Number(§§pop()));
            }
            var _loc15_:* = §§pop();
            §§push(b2Math.§_-Ly§(_loc3_,_loc14_));
            if(_loc28_)
            {
               §§push(Number(§§pop()));
            }
            var _loc16_:*;
            §§push(_loc16_ = §§pop());
            if(_loc28_)
            {
               §§push(Number(§§pop()));
            }
            var _loc17_:* = §§pop();
            §§push(_loc15_);
            if(_loc28_)
            {
               §§push(-§§pop());
               if(!(_loc27_ && this))
               {
                  addr163:
                  §§push(Number(§§pop()));
               }
               var _loc18_:* = §§pop();
               §§push(b2Math.§_-iK§(_loc4_,_loc9_));
               if(_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc19_:*;
               §§push(_loc19_ = §§pop());
               if(_loc28_ || this)
               {
                  §§push(§§pop() * b2Math.§_-iK§(_loc2_,_loc3_));
                  if(_loc28_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc20_:* = §§pop();
               §§push(_loc19_);
               if(!_loc27_)
               {
                  §§push(§§pop() * b2Math.§_-iK§(_loc3_,_loc1_));
                  if(_loc28_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc21_:* = §§pop();
               §§push(_loc19_);
               if(!_loc27_)
               {
                  §§push(§§pop() * b2Math.§_-iK§(_loc1_,_loc2_));
                  if(!(_loc27_ && _loc2_))
                  {
                     addr227:
                     §§push(Number(§§pop()));
                  }
                  var _loc22_:* = §§pop();
                  if(_loc28_)
                  {
                     §§push(_loc8_);
                     if(!(_loc27_ && this))
                     {
                        §§push(0);
                        if(!(_loc27_ && _loc3_))
                        {
                           §§push(§§pop() <= §§pop());
                           if(§§pop() <= §§pop())
                           {
                              §§pop();
                              §§push(_loc13_);
                              §§push(0);
                              if(!_loc27_)
                              {
                                 addr256:
                                 if(§§pop() <= §§pop())
                                 {
                                    §§push(this.m_v1);
                                    if(_loc28_)
                                    {
                                       §§pop().a = 1;
                                       if(!(_loc27_ && _loc1_))
                                       {
                                          this.§_-01§ = 1;
                                          return;
                                       }
                                       addr785:
                                       §§push(this.m_v1);
                                       §§push(this.m_v3);
                                    }
                                    else
                                    {
                                       addr671:
                                       §§push(this.m_v3);
                                       if(_loc28_)
                                       {
                                          §§pop().Set(§§pop());
                                          if(!_loc27_)
                                          {
                                             return;
                                          }
                                          addr729:
                                          §§push(1);
                                          if(!_loc27_)
                                          {
                                             §§push(_loc17_);
                                             if(!(_loc27_ && _loc3_))
                                             {
                                                §§push(_loc18_);
                                                if(!(_loc27_ && _loc3_))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc27_ && _loc2_))
                                                   {
                                                      addr758:
                                                      _loc26_ = §§pop() / §§pop();
                                                      addr757:
                                                      addr761:
                                                      addr771:
                                                      §§push(this.m_v2);
                                                      §§push(_loc17_);
                                                      if(!(_loc27_ && this))
                                                      {
                                                         addr770:
                                                         §§push(§§pop() * _loc26_);
                                                      }
                                                      §§pop().a = §§pop();
                                                      if(!_loc27_)
                                                      {
                                                         addr776:
                                                         §§push(this.m_v3);
                                                         §§push(_loc18_);
                                                         if(!_loc27_)
                                                         {
                                                            addr779:
                                                            §§push(§§pop() * _loc26_);
                                                         }
                                                         §§pop().a = §§pop();
                                                         addr782:
                                                         this.§_-01§ = 2;
                                                         §§goto(addr785);
                                                      }
                                                      addr800:
                                                      §§push(1);
                                                      §§push(_loc20_);
                                                      §§push(_loc21_);
                                                      if(!(_loc27_ && _loc2_))
                                                      {
                                                         addr808:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc28_)
                                                         {
                                                            addr812:
                                                            §§push(§§pop() + _loc22_);
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                         if(_loc28_ || _loc1_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc23_:* = §§pop();
                                                         if(_loc28_ || _loc2_)
                                                         {
                                                            §§push(this.m_v1);
                                                            §§push(_loc20_);
                                                            if(_loc28_)
                                                            {
                                                               §§push(§§pop() * _loc23_);
                                                            }
                                                            §§pop().a = §§pop();
                                                            if(_loc28_)
                                                            {
                                                               §§push(this.m_v2);
                                                               §§push(_loc21_);
                                                               if(!(_loc27_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() * _loc23_);
                                                               }
                                                               §§pop().a = §§pop();
                                                               if(_loc28_)
                                                               {
                                                                  addr855:
                                                                  §§push(this.m_v3);
                                                                  §§push(_loc22_);
                                                                  if(_loc28_)
                                                                  {
                                                                     §§push(§§pop() * _loc23_);
                                                                  }
                                                                  §§pop().a = §§pop();
                                                                  if(!_loc28_)
                                                                  {
                                                                  }
                                                                  §§goto(addr875);
                                                               }
                                                               this.§_-01§ = 3;
                                                               addr875:
                                                               return;
                                                            }
                                                         }
                                                         §§goto(addr855);
                                                      }
                                                   }
                                                   §§goto(addr812);
                                                }
                                                §§goto(addr808);
                                             }
                                          }
                                          §§goto(addr800);
                                       }
                                    }
                                    §§pop().Set(§§pop());
                                    if(!(_loc27_ && _loc2_))
                                    {
                                       return;
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc7_ > 0);
                                    if(_loc7_ > 0)
                                    {
                                       §§pop();
                                       §§push(_loc8_);
                                       if(!(_loc27_ && this))
                                       {
                                          §§push(0);
                                          if(_loc28_)
                                          {
                                             addr294:
                                             §§push(§§pop() > §§pop());
                                             §§push(§§pop() > §§pop());
                                             if(!(_loc27_ && _loc1_))
                                             {
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   addr306:
                                                   §§push(_loc22_ <= 0);
                                                   if(!(_loc27_ && _loc2_))
                                                   {
                                                      addr314:
                                                      if(§§pop())
                                                      {
                                                         §§push(1);
                                                         if(_loc28_ || _loc1_)
                                                         {
                                                            §§push(_loc7_);
                                                            §§push(_loc8_);
                                                            if(_loc28_)
                                                            {
                                                               §§push(Number(§§pop() / (§§pop() + §§pop())));
                                                               if(_loc28_ || this)
                                                               {
                                                                  _loc24_ = §§pop();
                                                                  if(_loc28_ || _loc3_)
                                                                  {
                                                                     §§push(this.m_v1);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(!(_loc27_ && _loc1_))
                                                                        {
                                                                           §§push(_loc24_);
                                                                           if(!(_loc27_ && _loc1_))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc28_ || _loc3_)
                                                                              {
                                                                                 §§pop().a = §§pop();
                                                                                 §§push(this.m_v2);
                                                                                 if(!(_loc27_ && _loc2_))
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(_loc28_ || this)
                                                                                    {
                                                                                       §§push(_loc24_);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc27_ && _loc1_))
                                                                                          {
                                                                                             §§pop().a = §§pop();
                                                                                             this.§_-01§ = 2;
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             addr559:
                                                                                             §§push(_loc18_ <= 0);
                                                                                             if(_loc28_ || _loc1_)
                                                                                             {
                                                                                                addr569:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§push(this.m_v2);
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      addr574:
                                                                                                      §§pop().a = 1;
                                                                                                      if(_loc28_ || _loc3_)
                                                                                                      {
                                                                                                         this.§_-01§ = 1;
                                                                                                         §§push(this.m_v1);
                                                                                                         if(_loc28_ || _loc2_)
                                                                                                         {
                                                                                                            addr595:
                                                                                                            §§pop().Set(this.m_v2);
                                                                                                            if(_loc28_ || _loc3_)
                                                                                                            {
                                                                                                               return;
                                                                                                            }
                                                                                                            addr639:
                                                                                                            §§push(this.m_v3);
                                                                                                            if(!(_loc27_ && this))
                                                                                                            {
                                                                                                               §§pop().a = 1;
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  this.§_-01§ = 1;
                                                                                                                  if(!(_loc27_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(this.m_v1);
                                                                                                                     if(!(_loc27_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§goto(addr671);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr785);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr679:
                                                                                                                  §§push(_loc17_);
                                                                                                                  if(_loc28_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           addr693:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr695:
                                                                                                                              §§pop();
                                                                                                                              §§push(_loc18_);
                                                                                                                              if(_loc28_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr706:
                                                                                                                                 §§push(§§pop() > 0);
                                                                                                                                 if(§§pop() > 0)
                                                                                                                                 {
                                                                                                                                    if(_loc28_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc28_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc20_);
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             addr728:
                                                                                                                                             if(§§pop() <= 0)
                                                                                                                                             {
                                                                                                                                                §§goto(addr729);
                                                                                                                                             }
                                                                                                                                             §§goto(addr800);
                                                                                                                                          }
                                                                                                                                          §§goto(addr757);
                                                                                                                                       }
                                                                                                                                       §§goto(addr782);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr728);
                                                                                                                              }
                                                                                                                              §§goto(addr757);
                                                                                                                           }
                                                                                                                           §§goto(addr706);
                                                                                                                        }
                                                                                                                        §§goto(addr695);
                                                                                                                     }
                                                                                                                     §§goto(addr706);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr776);
                                                                                                         }
                                                                                                         §§goto(addr671);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr628:
                                                                                                         §§push(_loc17_);
                                                                                                         if(_loc28_ || _loc1_)
                                                                                                         {
                                                                                                            addr638:
                                                                                                            if(§§pop() <= 0)
                                                                                                            {
                                                                                                               §§goto(addr639);
                                                                                                            }
                                                                                                            §§goto(addr679);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr758);
                                                                                                   }
                                                                                                   §§goto(addr761);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(_loc12_);
                                                                                                   if(_loc28_)
                                                                                                   {
                                                                                                      addr609:
                                                                                                      §§push(§§pop() <= 0);
                                                                                                      if(!(_loc27_ && _loc3_))
                                                                                                      {
                                                                                                         addr618:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc28_ || _loc3_)
                                                                                                            {
                                                                                                               addr627:
                                                                                                               §§pop();
                                                                                                               §§goto(addr628);
                                                                                                            }
                                                                                                            §§goto(addr706);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr638);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr808);
                                                                                             }
                                                                                             §§goto(addr627);
                                                                                          }
                                                                                          §§goto(addr771);
                                                                                       }
                                                                                       §§goto(addr770);
                                                                                    }
                                                                                    §§goto(addr758);
                                                                                 }
                                                                                 §§goto(addr574);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr491:
                                                                                 §§pop().a = §§pop();
                                                                                 §§push(this.m_v3);
                                                                                 if(_loc28_ || this)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       §§push(_loc25_);
                                                                                       if(_loc28_ || _loc1_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc28_ || _loc3_)
                                                                                          {
                                                                                             §§pop().a = §§pop();
                                                                                             this.§_-01§ = 2;
                                                                                             §§push(this.m_v2);
                                                                                             if(_loc28_ || _loc2_)
                                                                                             {
                                                                                                §§pop().Set(this.m_v3);
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr758);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr779);
                                                                                 }
                                                                              }
                                                                              §§goto(addr776);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr490:
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr491);
                                                                     }
                                                                     §§goto(addr671);
                                                                  }
                                                                  §§goto(addr695);
                                                               }
                                                               §§goto(addr638);
                                                            }
                                                            §§goto(addr808);
                                                         }
                                                         §§goto(addr758);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc12_);
                                                         if(_loc28_)
                                                         {
                                                            §§push(§§pop() > 0);
                                                            if(_loc28_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr418:
                                                                  §§pop();
                                                                  §§push(_loc13_);
                                                                  if(_loc28_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() > 0);
                                                                  }
                                                                  §§goto(addr609);
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc28_)
                                                                  {
                                                                     §§pop();
                                                                     addr444:
                                                                     if(_loc21_ <= 0)
                                                                     {
                                                                        if(!(_loc27_ && _loc1_))
                                                                        {
                                                                           §§push(1);
                                                                           if(_loc28_ || _loc2_)
                                                                           {
                                                                              §§push(_loc12_);
                                                                              §§push(_loc13_);
                                                                              if(_loc28_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(_loc28_ || this)
                                                                                    {
                                                                                       _loc25_ = §§pop();
                                                                                       §§push(this.m_v1);
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          if(_loc28_ || _loc2_)
                                                                                          {
                                                                                             §§goto(addr490);
                                                                                             §§push(_loc25_);
                                                                                          }
                                                                                          §§goto(addr491);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr595);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr638);
                                                                                    }
                                                                                    §§goto(addr679);
                                                                                 }
                                                                                 §§goto(addr808);
                                                                              }
                                                                              §§goto(addr812);
                                                                           }
                                                                           §§goto(addr758);
                                                                        }
                                                                        §§goto(addr729);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc28_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc28_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 if(!(_loc27_ && _loc1_))
                                                                                 {
                                                                                    §§pop();
                                                                                    §§goto(addr559);
                                                                                 }
                                                                                 §§goto(addr618);
                                                                              }
                                                                              §§goto(addr569);
                                                                           }
                                                                           §§goto(addr559);
                                                                        }
                                                                     }
                                                                     §§goto(addr758);
                                                                  }
                                                                  §§goto(addr693);
                                                               }
                                                               §§goto(addr444);
                                                            }
                                                            §§goto(addr418);
                                                         }
                                                      }
                                                      §§goto(addr609);
                                                   }
                                                   §§goto(addr627);
                                                }
                                                §§goto(addr314);
                                             }
                                             §§goto(addr693);
                                          }
                                          §§goto(addr706);
                                       }
                                       §§goto(addr559);
                                    }
                                    §§goto(addr294);
                                 }
                                 §§goto(addr758);
                              }
                              §§goto(addr306);
                           }
                           §§goto(addr256);
                        }
                     }
                     §§goto(addr444);
                  }
                  §§goto(addr306);
               }
               §§goto(addr227);
            }
            §§goto(addr163);
         }
         §§goto(addr123);
      }
   }
}
