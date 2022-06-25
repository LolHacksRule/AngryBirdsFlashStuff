package §72§
{
   import §2!+§.*;
   import §7!u§.*;
   import §>H§.*;
   
   class b2Simplex
   {
       
      
      public var m_v1:b2SimplexVertex;
      
      public var m_v2:b2SimplexVertex;
      
      public var m_v3:b2SimplexVertex;
      
      public var §#!w§:Vector.<b2SimplexVertex>;
      
      public var §9s§:int;
      
      function b2Simplex()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_v1 = new b2SimplexVertex();
            loop0:
            while(true)
            {
               this.m_v2 = new b2SimplexVertex();
               while(true)
               {
                  this.m_v3 = new b2SimplexVertex();
                  loop2:
                  while(true)
                  {
                     this.§#!w§ = new Vector.<b2SimplexVertex>(3);
                     addr114:
                     while(true)
                     {
                        super();
                        continue loop2;
                     }
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  this.§#!w§[1] = this.m_v2;
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§#!w§[0] = this.m_v1;
            §§goto(addr70);
         }
      }
      
      public function §7z§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc10_:b2SimplexVertex = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         if(!_loc14_)
         {
            §§push(b2Settings);
            if(_loc13_ || param1)
            {
               §§push(0 <= param1.count);
               if(!(_loc14_ && this))
               {
                  if(§§pop())
                  {
                     if(!_loc14_)
                     {
                        §§pop();
                        addr55:
                        §§push(param1.count <= 3);
                     }
                  }
               }
               §§pop().b2Assert(§§pop());
               if(!_loc14_)
               {
                  addr62:
                  this.§9s§ = param1.count;
               }
               var _loc8_:Vector.<b2SimplexVertex> = this.§#!w§;
               var _loc9_:int = 0;
               loop0:
               while(true)
               {
                  §§push(_loc9_);
                  if(_loc13_ || param3)
                  {
                     §§push(this.§9s§);
                     if(_loc13_)
                     {
                        if(§§pop() < §§pop())
                        {
                           (_loc10_ = _loc8_[_loc9_]).indexA = param1.indexA[_loc9_];
                           if(!(_loc14_ && this))
                           {
                              _loc10_.indexB = param1.indexB[_loc9_];
                           }
                           _loc6_ = param2.§^>§(_loc10_.indexA);
                           _loc7_ = param4.§^>§(_loc10_.indexB);
                           if(!(_loc14_ && param3))
                           {
                              _loc10_.§[!r§ = b2Math.§'!6§(param3,_loc6_);
                              while(true)
                              {
                                 _loc10_.§3!$§ = b2Math.§'!6§(param5,_loc7_);
                                 addr162:
                                 while(true)
                                 {
                                    _loc10_.§^N§ = b2Math.§54§(_loc10_.§3!$§,_loc10_.§[!r§);
                                    loop3:
                                    while(true)
                                    {
                                       addr133:
                                       while(true)
                                       {
                                          _loc10_.a = 0;
                                          continue loop3;
                                       }
                                    }
                                 }
                                 addr124:
                                 if(_loc14_ && param2)
                                 {
                                    continue;
                                 }
                                 if(true)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr133);
                              }
                           }
                           while(true)
                           {
                              _loc9_++;
                              if(_loc13_)
                              {
                                 if(_loc13_)
                                 {
                                    §§goto(addr124);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr137);
                           }
                           continue;
                        }
                        if(!(_loc14_ && param3))
                        {
                           §§push(this.§9s§);
                           if(_loc13_)
                           {
                              §§push(1);
                              if(_loc13_ || param1)
                              {
                                 addr202:
                                 if(§§pop() > §§pop())
                                 {
                                    if(!(_loc14_ && this))
                                    {
                                       §§push(param1.§?!%§);
                                       if(!(_loc14_ && param3))
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc14_)
                                          {
                                             _loc11_ = §§pop();
                                             if(_loc13_)
                                             {
                                                addr324:
                                                §§push(Number(this.§`!7§()));
                                                if(_loc13_ || param3)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc13_ || param3)
                                                   {
                                                      _loc12_ = §§pop();
                                                      addr341:
                                                      §§push(0.5);
                                                      if(!(_loc14_ && param2))
                                                      {
                                                         addr349:
                                                         §§push(§§pop() * _loc11_);
                                                      }
                                                      §§push(§§pop() < §§pop());
                                                      if(!(§§pop() < §§pop()))
                                                      {
                                                         addr354:
                                                         §§pop();
                                                         addr280:
                                                         addr355:
                                                         §§push(2);
                                                         if(_loc13_)
                                                         {
                                                            addr286:
                                                            §§push(§§pop() * _loc11_);
                                                            if(_loc13_)
                                                            {
                                                               addr288:
                                                               §§push(_loc12_);
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(§§pop() < §§pop());
                                                                  if(!(_loc14_ && param2))
                                                                  {
                                                                     if(!(_loc14_ && this))
                                                                     {
                                                                        addr306:
                                                                        §§push(§§pop());
                                                                        if(_loc13_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              addr311:
                                                                              §§pop();
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(!(_loc14_ && this))
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    if(!(_loc14_ && param1))
                                                                                    {
                                                                                       if(_loc13_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() < Number.MIN_VALUE);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             if(_loc13_ || param1)
                                                                                             {
                                                                                                addr264:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      this.§9s§ = 0;
                                                                                                      addr360:
                                                                                                      if(_loc13_ || param2)
                                                                                                      {
                                                                                                         addr278:
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr280);
                                                                                                         }
                                                                                                         §§push(this.§9s§);
                                                                                                         break;
                                                                                                      }
                                                                                                      (_loc10_ = _loc8_[0]).indexA = 0;
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         _loc10_.indexB = 0;
                                                                                                      }
                                                                                                      _loc6_ = param2.§^>§(0);
                                                                                                      _loc7_ = param4.§^>§(0);
                                                                                                      if(!(_loc14_ && param1))
                                                                                                      {
                                                                                                         _loc10_.§[!r§ = b2Math.§'!6§(param3,_loc6_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc10_.§3!$§ = b2Math.§'!6§(param5,_loc7_);
                                                                                                            loop8:
                                                                                                            for(; !(_loc14_ && this); while(true)
                                                                                                            {
                                                                                                               this.§9s§ = 1;
                                                                                                               if(_loc14_ && this)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!(_loc13_ || this))
                                                                                                               {
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr411);
                                                                                                            },return)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc10_.§^N§ = b2Math.§54§(_loc10_.§3!$§,_loc10_.§[!r§);
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr430);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr278);
                                                                                             }
                                                                                             §§goto(addr354);
                                                                                          }
                                                                                          §§goto(addr311);
                                                                                       }
                                                                                       §§goto(addr341);
                                                                                    }
                                                                                    §§goto(addr286);
                                                                                    addr321:
                                                                                 }
                                                                                 §§goto(addr355);
                                                                              }
                                                                              §§goto(addr360);
                                                                           }
                                                                           §§goto(addr264);
                                                                        }
                                                                     }
                                                                     §§goto(addr341);
                                                                  }
                                                                  §§goto(addr311);
                                                               }
                                                               §§goto(addr341);
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   §§goto(addr349);
                                                }
                                                §§goto(addr341);
                                                addr235:
                                             }
                                             §§goto(addr278);
                                          }
                                       }
                                       §§goto(addr288);
                                    }
                                    §§goto(addr321);
                                 }
                                 §§goto(addr278);
                              }
                              addr359:
                              if(§§pop() == §§pop())
                              {
                                 §§goto(addr360);
                              }
                              §§goto(addr453);
                           }
                           §§goto(addr286);
                        }
                        §§goto(addr235);
                     }
                     §§goto(addr202);
                  }
                  break;
               }
               §§goto(addr359);
               §§push(0);
            }
            §§goto(addr55);
         }
         §§goto(addr62);
      }
      
      public function § !?§(param1:b2SimplexCache) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            param1.§?!%§ = this.§`!7§();
            if(!_loc5_)
            {
               addr29:
               param1.count = uint(this.§9s§);
            }
            var _loc2_:Vector.<b2SimplexVertex> = this.§#!w§;
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= this.§9s§)
               {
                  if(_loc4_)
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        _loc3_++;
                        addr108:
                        while(true)
                        {
                           param1.indexB[_loc3_] = uint(_loc2_[_loc3_].indexB);
                           continue loop1;
                        }
                     }
                  }
                  while(_loc5_)
                  {
                  }
                  continue;
               }
               param1.indexA[_loc3_] = uint(_loc2_[_loc3_].indexA);
               §§goto(addr108);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §`!o§() : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:b2Vec2 = null;
         var _loc2_:* = NaN;
         §§push(this.§9s§);
         if(_loc5_ || _loc1_)
         {
            var _loc3_:* = §§pop();
            if(_loc5_ || _loc1_)
            {
               §§push(1);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && _loc1_))
                        {
                           addr147:
                           §§push(0);
                           if(!(_loc4_ && _loc2_))
                           {
                              addr190:
                              loop4:
                              switch(§§pop())
                              {
                                 case 0:
                                    return this.m_v1.§^N§.§@H§();
                                 case 1:
                                    _loc1_ = b2Math.§54§(this.m_v2.§^N§,this.m_v1.§^N§);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(b2Math.§0M§(_loc1_,this.m_v1.§^N§.§@H§()));
                                    loop2:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop3:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr114:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                continue loop2;
                                             }
                                             continue loop3;
                                          }
                                          if(§§pop() > 0)
                                          {
                                             §§goto(addr99);
                                          }
                                          break loop4;
                                       }
                                    }
                                    break;
                                 default:
                                    while(true)
                                    {
                                       b2Settings.b2Assert(false);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             return new b2Vec2();
                                          }
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr114);
                                    }
                                    addr99:
                                    return b2Math.§;C§(1,_loc1_);
                              }
                              return b2Math.§^!P§(_loc1_,1);
                              addr189:
                           }
                           else
                           {
                              addr174:
                              if(§§pop() !== _loc3_)
                              {
                                 §§goto(addr189);
                                 §§push(2);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr189);
                        }
                        §§push(1);
                        if(_loc5_ || this)
                        {
                        }
                     }
                     else
                     {
                        §§push(2);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr174);
                        }
                     }
                     §§goto(addr189);
                  }
                  §§goto(addr174);
               }
               §§goto(addr189);
            }
            §§goto(addr147);
         }
         §§goto(addr190);
      }
      
      public function §"!C§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§9s§);
         if(!_loc3_)
         {
            var _loc1_:* = §§pop();
            if(!_loc3_)
            {
               §§push(0);
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(_loc3_)
                           {
                              addr232:
                           }
                        }
                        else
                        {
                           addr224:
                           §§push(2);
                           if(!(_loc3_ && _loc1_))
                           {
                              §§goto(addr232);
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(_loc2_)
                        {
                           §§push(_loc1_);
                           if(_loc2_)
                           {
                              addr197:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§push(1);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr237:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             b2Settings.b2Assert(false);
                                             return new b2Vec2();
                                          case 1:
                                             return this.m_v1.§^N§;
                                          case 2:
                                             §§push(§§findproperty(b2Vec2));
                                             §§push(this.m_v1.a);
                                             if(_loc2_)
                                             {
                                                §§push(this.m_v1);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop().§^N§.x);
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         addr67:
                                                         §§push(this.m_v2.a);
                                                         if(!_loc3_)
                                                         {
                                                            addr72:
                                                            §§push(this.m_v2);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop().§^N§);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc2_)
                                                                     {
                                                                        addr91:
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push(this.m_v1.a);
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr96:
                                                                           addr99:
                                                                           §§push(this.m_v1.§^N§.y);
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              §§goto(addr136);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§goto(addr136);
                                                                     }
                                                                     §§goto(addr96);
                                                                  }
                                                                  addr136:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc2_)
                                                                  {
                                                                     addr122:
                                                                     §§push(this.m_v2.a);
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        §§push(§§pop() * this.m_v2.§^N§.y);
                                                                     }
                                                                  }
                                                                  return new §§pop().b2Vec2(§§pop(),§§pop());
                                                               }
                                                               §§goto(addr99);
                                                            }
                                                            §§goto(addr122);
                                                         }
                                                         §§goto(addr96);
                                                      }
                                                      §§goto(addr91);
                                                   }
                                                   §§goto(addr72);
                                                }
                                                §§goto(addr91);
                                             }
                                             §§goto(addr67);
                                          default:
                                             b2Settings.b2Assert(false);
                                             return new b2Vec2();
                                       }
                                       addr237:
                                    }
                                    §§goto(addr237);
                                 }
                                 else
                                 {
                                    §§goto(addr224);
                                 }
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc2_)
                                 {
                                    addr222:
                                    §§push(_loc1_);
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr237);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr224);
                           }
                           else
                           {
                              §§push(3);
                           }
                        }
                     }
                     §§goto(addr237);
                  }
                  §§goto(addr197);
               }
               §§goto(addr222);
            }
            §§goto(addr224);
         }
         §§goto(addr237);
      }
      
      public function §-K§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§9s§);
         if(_loc5_ || _loc3_)
         {
            var _loc3_:* = §§pop();
            if(!(_loc4_ && param2))
            {
               §§push(0);
               if(!(_loc4_ && param2))
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(0);
                           if(_loc5_ || param2)
                           {
                              addr526:
                              loop3:
                              switch(§§pop())
                              {
                                 case 0:
                                    b2Settings.b2Assert(false);
                                    break;
                                    addr222:
                                 case 1:
                                    param1.SetV(this.m_v1.§[!r§);
                                    while(true)
                                    {
                                       param2.SetV(this.m_v1.§3!$§);
                                       if(_loc4_ && param2)
                                       {
                                          break loop3;
                                       }
                                       addr414:
                                       if(_loc5_ || this)
                                       {
                                          break loop3;
                                       }
                                    }
                                    break;
                                 case 2:
                                    §§push(param1);
                                    §§push(this.m_v1.a);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(this.m_v1.§[!r§.x);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc4_ && param2))
                                          {
                                             addr169:
                                             §§push(this.m_v2.a);
                                             if(_loc5_ || _loc3_)
                                             {
                                                addr184:
                                                §§push(§§pop() + §§pop() * this.m_v2.§[!r§.x);
                                             }
                                             §§goto(addr184);
                                          }
                                          §§pop().x = §§pop();
                                          while(true)
                                          {
                                             §§push(param1);
                                             §§push(this.m_v1.a);
                                             if(_loc5_)
                                             {
                                                §§push(this.m_v1.§[!r§.y);
                                                if(_loc5_ || this)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr123:
                                                      §§push(this.m_v2.a);
                                                      if(_loc5_)
                                                      {
                                                         addr117:
                                                         §§push(§§pop() * this.m_v2.§[!r§.y);
                                                      }
                                                      §§pop().y = §§pop() + §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr123);
                                                }
                                                §§goto(addr117);
                                             }
                                             §§goto(addr123);
                                          }
                                          addr321:
                                          §§push(param2);
                                          §§push(param1);
                                          §§push(this.m_v1.a);
                                          if(_loc5_ || param1)
                                          {
                                             §§push(this.m_v1.§[!r§.y);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc4_)
                                                {
                                                   §§push(this.m_v2.a);
                                                   if(_loc5_ || param2)
                                                   {
                                                      §§push(this.m_v2.§[!r§);
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§push(§§pop().y);
                                                         if(_loc5_ || this)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc5_ || this)
                                                            {
                                                               addr378:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc5_)
                                                               {
                                                                  addr400:
                                                                  §§push(this.m_v3.a);
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     addr394:
                                                                     §§push(this.m_v3.§[!r§.y);
                                                                  }
                                                                  _loc3_ = §§pop();
                                                                  §§pop().y = §§pop();
                                                                  §§pop().y = _loc3_;
                                                                  if(_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               addr399:
                                                               §§goto(addr400);
                                                               §§push(§§pop());
                                                            }
                                                            §§goto(addr400);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr399);
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§goto(addr400);
                                                      }
                                                      §§goto(addr394);
                                                   }
                                                }
                                                §§goto(addr378);
                                             }
                                             §§goto(addr400);
                                          }
                                          §§goto(addr378);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr169);
                                 case 3:
                                    §§push(param2);
                                    §§push(param1);
                                    §§push(this.m_v1.a);
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(this.m_v1.§[!r§.x);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc4_)
                                          {
                                             §§push(this.m_v2.a);
                                             if(!(_loc4_ && this))
                                             {
                                                §§push(this.m_v2.§[!r§);
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc5_ || param2)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc5_)
                                                         {
                                                            addr308:
                                                            §§push(this.m_v3.a);
                                                            if(!_loc4_)
                                                            {
                                                               addr300:
                                                               §§push(this.m_v3.§[!r§.x);
                                                            }
                                                            §§pop().x = §§pop().x = §§pop() + §§pop();
                                                            if(_loc5_ || param1)
                                                            {
                                                               §§goto(addr321);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr414);
                                                            }
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc4_)
                                                   {
                                                   }
                                                   §§goto(addr308);
                                                }
                                                §§goto(addr300);
                                             }
                                          }
                                          §§goto(addr308);
                                       }
                                       §§goto(addr300);
                                    }
                                    §§goto(addr308);
                                 default:
                                    b2Settings.b2Assert(false);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr414);
                                    }
                              }
                              return;
                              addr525:
                           }
                           else
                           {
                              addr482:
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       addr488:
                                       §§push(2);
                                       if(_loc4_ && _loc3_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr512:
                                       §§push(3);
                                       if(_loc5_ || _loc3_)
                                       {
                                       }
                                    }
                                    §§goto(addr525);
                                 }
                                 else
                                 {
                                    §§push(3);
                                    if(_loc5_)
                                    {
                                       addr511:
                                       if(§§pop() === _loc3_)
                                       {
                                          §§goto(addr512);
                                       }
                                       else
                                       {
                                          §§goto(addr525);
                                          §§push(4);
                                       }
                                       §§goto(addr525);
                                    }
                                 }
                                 addr520:
                                 §§goto(addr525);
                              }
                              §§goto(addr511);
                           }
                           §§goto(addr525);
                        }
                        §§goto(addr488);
                     }
                     else
                     {
                        §§push(1);
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || _loc3_)
                           {
                              addr472:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§push(1);
                                    if(_loc5_)
                                    {
                                       addr478:
                                       §§goto(addr525);
                                    }
                                    else
                                    {
                                       §§goto(addr511);
                                    }
                                 }
                                 §§goto(addr512);
                              }
                              else
                              {
                                 §§push(2);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr482);
                                 }
                              }
                              §§goto(addr520);
                           }
                           §§goto(addr511);
                        }
                        §§goto(addr478);
                     }
                  }
                  §§goto(addr472);
               }
               §§goto(addr525);
            }
            §§goto(addr488);
         }
         §§goto(addr526);
      }
      
      public function §`!7§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§9s§);
         if(_loc3_ || _loc3_)
         {
            var _loc1_:* = §§pop();
            if(!(_loc2_ && _loc3_))
            {
               §§push(0);
               if(!_loc2_)
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr227:
                           §§push(3);
                           if(!_loc2_)
                           {
                              addr230:
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc2_)
                        {
                           §§push(_loc1_);
                           if(!_loc2_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(1);
                                    if(!_loc2_)
                                    {
                                       addr236:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             b2Settings.b2Assert(false);
                                             addr122:
                                             return 0;
                                             addr129:
                                          default:
                                             do
                                             {
                                                b2Settings.b2Assert(false);
                                             }
                                             while(_loc2_);
                                             
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr116:
                                                   §§push(0);
                                                   break;
                                                }
                                                if(_loc3_)
                                                {
                                                   §§push(0);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(_loc2_ && this)
                                                      {
                                                         addr90:
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            return §§pop();
                                                         }
                                                         break;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr78);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr129);
                                                }
                                                §§goto(addr122);
                                             }
                                             else if(_loc3_ || _loc1_)
                                             {
                                                addr59:
                                                addr78:
                                                return §§pop();
                                                §§push(b2Math.§0M§(b2Math.§54§(this.m_v2.§^N§,this.m_v1.§^N§),b2Math.§54§(this.m_v3.§^N§,this.m_v1.§^N§)));
                                             }
                                             else
                                             {
                                                addr80:
                                                §§push(b2Math.§54§(this.m_v1.§^N§,this.m_v2.§^N§).§>!7§());
                                             }
                                             §§goto(addr90);
                                          case 2:
                                             §§goto(addr80);
                                          case 1:
                                             §§goto(addr116);
                                          case 3:
                                             §§goto(addr59);
                                       }
                                       return §§pop();
                                       addr235:
                                       addr178:
                                    }
                                    else
                                    {
                                       §§goto(addr230);
                                    }
                                    §§goto(addr235);
                                 }
                                 else
                                 {
                                    §§goto(addr227);
                                 }
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr195:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§push(2);
                                             if(_loc3_ || _loc2_)
                                             {
                                             }
                                             §§goto(addr235);
                                          }
                                          else
                                          {
                                             §§goto(addr227);
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(!_loc3_)
                                          {
                                          }
                                          §§goto(addr235);
                                       }
                                       §§goto(addr235);
                                    }
                                    addr226:
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr227);
                                    }
                                    else
                                    {
                                       §§goto(addr235);
                                       §§push(4);
                                    }
                                    §§goto(addr235);
                                 }
                                 §§goto(addr226);
                                 §§push(_loc1_);
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr195);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr235);
                  }
                  §§goto(addr226);
               }
               §§goto(addr230);
            }
            §§goto(addr227);
         }
         §§goto(addr236);
      }
      
      public function Solve2() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:b2Vec2 = this.m_v1.§^N§;
         var _loc2_:b2Vec2 = this.m_v2.§^N§;
         var _loc3_:b2Vec2 = b2Math.§54§(_loc2_,_loc1_);
         §§push(_loc1_.x);
         if(!_loc8_)
         {
            §§push(_loc3_.x);
            if(_loc7_)
            {
               §§push(§§pop() * §§pop());
               if(_loc7_ || _loc2_)
               {
                  §§push(_loc1_.y);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * _loc3_.y);
                     if(!_loc7_)
                     {
                     }
                     addr70:
                     var _loc4_:* = §§pop();
                     if(_loc7_)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(!_loc8_)
                              {
                                 this.m_v1.a = 1;
                                 if(!_loc8_)
                                 {
                                    this.§9s§ = 1;
                                    if(!(_loc7_ || _loc1_))
                                    {
                                       addr96:
                                       §§push(_loc2_.x);
                                       if(_loc7_)
                                       {
                                          §§push(_loc3_.x);
                                          if(!_loc8_)
                                          {
                                             addr104:
                                             §§push(§§pop() * §§pop());
                                             if(_loc7_)
                                             {
                                                §§push(_loc2_.y);
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   §§push(§§pop() * _loc3_.y);
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                   }
                                                   §§goto(addr141);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc8_)
                                                {
                                                   addr140:
                                                   §§push(Number(§§pop()));
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§goto(addr140);
                                          }
                                          addr141:
                                          var _loc5_:* = §§pop();
                                          if(_loc7_ || this)
                                          {
                                             if(§§pop() <= 0)
                                             {
                                                if(!(_loc8_ && this))
                                                {
                                                   this.m_v2.a = 1;
                                                   if(!_loc8_)
                                                   {
                                                      this.§9s§ = 1;
                                                      loop0:
                                                      while(true)
                                                      {
                                                         addr171:
                                                         while(true)
                                                         {
                                                            this.m_v1.Set(this.m_v2);
                                                            if(!_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                   return;
                                                }
                                                if(true)
                                                {
                                                   §§goto(addr184);
                                                }
                                                §§goto(addr171);
                                             }
                                             addr184:
                                             §§push(1);
                                             §§push(_loc5_);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() + _loc4_);
                                             }
                                             §§push(§§pop() / §§pop());
                                             if(_loc8_ && _loc1_)
                                             {
                                             }
                                             §§goto(addr199);
                                          }
                                          addr199:
                                          var _loc6_:Number = §§pop();
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             §§push(this.m_v1);
                                             §§push(_loc5_);
                                             if(!(_loc8_ && _loc1_))
                                             {
                                                §§push(§§pop() * _loc6_);
                                             }
                                             §§pop().a = §§pop();
                                             loop2:
                                             while(true)
                                             {
                                                §§push(this.m_v2);
                                                §§push(_loc4_);
                                                if(!(_loc8_ && _loc1_))
                                                {
                                                   §§push(§§pop() * _loc6_);
                                                }
                                                §§pop().a = §§pop();
                                                do
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop2;
                                                }
                                                while(this.§9s§ = 2, !(_loc7_ || _loc2_));
                                                
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr140);
                                    }
                                 }
                                 §§goto(addr96);
                              }
                              return;
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr140);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc8_ && _loc3_))
                  {
                     addr65:
                     §§push(-§§pop());
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               §§push(§§pop());
            }
            §§goto(addr70);
         }
         §§goto(addr65);
      }
      
      public function Solve3() : void
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc1_:b2Vec2 = this.m_v1.§^N§;
         var _loc2_:b2Vec2 = this.m_v2.§^N§;
         var _loc3_:b2Vec2 = this.m_v3.§^N§;
         var _loc4_:b2Vec2 = b2Math.§54§(_loc2_,_loc1_);
         §§push(b2Math.§'l§(_loc1_,_loc4_));
         if(!(_loc28_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(b2Math.§'l§(_loc2_,_loc4_));
         if(!_loc28_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:*;
         §§push(_loc6_ = §§pop());
         if(!_loc28_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc5_);
         if(_loc27_ || _loc1_)
         {
            §§push(-§§pop());
            if(!_loc28_)
            {
               addr80:
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:b2Vec2 = b2Math.§54§(_loc3_,_loc1_);
            §§push(b2Math.§'l§(_loc1_,_loc9_));
            if(!_loc28_)
            {
               §§push(Number(§§pop()));
            }
            var _loc10_:* = §§pop();
            §§push(b2Math.§'l§(_loc3_,_loc9_));
            if(_loc27_ || this)
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
            if(!_loc28_)
            {
               §§push(-§§pop());
               if(!_loc28_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc13_:* = §§pop();
            var _loc14_:b2Vec2 = b2Math.§54§(_loc3_,_loc2_);
            §§push(b2Math.§'l§(_loc2_,_loc14_));
            if(!_loc28_)
            {
               §§push(Number(§§pop()));
            }
            var _loc15_:* = §§pop();
            §§push(b2Math.§'l§(_loc3_,_loc14_));
            if(_loc27_ || _loc2_)
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
            if(!_loc28_)
            {
               §§push(-§§pop());
               if(!(_loc28_ && _loc3_))
               {
                  addr170:
                  §§push(Number(§§pop()));
               }
               var _loc18_:* = §§pop();
               §§push(b2Math.§0M§(_loc4_,_loc9_));
               if(!(_loc28_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc19_:*;
               §§push(_loc19_ = §§pop());
               if(!_loc28_)
               {
                  §§push(§§pop() * b2Math.§0M§(_loc2_,_loc3_));
                  if(!_loc28_)
                  {
                     addr195:
                     §§push(Number(§§pop()));
                  }
                  var _loc20_:* = §§pop();
                  §§push(_loc19_);
                  if(!(_loc28_ && _loc1_))
                  {
                     §§push(§§pop() * b2Math.§0M§(_loc3_,_loc1_));
                     if(_loc27_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc21_:* = §§pop();
                  §§push(_loc19_);
                  if(!_loc28_)
                  {
                     §§push(§§pop() * b2Math.§0M§(_loc1_,_loc2_));
                     if(_loc27_ || _loc2_)
                     {
                        addr234:
                        §§push(Number(§§pop()));
                     }
                     var _loc22_:* = §§pop();
                     if(_loc27_)
                     {
                        §§push(_loc8_);
                        loop0:
                        while(true)
                        {
                           §§push(0);
                           addr1224:
                           while(true)
                           {
                              §§push(§§pop() <= §§pop());
                              loop2:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr1226:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr1228:
                                          while(true)
                                          {
                                             §§push(_loc13_);
                                             addr1206:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr1207:
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   addr1208:
                                                   while(!(_loc28_ && this))
                                                   {
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                       addr1227:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr1219:
                                          this.m_v1.a = 1;
                                          this.§9s§ = 1;
                                          return;
                                          addr1203:
                                          addr1221:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(_loc27_ || this)
                                          {
                                             continue loop0;
                                          }
                                          addr1260:
                                          addr1259:
                                          var _loc23_:Number = §§pop();
                                          if(_loc27_ || this)
                                          {
                                             §§push(this.m_v1);
                                             §§push(_loc20_);
                                             if(!(_loc28_ && this))
                                             {
                                                §§push(§§pop() * _loc23_);
                                             }
                                             §§pop().a = §§pop();
                                             §§push(this.m_v2);
                                             §§push(_loc21_);
                                             if(!_loc28_)
                                             {
                                                §§push(§§pop() * _loc23_);
                                             }
                                             §§pop().a = §§pop();
                                             addr1327:
                                          }
                                          §§push(this.m_v3);
                                          §§push(_loc22_);
                                          if(_loc27_)
                                          {
                                             §§push(§§pop() * _loc23_);
                                          }
                                          §§pop().a = §§pop();
                                          addr1299:
                                          if(_loc27_)
                                          {
                                             if(!_loc28_)
                                             {
                                                this.§9s§ = 3;
                                                if(_loc28_)
                                                {
                                                   §§goto(addr1299);
                                                }
                                                return;
                                             }
                                             §§goto(addr1327);
                                          }
                                          addr1313:
                                          §§goto(addr1313);
                                          addr1198:
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr494);
                  }
                  §§goto(addr234);
               }
               §§goto(addr195);
            }
            §§goto(addr170);
         }
         §§goto(addr80);
      }
   }
}
