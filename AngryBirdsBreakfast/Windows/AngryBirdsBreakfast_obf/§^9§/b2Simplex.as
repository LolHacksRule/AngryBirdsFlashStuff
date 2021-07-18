package §^9§
{
   import §"y§.*;
   import §'F§.*;
   import §6Z§.*;
   
   class b2Simplex
   {
       
      
      public var m_v1:b2SimplexVertex;
      
      public var m_v2:b2SimplexVertex;
      
      public var m_v3:b2SimplexVertex;
      
      public var §-!L§:Vector.<b2SimplexVertex>;
      
      public var §=r§:int;
      
      function b2Simplex()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.m_v1 = new b2SimplexVertex();
            loop0:
            while(true)
            {
               this.m_v2 = new b2SimplexVertex();
               loop1:
               while(true)
               {
                  this.m_v3 = new b2SimplexVertex();
                  loop2:
                  while(true)
                  {
                     this.§-!L§ = new Vector.<b2SimplexVertex>(3);
                     while(_loc1_)
                     {
                        super();
                        loop4:
                        while(!_loc2_)
                        {
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                           this.§-!L§[0] = this.m_v1;
                           loop5:
                           while(true)
                           {
                              this.§-!L§[1] = this.m_v2;
                              while(true)
                              {
                                 if(_loc1_ || this)
                                 {
                                    if(_loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              continue loop1;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public function §^!0§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc10_:b2SimplexVertex = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         if(!(_loc14_ && param1))
         {
            §§push(b2Settings);
            if(_loc13_)
            {
               §§push(0 <= param1.count);
               if(_loc13_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc13_)
                     {
                        addr54:
                        §§pop();
                        §§push(param1.count <= 3);
                     }
                  }
                  §§pop().b2Assert(§§pop());
                  if(_loc13_)
                  {
                     this.§=r§ = param1.count;
                  }
                  §§goto(addr66);
               }
            }
            §§goto(addr54);
         }
         addr66:
         var _loc8_:Vector.<b2SimplexVertex> = this.§-!L§;
         var _loc9_:int = 0;
         while(true)
         {
            §§push(_loc9_);
            if(!_loc14_)
            {
               §§push(this.§=r§);
               if(!_loc14_)
               {
                  if(§§pop() < §§pop())
                  {
                     (_loc10_ = _loc8_[_loc9_]).indexA = param1.indexA[_loc9_];
                     if(_loc13_ || this)
                     {
                        _loc10_.indexB = param1.indexB[_loc9_];
                     }
                     _loc6_ = param2.§0K§(_loc10_.indexA);
                     _loc7_ = param4.§0K§(_loc10_.indexB);
                     if(_loc13_)
                     {
                        _loc10_.§1?§ = b2Math.§!v§(param3,_loc6_);
                        while(true)
                        {
                           _loc10_.§[!T§ = b2Math.§!v§(param5,_loc7_);
                           while(!_loc14_)
                           {
                              _loc10_.§%6§ = b2Math.§";§(_loc10_.§[!T§,_loc10_.§1?§);
                              loop3:
                              while(_loc13_)
                              {
                                 while(true)
                                 {
                                    _loc10_.a = 0;
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        _loc9_++;
                        if(_loc14_ && this)
                        {
                           continue;
                        }
                        if(_loc13_)
                        {
                           if(true)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr140);
                        }
                        §§goto(addr126);
                     }
                     continue;
                  }
                  if(_loc13_)
                  {
                     §§push(this.§=r§);
                     if(_loc13_)
                     {
                        break;
                     }
                     §§goto(addr344);
                  }
                  §§goto(addr345);
               }
               §§goto(addr344);
            }
            break;
         }
         §§push(1);
         if(!(_loc14_ && param2))
         {
            if(§§pop() > §§pop())
            {
               if(!_loc14_)
               {
                  §§push(param1.§='§);
                  if(_loc13_ || this)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc14_ && param3))
                     {
                        _loc11_ = §§pop();
                        if(_loc13_)
                        {
                           §§push(this.§3l§());
                           if(!(_loc14_ && param3))
                           {
                              addr321:
                              §§push(Number(§§pop()));
                           }
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(true)
                              {
                                 _loc12_ = §§pop();
                                 addr324:
                                 loop12:
                                 while(true)
                                 {
                                    §§push(0.5);
                                    if(_loc13_ || param1)
                                    {
                                       §§push(§§pop() * _loc11_);
                                    }
                                    loop13:
                                    while(true)
                                    {
                                       §§push(§§pop() < §§pop());
                                       loop14:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop15:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(!_loc14_)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(2);
                                                         if(!(_loc13_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() * _loc11_);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(_loc13_ || this)
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(_loc13_)
                                                                  {
                                                                     if(!(_loc13_ || param3))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() < §§pop());
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        if(_loc13_ || param1)
                                                                        {
                                                                           if(!(_loc13_ || param3))
                                                                           {
                                                                              break;
                                                                              addr300:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc14_ && param1)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(§§pop() < Number.MIN_VALUE);
                                                                                    addr220:
                                                                                    continue loop18;
                                                                                    if(!(_loc13_ || param3))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    while(§§pop())
                                                                                    {
                                                                                       if(_loc14_ && param3)
                                                                                       {
                                                                                          break loop16;
                                                                                       }
                                                                                       this.§=r§ = 0;
                                                                                       if(!(_loc13_ || this))
                                                                                       {
                                                                                          break loop16;
                                                                                       }
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    §§push(this.§=r§);
                                                                                    break loop17;
                                                                                    addr232:
                                                                                 }
                                                                                 addr310:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr232);
                                                                              }
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop7;
                                                      }
                                                      §§goto(addr344);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr345);
                                             }
                                             §§goto(addr300);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr345);
                     }
                     §§goto(addr321);
                  }
                  §§goto(addr324);
               }
               §§goto(addr311);
            }
            §§goto(addr341);
         }
         addr344:
         if(§§pop() == 0)
         {
            addr345:
            (_loc10_ = _loc8_[0]).indexA = 0;
            if(!_loc14_)
            {
               _loc10_.indexB = 0;
            }
            _loc6_ = param2.§0K§(0);
            _loc7_ = param4.§0K§(0);
            if(!(_loc14_ && param3))
            {
               _loc10_.§1?§ = b2Math.§!v§(param3,_loc6_);
               while(true)
               {
                  _loc10_.§[!T§ = b2Math.§!v§(param5,_loc7_);
                  addr382:
                  if(!(_loc14_ && param1))
                  {
                     if(false)
                     {
                        loop10:
                        while(true)
                        {
                           _loc10_.§%6§ = b2Math.§";§(_loc10_.§[!T§,_loc10_.§1?§);
                           addr400:
                           addr425:
                           while(!(_loc14_ && param2))
                           {
                              this.§=r§ = 1;
                              if(_loc14_)
                              {
                                 continue;
                              }
                              §§goto(addr382);
                           }
                           while(true)
                           {
                              continue loop10;
                              §§goto(addr400);
                           }
                        }
                     }
                     §§goto(addr433);
                  }
               }
            }
            §§goto(addr425);
         }
         addr433:
      }
      
      public function §"!'§(param1:b2SimplexCache) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.§='§ = this.§3l§();
            if(!_loc5_)
            {
               addr24:
               param1.count = uint(this.§=r§);
            }
            var _loc2_:Vector.<b2SimplexVertex> = this.§-!L§;
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= this.§=r§)
               {
                  if(!(_loc5_ && param1))
                  {
                     if(_loc4_)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           break;
                        }
                        param1.indexB[_loc3_] = uint(_loc2_[_loc3_].indexB);
                        addr108:
                     }
                     _loc3_++;
                  }
                  continue;
               }
               param1.indexA[_loc3_] = uint(_loc2_[_loc3_].indexA);
               §§goto(addr108);
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §,!%§() : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:b2Vec2 = null;
         var _loc2_:* = NaN;
         do
         {
            §§push(this.§=r§);
            if(_loc5_)
            {
               var _loc3_:* = §§pop();
               if(!_loc4_)
               {
                  §§push(1);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(_loc3_);
                     if(!(_loc4_ && this))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc5_ || _loc3_)
                           {
                              addr152:
                              §§push(0);
                              if(_loc5_)
                              {
                                 addr179:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       return this.m_v1.§%6§.§4l§();
                                    case 1:
                                       _loc1_ = b2Math.§";§(this.m_v2.§%6§,this.m_v1.§%6§);
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       §§push(b2Math.§9""§(_loc1_,this.m_v1.§%6§.§4l§()));
                                       if(_loc5_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          §§goto(addr119);
                                       }
                                 }
                                 addr179:
                              }
                              else
                              {
                                 addr159:
                                 if(§§pop() !== _loc3_)
                                 {
                                    §§goto(addr179);
                                    §§push(2);
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr179);
                           }
                           §§push(1);
                           if(!_loc5_)
                           {
                           }
                        }
                        else
                        {
                           §§push(2);
                           if(_loc5_)
                           {
                              §§goto(addr159);
                           }
                        }
                        §§goto(addr179);
                     }
                  }
                  §§goto(addr159);
               }
               §§goto(addr152);
            }
            §§goto(addr179);
         }
         while(true);
         
         b2Settings.b2Assert(false);
         if(_loc5_)
         {
            return new b2Vec2();
         }
         if(_loc4_ && _loc2_)
         {
            addr119:
            while(true)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  break;
               }
               continue loop2;
            }
            if(§§pop() > 0)
            {
               return b2Math.§6"%§(1,_loc1_);
            }
            addr65:
            return b2Math.§+2§(_loc1_,1);
         }
         §§goto(addr65);
      }
      
      public function §&!#§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§=r§);
         if(!_loc3_)
         {
            var _loc1_:* = §§pop();
            if(!(_loc3_ && _loc3_))
            {
               §§push(0);
               if(_loc2_ || _loc1_)
               {
                  §§push(_loc1_);
                  if(_loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(!(_loc2_ || _loc3_))
                           {
                              addr214:
                              §§push(_loc1_);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr222:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr230:
                                       §§push(1);
                                       if(!_loc3_)
                                       {
                                          addr258:
                                          loop1:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                b2Settings.b2Assert(false);
                                                break;
                                             default:
                                                while(true)
                                                {
                                                   b2Settings.b2Assert(false);
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      break loop1;
                                                   }
                                                }
                                                if(!(_loc3_ && this))
                                                {
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      return new b2Vec2();
                                                   }
                                                }
                                             case 2:
                                                §§push(§§findproperty(b2Vec2));
                                                §§push(this.m_v1.a);
                                                if(_loc2_)
                                                {
                                                   §§push(this.m_v1);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop().§%6§.x);
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            addr74:
                                                            §§push(this.m_v2.a);
                                                            if(_loc2_)
                                                            {
                                                               §§push(this.m_v2);
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  §§push(§§pop().§%6§);
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr108:
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push(this.m_v1.a);
                                                                           if(_loc2_)
                                                                           {
                                                                              addr116:
                                                                              addr113:
                                                                              §§push(this.m_v1.§%6§.y);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§goto(addr153);
                                                                              }
                                                                              addr153:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 addr137:
                                                                                 §§push(this.m_v2.a);
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop() * this.m_v2.§%6§.y);
                                                                                 }
                                                                              }
                                                                              return new §§pop().b2Vec2(§§pop(),§§pop());
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§goto(addr137);
                                                                        }
                                                                     }
                                                                     §§goto(addr153);
                                                                  }
                                                                  §§goto(addr116);
                                                               }
                                                               §§goto(addr137);
                                                            }
                                                            §§goto(addr113);
                                                         }
                                                         §§goto(addr108);
                                                      }
                                                      §§goto(addr116);
                                                   }
                                                   §§goto(addr108);
                                                }
                                                §§goto(addr74);
                                             case 1:
                                                return this.m_v1.§%6§;
                                          }
                                          return new b2Vec2();
                                          addr257:
                                       }
                                       else
                                       {
                                          addr252:
                                          §§goto(addr257);
                                       }
                                    }
                                    else
                                    {
                                       addr239:
                                       §§push(2);
                                       if(!_loc3_)
                                       {
                                          §§goto(addr252);
                                       }
                                    }
                                    §§goto(addr257);
                                 }
                                 else
                                 {
                                    §§push(2);
                                    if(_loc2_)
                                    {
                                       §§push(_loc1_);
                                    }
                                    §§goto(addr252);
                                 }
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr239);
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           else
                           {
                              addr210:
                           }
                           §§goto(addr257);
                        }
                        §§goto(addr239);
                     }
                     else
                     {
                        §§push(1);
                        if(_loc2_)
                        {
                           §§goto(addr214);
                        }
                     }
                     §§goto(addr252);
                  }
                  §§goto(addr222);
               }
               §§goto(addr210);
            }
            §§goto(addr230);
         }
         §§goto(addr258);
      }
      
      public function §^!h§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§=r§);
         if(!(_loc4_ && this))
         {
            var _loc3_:* = §§pop();
            if(!(_loc4_ && this))
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           addr442:
                           §§push(0);
                           if(_loc4_)
                           {
                              addr501:
                              if(§§pop() === _loc3_)
                              {
                                 addr502:
                                 §§push(3);
                                 if(!_loc4_)
                                 {
                                    addr515:
                                 }
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                           addr521:
                           switch(§§pop())
                           {
                              case 0:
                                 b2Settings.b2Assert(false);
                                 break;
                                 addr217:
                              case 1:
                                 param1.SetV(this.m_v1.§1?§);
                                 if(!_loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       param2.SetV(this.m_v1.§[!T§);
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       break;
                                    }
                                    §§goto(addr217);
                                 }
                                 else
                                 {
                                    addr301:
                                    §§push(param2);
                                    §§push(param1);
                                    §§push(this.m_v1.a);
                                    if(_loc5_ || param2)
                                    {
                                       §§push(this.m_v1.§1?§.y);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc4_)
                                          {
                                             §§push(this.m_v2.a);
                                             if(_loc5_ || param1)
                                             {
                                                §§push(this.m_v2.§1?§);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(§§pop().y);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc4_ && this))
                                                         {
                                                            addr361:
                                                            §§push(this.m_v3.a);
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               addr375:
                                                               §§push(§§pop() * this.m_v3.§1?§.y);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  addr384:
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr384);
                                                      }
                                                      _loc3_ = §§pop();
                                                      §§pop().y = §§pop();
                                                      §§pop().y = _loc3_;
                                                      if(_loc5_)
                                                      {
                                                         addr392:
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                }
                                                §§goto(addr375);
                                             }
                                          }
                                          §§goto(addr384);
                                       }
                                       §§goto(addr375);
                                    }
                                    §§goto(addr361);
                                 }
                                 break;
                              case 2:
                                 §§push(param1);
                                 §§push(this.m_v1.a);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(this.m_v1.§1?§.x);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc5_ || param1)
                                       {
                                          addr175:
                                          §§push(this.m_v2.a);
                                          if(!_loc4_)
                                          {
                                             addr185:
                                             §§push(§§pop() + §§pop() * this.m_v2.§1?§.x);
                                          }
                                          §§goto(addr185);
                                       }
                                       §§pop().x = §§pop();
                                       if(_loc4_)
                                       {
                                          addr404:
                                          break;
                                       }
                                       §§push(param1);
                                       §§push(this.m_v1.a);
                                       if(_loc5_)
                                       {
                                          §§push(this.m_v1.§1?§.y);
                                          if(!(_loc4_ && param2))
                                          {
                                             addr145:
                                             §§push(§§pop() * §§pop());
                                             if(_loc5_)
                                             {
                                                §§push(this.m_v2.a);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() * this.m_v2.§1?§.y);
                                                }
                                             }
                                             §§pop().y = §§pop();
                                             loop0:
                                             while(true)
                                             {
                                                addr62:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   §§push(this.m_v1.a);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§push(this.m_v1.§[!T§.x);
                                                      if(_loc5_ || param2)
                                                      {
                                                         addr104:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_ || this)
                                                         {
                                                            §§push(this.m_v2.a);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() * this.m_v2.§[!T§.x);
                                                            }
                                                         }
                                                         §§pop().x = §§pop();
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            §§push(param2);
                                                            §§push(this.m_v1.a);
                                                            if(_loc5_)
                                                            {
                                                               §§push(this.m_v1.§[!T§.y);
                                                               if(!_loc4_)
                                                               {
                                                                  addr50:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     §§push(this.m_v2.a);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§pop() * this.m_v2.§[!T§.y);
                                                                     }
                                                                  }
                                                                  §§pop().y = §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§goto(addr50);
                                                         }
                                                         break;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§goto(addr104);
                                                }
                                                §§goto(addr392);
                                             }
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr175);
                              case 3:
                                 §§push(param2);
                                 §§push(param1);
                                 §§push(this.m_v1.a);
                                 if(!_loc4_)
                                 {
                                    §§push(this.m_v1.§1?§.x);
                                    if(!(_loc4_ && param2))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc4_ && param2))
                                       {
                                          addr246:
                                          §§push(this.m_v2.a);
                                          if(_loc5_)
                                          {
                                             §§push(this.m_v2.§1?§);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc5_ || param2)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc5_)
                                                   {
                                                      addr277:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         addr280:
                                                         §§push(this.m_v3.a);
                                                         if(!_loc4_)
                                                         {
                                                            addr285:
                                                            §§push(§§pop() * this.m_v3.§1?§.x);
                                                            if(_loc5_)
                                                            {
                                                               addr293:
                                                               §§push(§§pop() + §§pop());
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                         _loc3_ = §§pop();
                                                         §§pop().x = §§pop();
                                                         §§pop().x = _loc3_;
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr301);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr293);
                                                   }
                                                }
                                             }
                                             §§goto(addr285);
                                          }
                                          §§goto(addr277);
                                       }
                                       §§goto(addr280);
                                    }
                                    §§goto(addr277);
                                 }
                                 §§goto(addr246);
                              default:
                                 b2Settings.b2Assert(false);
                                 if(_loc5_ || param1)
                                 {
                                    §§goto(addr404);
                                 }
                           }
                           return;
                           addr520:
                        }
                        §§goto(addr502);
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc4_ && param2))
                        {
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr502);
                                 }
                                 §§goto(addr520);
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc5_ || this)
                                 {
                                    addr477:
                                    §§push(_loc3_);
                                    if(_loc4_ && this)
                                    {
                                    }
                                    §§goto(addr501);
                                 }
                                 §§goto(addr515);
                              }
                           }
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§push(2);
                                 if(_loc5_ || param2)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr502);
                              }
                           }
                           else
                           {
                              §§push(3);
                              if(_loc5_)
                              {
                                 §§goto(addr501);
                              }
                           }
                           §§goto(addr520);
                        }
                     }
                     §§goto(addr515);
                  }
                  §§goto(addr501);
               }
               §§goto(addr477);
            }
            §§goto(addr442);
         }
         §§goto(addr521);
      }
      
      public function §3l§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§=r§);
         if(_loc2_)
         {
            var _loc1_:* = §§pop();
            if(!(_loc3_ && _loc2_))
            {
               §§push(0);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc2_)
                        {
                           addr136:
                           §§push(0);
                           if(!(_loc2_ || _loc2_))
                           {
                              addr171:
                              §§push(_loc1_);
                              if(_loc2_)
                              {
                                 addr174:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       addr177:
                                       §§push(2);
                                       if(_loc2_)
                                       {
                                          addr210:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                b2Settings.b2Assert(false);
                                                addr84:
                                                return 0;
                                                addr93:
                                             default:
                                                b2Settings.b2Assert(false);
                                                if(!_loc3_)
                                                {
                                                   §§push(0);
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr84);
                                                   }
                                                   else
                                                   {
                                                      addr56:
                                                      if(!_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                   }
                                                }
                                                else if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      addr37:
                                                      §§goto(addr56);
                                                      §§push(b2Math.§9""§(b2Math.§";§(this.m_v2.§%6§,this.m_v1.§%6§),b2Math.§";§(this.m_v3.§%6§,this.m_v1.§%6§)));
                                                   }
                                                   else
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr78:
                                                         §§push(0);
                                                         break;
                                                      }
                                                      §§goto(addr93);
                                                   }
                                                }
                                                else
                                                {
                                                   addr60:
                                                   §§push(b2Math.§";§(this.m_v1.§%6§,this.m_v2.§%6§).Length());
                                                }
                                                if(!_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             case 2:
                                                §§goto(addr60);
                                             case 1:
                                                §§goto(addr78);
                                             case 3:
                                                §§goto(addr37);
                                          }
                                          return §§pop();
                                          addr209:
                                          addr180:
                                       }
                                       else
                                       {
                                          addr204:
                                          §§goto(addr209);
                                       }
                                    }
                                    else
                                    {
                                       addr186:
                                       §§push(3);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§goto(addr204);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(3);
                                    if(_loc2_)
                                    {
                                       §§push(_loc1_);
                                    }
                                 }
                                 §§goto(addr209);
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr186);
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                           else
                           {
                              addr144:
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr177);
                     }
                     else
                     {
                        §§push(1);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc2_ || this)
                                 {
                                    §§push(1);
                                    if(!_loc2_)
                                    {
                                       §§goto(addr180);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr186);
                                 }
                                 §§goto(addr209);
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc2_)
                                 {
                                    §§goto(addr171);
                                 }
                                 §§goto(addr204);
                              }
                           }
                           §§goto(addr171);
                        }
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr174);
               }
               §§goto(addr144);
            }
            §§goto(addr136);
         }
         §§goto(addr210);
      }
      
      public function Solve2() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:b2Vec2 = this.m_v1.§%6§;
         var _loc2_:b2Vec2 = this.m_v2.§%6§;
         var _loc3_:b2Vec2 = b2Math.§";§(_loc2_,_loc1_);
         §§push(_loc1_.x);
         if(_loc8_)
         {
            §§push(_loc3_.x);
            if(_loc8_)
            {
               §§push(§§pop() * §§pop());
               if(_loc8_ || this)
               {
                  §§push(_loc1_.y);
                  if(_loc8_)
                  {
                     §§push(§§pop() * _loc3_.y);
                     if(_loc7_ && _loc2_)
                     {
                     }
                     addr81:
                     var _loc4_:* = §§pop();
                     if(_loc8_ || _loc2_)
                     {
                        §§push(0);
                        if(_loc8_ || _loc1_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc8_)
                              {
                                 this.m_v1.a = 1;
                                 if(_loc7_)
                                 {
                                 }
                                 addr112:
                                 §§push(_loc2_.x);
                                 if(_loc8_)
                                 {
                                    §§push(_loc3_.x);
                                    if(_loc8_ || this)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc7_)
                                       {
                                          §§push(_loc2_.y);
                                          if(!_loc7_)
                                          {
                                             addr142:
                                             §§push(§§pop() * _loc3_.y);
                                             if(_loc8_ || _loc3_)
                                             {
                                             }
                                             §§goto(addr162);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc8_ || _loc1_)
                                          {
                                             addr160:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       addr162:
                                       var _loc5_:* = §§pop();
                                       if(_loc8_ || _loc2_)
                                       {
                                          if(§§pop() <= 0)
                                          {
                                             if(_loc8_ || this)
                                             {
                                                this.m_v2.a = 1;
                                                if(_loc8_ || _loc2_)
                                                {
                                                   this.§=r§ = 1;
                                                   addr199:
                                                   this.m_v1.Set(this.m_v2);
                                                }
                                                return;
                                             }
                                             if(true)
                                             {
                                                §§goto(addr210);
                                             }
                                             §§goto(addr199);
                                          }
                                          addr210:
                                          §§push(1);
                                          §§push(_loc5_);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() + _loc4_);
                                          }
                                          §§push(§§pop() / §§pop());
                                          if(!_loc8_)
                                          {
                                          }
                                          §§goto(addr220);
                                       }
                                       addr220:
                                       var _loc6_:Number = §§pop();
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(this.m_v1);
                                          §§push(_loc5_);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §§push(§§pop() * _loc6_);
                                          }
                                          §§pop().a = §§pop();
                                          do
                                          {
                                             §§push(this.m_v2);
                                             §§push(_loc4_);
                                             if(_loc8_)
                                             {
                                                §§push(§§pop() * _loc6_);
                                             }
                                             §§pop().a = §§pop();
                                             do
                                             {
                                                this.§=r§ = 2;
                                             }
                                             while(!(_loc8_ || this));
                                             
                                          }
                                          while(_loc7_ && _loc1_);
                                          
                                       }
                                       return;
                                       §§push(§§pop());
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr160);
                              }
                              this.§=r§ = 1;
                              if(_loc8_)
                              {
                                 return;
                              }
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr160);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(-§§pop());
                     if(_loc8_ || _loc2_)
                     {
                        addr79:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr79);
               }
               §§push(§§pop());
            }
            §§goto(addr81);
         }
         §§goto(addr79);
      }
      
      public function Solve3() : void
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:* = NaN;
         var _loc1_:b2Vec2 = this.m_v1.§%6§;
         var _loc2_:b2Vec2 = this.m_v2.§%6§;
         var _loc3_:b2Vec2 = this.m_v3.§%6§;
         var _loc4_:b2Vec2 = b2Math.§";§(_loc2_,_loc1_);
         §§push(b2Math.§7!c§(_loc1_,_loc4_));
         if(_loc27_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(b2Math.§7!c§(_loc2_,_loc4_));
         if(!(_loc28_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:*;
         §§push(_loc6_ = §§pop());
         if(_loc27_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc5_);
         if(!(_loc28_ && this))
         {
            §§push(-§§pop());
            if(_loc27_)
            {
               addr90:
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:b2Vec2 = b2Math.§";§(_loc3_,_loc1_);
            §§push(b2Math.§7!c§(_loc1_,_loc9_));
            if(_loc27_)
            {
               §§push(Number(§§pop()));
            }
            var _loc10_:* = §§pop();
            §§push(b2Math.§7!c§(_loc3_,_loc9_));
            if(_loc27_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:*;
            §§push(_loc11_ = §§pop());
            if(!_loc28_)
            {
               §§push(Number(§§pop()));
            }
            var _loc12_:* = §§pop();
            §§push(_loc10_);
            if(!(_loc28_ && _loc3_))
            {
               §§push(-§§pop());
               if(!(_loc28_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc13_:* = §§pop();
            var _loc14_:b2Vec2 = b2Math.§";§(_loc3_,_loc2_);
            §§push(b2Math.§7!c§(_loc2_,_loc14_));
            if(_loc27_)
            {
               §§push(Number(§§pop()));
            }
            var _loc15_:* = §§pop();
            §§push(b2Math.§7!c§(_loc3_,_loc14_));
            if(_loc27_)
            {
               §§push(Number(§§pop()));
            }
            var _loc16_:*;
            §§push(_loc16_ = §§pop());
            if(!(_loc28_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
            var _loc17_:* = §§pop();
            §§push(_loc15_);
            if(_loc27_)
            {
               §§push(-§§pop());
               if(!(_loc28_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc18_:* = §§pop();
            §§push(b2Math.§9""§(_loc4_,_loc9_));
            if(_loc27_)
            {
               §§push(Number(§§pop()));
            }
            var _loc19_:*;
            §§push(_loc19_ = §§pop());
            if(!(_loc28_ && this))
            {
               §§push(§§pop() * b2Math.§9""§(_loc2_,_loc3_));
               if(!_loc28_)
               {
                  addr205:
                  §§push(Number(§§pop()));
               }
               var _loc20_:* = §§pop();
               §§push(_loc19_);
               if(!(_loc28_ && this))
               {
                  §§push(§§pop() * b2Math.§9""§(_loc3_,_loc1_));
                  if(_loc27_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc21_:* = §§pop();
               §§push(_loc19_);
               if(!(_loc28_ && _loc3_))
               {
                  §§push(§§pop() * b2Math.§9""§(_loc1_,_loc2_));
                  if(_loc27_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc22_:* = §§pop();
               if(_loc27_ || _loc1_)
               {
                  §§push(_loc8_);
                  loop0:
                  while(true)
                  {
                     §§push(0);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() <= §§pop());
                        loop2:
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
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc13_);
                                       while(true)
                                       {
                                          §§push(0);
                                          addr1144:
                                          while(true)
                                          {
                                             §§push(§§pop() <= §§pop());
                                          }
                                          addr981:
                                          if(_loc28_ && this)
                                          {
                                             continue;
                                          }
                                          addr989:
                                          _loc25_ = §§pop();
                                          addr990:
                                          §§push(this.m_v1);
                                          §§push(_loc12_);
                                          if(!_loc28_)
                                          {
                                             if(!_loc28_)
                                             {
                                                §§push(_loc25_);
                                                if(_loc27_)
                                                {
                                                   addr941:
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc28_)
                                                   {
                                                      §§pop().a = §§pop();
                                                      addr927:
                                                      this.m_v3.a = _loc13_ * _loc25_;
                                                      this.§=r§ = 2;
                                                      addr926:
                                                      addr925:
                                                      addr924:
                                                      addr944:
                                                      addr928:
                                                      if(_loc27_)
                                                      {
                                                         if(_loc27_)
                                                         {
                                                            addr913:
                                                            if(!(_loc27_ || _loc2_))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() > §§pop());
                                                                        while(true)
                                                                        {
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc22_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() <= §§pop());
                                                                                                loop26:
                                                                                                while(!(_loc28_ && _loc2_))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr1085:
                                                                                                         §§push(1);
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            addr1089:
                                                                                                            §§push(_loc7_);
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc27_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc28_ && this))
                                                                                                               {
                                                                                                                  addr1107:
                                                                                                                  _loc24_ = §§pop() / §§pop();
                                                                                                                  addr1070:
                                                                                                                  this.m_v1.a = _loc7_ * _loc24_;
                                                                                                                  addr1062:
                                                                                                                  this.m_v2.a = _loc8_ * _loc24_;
                                                                                                                  this.§=r§ = 2;
                                                                                                                  return;
                                                                                                                  addr1068:
                                                                                                                  addr1060:
                                                                                                                  addr1061:
                                                                                                                  addr1067:
                                                                                                                  addr1071:
                                                                                                                  addr1063:
                                                                                                                  addr1106:
                                                                                                                  addr1108:
                                                                                                                  addr1055:
                                                                                                                  addr1059:
                                                                                                                  addr1069:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr1174:
                                                                                                                  §§push(§§pop() + _loc22_);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr1171:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  §§goto(addr1174);
                                                                                                               }
                                                                                                            }
                                                                                                            addr1176:
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               addr1179:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc23_:* = §§pop();
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               §§push(this.m_v1);
                                                                                                               §§push(_loc20_);
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * _loc23_);
                                                                                                               }
                                                                                                               §§pop().a = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.m_v2);
                                                                                                                  §§push(_loc21_);
                                                                                                                  if(!(_loc28_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * _loc23_);
                                                                                                                  }
                                                                                                                  §§pop().a = §§pop();
                                                                                                                  while(!_loc28_)
                                                                                                                  {
                                                                                                                     while(_loc27_ || this)
                                                                                                                     {
                                                                                                                        this.§=r§ = 3;
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           return;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.m_v3);
                                                                                                               §§push(_loc22_);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * _loc23_);
                                                                                                               }
                                                                                                               §§pop().a = §§pop();
                                                                                                               §§goto(addr1204);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr1160:
                                                                                                            §§push(_loc20_);
                                                                                                            if(!(_loc28_ && this))
                                                                                                            {
                                                                                                               addr1168:
                                                                                                               §§push(_loc21_);
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  §§goto(addr1171);
                                                                                                               }
                                                                                                               §§goto(addr1174);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1174);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            loop29:
                                                                                                            while(!_loc28_)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               loop30:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc28_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        if(_loc28_ && _loc2_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(§§pop());
                                                                                                                        loop31:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr1039:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc28_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop26;
                                                                                                                                 }
                                                                                                                                 §§pop();
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 while(_loc27_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                       addr1002:
                                                                                                                                       while(_loc27_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1107);
                                                                                                                              }
                                                                                                                              addr1039:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              loop33:
                                                                                                                              while(_loc27_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc21_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                while(!_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!_loc28_)
                                                                                                                                                            {
                                                                                                                                                               addr956:
                                                                                                                                                               §§push(1);
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                               if(_loc27_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc27_ || _loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     addr974:
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                     if(_loc27_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr981);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr993);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1174);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1176);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                  addr1120:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     addr1121:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                                                                        break loop26;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr1118:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  while(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop25;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        addr860:
                                                                                                                                                                        while(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop31;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop33;
                                                                                                                                                                        addr471:
                                                                                                                                                                        if(_loc28_ && _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc28_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                             if(!(_loc28_ && _loc1_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc27_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc28_ && _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                         if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop0;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop0;
                                                                                                                                                                                                                  addr810:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               if(_loc27_ || _loc1_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop29;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     _loc26_ = §§pop();
                                                                                                                                                                                                                     loop72:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.m_v2);
                                                                                                                                                                                                                           if(_loc27_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                                                                 if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc26_);
                                                                                                                                                                                                                                       if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr410:
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(_loc27_ || _loc1_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop().a = §§pop();
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.m_v3);
                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                                                                      if(_loc27_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc26_);
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr359:
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop().a = §§pop();
                                                                                                                                                                                                                                                                  continue loop72;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr927);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr926);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr925);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr359);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr727:
                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().a = 1;
                                                                                                                                                                                                                                                         §§goto(addr731);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr924);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr990);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr418:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1060);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1061);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1062);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr410);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr832:
                                                                                                                                                                                                                           if(_loc27_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().a = 1;
                                                                                                                                                                                                                              addr841:
                                                                                                                                                                                                                              if(_loc27_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.§=r§ = 1;
                                                                                                                                                                                                                                 addr800:
                                                                                                                                                                                                                                 if(_loc27_ || _loc1_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr792:
                                                                                                                                                                                                                                    this.m_v1.Set(this.m_v2);
                                                                                                                                                                                                                                    return;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr928);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr901:
                                                                                                                                                                                                                              §§pop().Set(this.m_v3);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                           §§goto(addr927);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr696);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1059);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr974);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1179);
                                                                                                                                                                                                               §§goto(addr989);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr741);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1179);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1089);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1174);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1171);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1168);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr956);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1160);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr721);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr620);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr731:
                                                                                                                                                                                 if(_loc27_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§=r§ = 1;
                                                                                                                                                                                    addr690:
                                                                                                                                                                                    this.m_v1.Set(this.m_v3);
                                                                                                                                                                                    return;
                                                                                                                                                                                    addr696:
                                                                                                                                                                                    addr688:
                                                                                                                                                                                    addr691:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1140:
                                                                                                                                                                                 }
                                                                                                                                                                                 return;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr956);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(1);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1160);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc28_ && _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr759);
                                                                                                                                                                        §§push(§§pop() <= §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1144);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop30;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1179);
                                                                                                                                                         addr870:
                                                                                                                                                         while(_loc27_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(_loc28_ && _loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop28;
                                                                                                                                                            }
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc28_ && this)
                                                                                                                                                               {
                                                                                                                                                                  continue loop5;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr810);
                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1151);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop1;
                                                                                                                                                if(_loc28_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(_loc27_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr444);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1120);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1012:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr1039);
                                                                                                                                       }
                                                                                                                                       §§goto(addr993);
                                                                                                                                       if(!(_loc27_ || this))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr719);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1124);
                                                                                                                                    }
                                                                                                                                    continue loop26;
                                                                                                                                 }
                                                                                                                                 §§goto(addr951);
                                                                                                                              }
                                                                                                                              continue loop21;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1039);
                                                                                                                  }
                                                                                                                  §§goto(addr1121);
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1107);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr1123);
                                                                                                }
                                                                                             }
                                                                                             if(!(_loc27_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr644);
                                                                                             §§push(0);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1083);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr913);
                                                               }
                                                            }
                                                            §§goto(addr901);
                                                            §§push(this.m_v2);
                                                         }
                                                         §§goto(addr1012);
                                                      }
                                                      §§goto(addr927);
                                                   }
                                                   §§goto(addr1107);
                                                }
                                                §§goto(addr1069);
                                             }
                                             §§goto(addr1070);
                                          }
                                          §§goto(addr941);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr1146);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr1085);
            }
            §§goto(addr205);
         }
         §§goto(addr90);
      }
   }
}
