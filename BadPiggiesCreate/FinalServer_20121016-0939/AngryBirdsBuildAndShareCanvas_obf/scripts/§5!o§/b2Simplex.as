package §5!o§
{
   import §"!9§.*;
   import §2"=§.*;
   import §=o§.*;
   
   class b2Simplex
   {
       
      
      public var m_v1:b2SimplexVertex;
      
      public var m_v2:b2SimplexVertex;
      
      public var m_v3:b2SimplexVertex;
      
      public var §"!@§:Vector.<b2SimplexVertex>;
      
      public var §<v§:int;
      
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
               loop1:
               while(true)
               {
                  this.m_v3 = new b2SimplexVertex();
                  loop2:
                  while(true)
                  {
                     this.§"!@§ = new Vector.<b2SimplexVertex>(3);
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        while(!_loc1_)
                        {
                           this.§"!@§[0] = this.m_v1;
                           while(_loc2_)
                           {
                              if(_loc1_)
                              {
                                 continue loop1;
                              }
                              while(_loc2_ || _loc2_)
                              {
                                 continue loop4;
                                 this.§"!@§[2] = this.m_v3;
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr77);
                                 if(_loc2_ || _loc2_)
                                 {
                                    continue loop3;
                                 }
                              }
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§"!@§[1] = this.m_v2;
            §§goto(addr53);
         }
         §§goto(addr45);
      }
      
      public function §#&§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
               if(!_loc14_)
               {
                  if(§§pop())
                  {
                     if(!_loc14_)
                     {
                        §§pop();
                        addr50:
                        §§push(param1.count <= 3);
                     }
                  }
               }
               §§pop().b2Assert(§§pop());
               if(_loc13_)
               {
                  this.§<v§ = param1.count;
                  addr61:
                  var _loc8_:Vector.<b2SimplexVertex> = this.§"!@§;
                  var _loc9_:int = 0;
                  loop0:
                  while(true)
                  {
                     §§push(_loc9_);
                     if(!(_loc14_ && this))
                     {
                        §§push(this.§<v§);
                        if(!_loc14_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!(_loc14_ && param1))
                              {
                                 §§push(this.§<v§);
                                 if(!(_loc14_ && param3))
                                 {
                                    §§push(1);
                                    if(!_loc14_)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(!_loc14_)
                                          {
                                             §§push(param1.§`D§);
                                             if(_loc13_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc14_)
                                                {
                                                   _loc11_ = §§pop();
                                                   if(_loc13_ || this)
                                                   {
                                                      §§push(this.§1";§());
                                                      if(!(_loc14_ && this))
                                                      {
                                                         addr314:
                                                         §§push(Number(§§pop()));
                                                         §§push(Number(§§pop()));
                                                         if(_loc13_ || param1)
                                                         {
                                                            _loc12_ = §§pop();
                                                            addr323:
                                                            while(true)
                                                            {
                                                               §§push(0.5);
                                                               addr324:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * _loc11_);
                                                               }
                                                               addr220:
                                                               if(_loc14_ && param1)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() < Number.MIN_VALUE);
                                                               if(!_loc14_)
                                                               {
                                                                  if(!(_loc14_ && param2))
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        addr241:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 this.§<v§ = 0;
                                                                                 if(!(_loc14_ && param3))
                                                                                 {
                                                                                    addr257:
                                                                                    if(false)
                                                                                    {
                                                                                       addr259:
                                                                                       §§push(2);
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       §§goto(addr333);
                                                                                    }
                                                                                    addr333:
                                                                                    if(§§pop() == 0)
                                                                                    {
                                                                                       addr335:
                                                                                       (_loc10_ = _loc8_[0]).indexA = 0;
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          _loc10_.indexB = 0;
                                                                                       }
                                                                                       _loc6_ = param2.§,!Q§(0);
                                                                                       _loc7_ = param4.§,!Q§(0);
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          _loc10_.§&!l§ = b2Math.§>!C§(param3,_loc6_);
                                                                                          _loc10_.§`!^§ = b2Math.§>!C§(param5,_loc7_);
                                                                                          addr371:
                                                                                          _loc10_.w = b2Math.§'!%§(_loc10_.§`!^§,_loc10_.§&!l§);
                                                                                          addr400:
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             this.§<v§ = 1;
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr371);
                                                                                                   }
                                                                                                   §§goto(addr408);
                                                                                                }
                                                                                                §§goto(addr400);
                                                                                             }
                                                                                             §§goto(addr371);
                                                                                             addr382:
                                                                                          }
                                                                                          addr407:
                                                                                          §§goto(addr407);
                                                                                       }
                                                                                       §§goto(addr382);
                                                                                    }
                                                                                    addr408:
                                                                                    return;
                                                                                    §§push(this.§<v§);
                                                                                 }
                                                                                 §§goto(addr335);
                                                                              }
                                                                              addr330:
                                                                              §§goto(addr259);
                                                                           }
                                                                        }
                                                                        §§goto(addr257);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr328:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              addr329:
                                                                              §§pop();
                                                                              §§goto(addr330);
                                                                           }
                                                                           addr288:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     addr327:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc13_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(_loc13_)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc13_ || param1)
                                                                              {
                                                                                 §§push(_loc12_);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§goto(addr220);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc13_ || param2)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(_loc13_ || param1)
                                                                                       {
                                                                                          if(_loc13_ || param1)
                                                                                          {
                                                                                             §§goto(addr288);
                                                                                             §§push(§§pop() < §§pop());
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr324);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr314);
                                                                                    }
                                                                                    addr326:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr327);
                                                                                    }
                                                                                 }
                                                                                 addr303:
                                                                                 addr265:
                                                                              }
                                                                              §§goto(addr335);
                                                                           }
                                                                           §§goto(addr329);
                                                                           addr293:
                                                                        }
                                                                        §§goto(addr241);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            addr323:
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      §§goto(addr323);
                                                      addr215:
                                                   }
                                                   §§goto(addr330);
                                                }
                                             }
                                             §§goto(addr323);
                                          }
                                          §§goto(addr303);
                                       }
                                       §§goto(addr257);
                                    }
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr215);
                           }
                           else
                           {
                              (_loc10_ = _loc8_[_loc9_]).indexA = param1.indexA[_loc9_];
                              if(_loc13_)
                              {
                                 _loc10_.indexB = param1.indexB[_loc9_];
                              }
                              _loc6_ = param2.§,!Q§(_loc10_.indexA);
                              _loc7_ = param4.§,!Q§(_loc10_.indexB);
                              if(!_loc14_)
                              {
                                 _loc10_.§&!l§ = b2Math.§>!C§(param3,_loc6_);
                                 while(true)
                                 {
                                    _loc10_.§`!^§ = b2Math.§>!C§(param5,_loc7_);
                                    addr122:
                                    if(_loc14_ && this)
                                    {
                                       continue;
                                    }
                                    _loc9_++;
                                    if(!_loc14_)
                                    {
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             _loc10_.a = 0;
                                          }
                                          addr109:
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       if(_loc13_)
                                       {
                                          addr115:
                                          if(!(_loc13_ || param2))
                                          {
                                             break;
                                          }
                                          §§goto(addr122);
                                       }
                                       addr139:
                                       while(true)
                                       {
                                          §§goto(addr109);
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc10_.w = b2Math.§'!%§(_loc10_.§`!^§,_loc10_.§&!l§);
                                       §§goto(addr139);
                                       §§goto(addr115);
                                    }
                                    addr147:
                                 }
                              }
                              §§goto(addr147);
                           }
                        }
                        §§goto(addr259);
                     }
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr265);
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr50);
         }
         §§goto(addr61);
      }
      
      public function §8!d§(param1:b2SimplexCache) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            param1.§`D§ = this.§1";§();
            if(_loc5_ || this)
            {
               param1.count = uint(this.§<v§);
            }
         }
         var _loc2_:Vector.<b2SimplexVertex> = this.§"!@§;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§<v§)
            {
               if(!_loc4_)
               {
                  if(_loc5_ || param1)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     _loc3_++;
                     addr109:
                     while(true)
                     {
                        param1.indexB[_loc3_] = uint(_loc2_[_loc3_].indexB);
                        continue loop1;
                     }
                  }
               }
               while(!_loc5_)
               {
               }
               continue;
            }
            param1.indexA[_loc3_] = uint(_loc2_[_loc3_].indexA);
            §§goto(addr109);
         }
      }
      
      public function §<;§() : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:b2Vec2 = null;
         var _loc2_:* = NaN;
         do
         {
            §§push(this.§<v§);
            if(!_loc4_)
            {
               var _loc3_:* = §§pop();
               if(!_loc4_)
               {
                  §§push(1);
                  if(_loc5_ || _loc1_)
                  {
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc4_ && this))
                           {
                              §§push(0);
                              if(_loc4_ && _loc2_)
                              {
                                 addr164:
                                 if(§§pop() === _loc3_)
                                 {
                                    addr166:
                                    §§push(1);
                                    if(!(_loc4_ && this))
                                    {
                                       addr184:
                                    }
                                 }
                                 else
                                 {
                                    §§push(2);
                                 }
                              }
                           }
                           §§goto(addr166);
                        }
                        else
                        {
                           §§push(2);
                           if(_loc5_)
                           {
                              §§goto(addr164);
                           }
                        }
                        addr190:
                        switch(§§pop())
                        {
                           case 0:
                              return this.m_v1.w.§1"$§();
                           case 1:
                              _loc1_ = b2Math.§'!%§(this.m_v2.w,this.m_v1.w);
                              if(_loc4_ && _loc1_)
                              {
                                 continue;
                              }
                              §§push(b2Math.§`!@§(_loc1_,this.m_v1.w.§1"$§()));
                              loop1:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop2:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr124:
                                    addr63:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                    return b2Math.§+Z§(_loc1_,1);
                                 }
                              }
                        }
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr184);
               }
               §§goto(addr166);
            }
            §§goto(addr190);
         }
         while(true);
         
         b2Settings.b2Assert(false);
         return new b2Vec2();
      }
      
      public function §%^§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§<v§);
         if(_loc3_)
         {
            var _loc1_:* = §§pop();
            if(_loc3_)
            {
               §§push(0);
               if(_loc3_)
               {
                  §§push(_loc1_);
                  if(!_loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_ || this)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              addr200:
                              §§push(_loc1_);
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       addr211:
                                       §§push(1);
                                       if(!_loc3_)
                                       {
                                          addr243:
                                       }
                                    }
                                    else
                                    {
                                       addr225:
                                       §§push(2);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§goto(addr243);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(2);
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr224:
                                       if(§§pop() === _loc1_)
                                       {
                                          §§goto(addr225);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                    §§goto(addr243);
                                 }
                                 §§goto(addr243);
                              }
                              §§goto(addr224);
                           }
                           §§goto(addr249);
                        }
                        §§goto(addr211);
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr200);
                        }
                     }
                     §§goto(addr243);
                  }
                  §§goto(addr224);
               }
               §§goto(addr200);
            }
            §§goto(addr211);
         }
         addr249:
         switch(§§pop())
         {
            case 0:
               b2Settings.b2Assert(false);
               break;
            default:
               b2Settings.b2Assert(false);
               if(_loc3_)
               {
                  if(!_loc2_)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        return new b2Vec2();
                     }
                     break;
                  }
               }
            case 2:
               §§push(§§findproperty(b2Vec2));
               §§push(this.m_v1.a);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(this.m_v1);
                  if(!_loc2_)
                  {
                     §§push(§§pop().w.x);
                     if(_loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_)
                        {
                           §§push(this.m_v2.a);
                           if(_loc3_ || _loc1_)
                           {
                              §§push(this.m_v2);
                              if(_loc3_)
                              {
                                 §§push(§§pop().w);
                                 if(_loc3_ || this)
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          addr111:
                                          §§push(§§pop() + §§pop());
                                          §§push(this.m_v1.a);
                                          if(!_loc2_)
                                          {
                                             addr129:
                                             §§push(this.m_v1.w.y);
                                             if(_loc3_)
                                             {
                                                §§goto(addr146);
                                             }
                                             addr146:
                                             §§push(§§pop() * §§pop());
                                             if(_loc3_)
                                             {
                                                addr135:
                                                §§push(this.m_v2.a);
                                                if(!_loc2_)
                                                {
                                                   addr140:
                                                   §§push(§§pop() * this.m_v2.w.y);
                                                }
                                             }
                                             return new §§pop().b2Vec2(§§pop(),§§pop());
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr135);
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr146);
                        }
                     }
                  }
               }
               §§goto(addr111);
            case 1:
               return this.m_v1.w;
         }
         return new b2Vec2();
      }
      
      public function §-!C§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§<v§);
         if(!(_loc5_ && param2))
         {
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               §§push(0);
               if(_loc4_ || param1)
               {
                  §§push(_loc3_);
                  if(_loc4_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(_loc4_)
                           {
                              addr474:
                           }
                           else
                           {
                              addr534:
                           }
                        }
                        else
                        {
                           addr494:
                           §§push(1);
                           if(!(_loc4_ || param2))
                           {
                              addr519:
                              if(§§pop() === _loc3_)
                              {
                                 addr521:
                                 §§push(3);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr534);
                                 }
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                        }
                        addr540:
                        switch(§§pop())
                        {
                           case 0:
                              b2Settings.b2Assert(false);
                              break;
                              addr241:
                           case 1:
                              param1.SetV(this.m_v1.§&!l§);
                              if(_loc5_ && this)
                              {
                                 addr438:
                                 break;
                              }
                              if(!(_loc5_ && param1))
                              {
                                 param2.SetV(this.m_v1.§`!^§);
                                 break;
                                 addr212:
                              }
                              else
                              {
                                 §§goto(addr241);
                              }
                              break;
                           case 2:
                              §§push(param1);
                              §§push(this.m_v1.a);
                              if(!_loc5_)
                              {
                                 §§push(this.m_v1.§&!l§.x);
                                 if(_loc4_)
                                 {
                                    addr204:
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_ || param2)
                                    {
                                       §§push(this.m_v2.a);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() * this.m_v2.§&!l§.x);
                                       }
                                    }
                                    §§pop().x = §§pop();
                                    while(true)
                                    {
                                       §§push(param1);
                                       §§push(this.m_v1.a);
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(this.m_v1.§&!l§.y);
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr143:
                                                §§push(this.m_v2.a);
                                                if(!(_loc5_ && this))
                                                {
                                                   addr158:
                                                   §§push(§§pop() + §§pop() * this.m_v2.§&!l§.y);
                                                }
                                                §§goto(addr158);
                                             }
                                             §§pop().y = §§pop();
                                             continue;
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr204);
                           case 3:
                              §§push(param2);
                              §§push(param1);
                              §§push(this.m_v1.a);
                              if(_loc4_)
                              {
                                 §§push(this.m_v1.§&!l§.x);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_)
                                    {
                                       §§push(this.m_v2.a);
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(this.m_v2.§&!l§);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop().x);
                                             if(_loc4_ || param2)
                                             {
                                                addr332:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc5_ && param2))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc4_ || this)
                                                   {
                                                      addr319:
                                                      §§push(this.m_v3.a);
                                                      if(_loc5_ && this)
                                                      {
                                                      }
                                                      addr343:
                                                      _loc3_ = §§pop();
                                                      §§pop().x = §§pop();
                                                      §§pop().x = _loc3_;
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§push(param2);
                                                         §§push(param1);
                                                         §§push(this.m_v1.a);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this.m_v1.§&!l§.y);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc4_)
                                                               {
                                                                  addr371:
                                                                  §§push(this.m_v2.a);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(this.m_v2.§&!l§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 addr400:
                                                                                 §§push(this.m_v3.a);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr409:
                                                                                    §§push(§§pop() * this.m_v3.§&!l§.y);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr413:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                 }
                                                                                 _loc3_ = §§pop();
                                                                                 §§pop().y = §§pop();
                                                                                 §§pop().y = _loc3_;
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                           }
                                                                           §§goto(addr413);
                                                                        }
                                                                     }
                                                                     §§goto(addr409);
                                                                  }
                                                                  §§goto(addr413);
                                                               }
                                                               §§goto(addr400);
                                                            }
                                                            §§goto(addr409);
                                                         }
                                                         §§goto(addr371);
                                                      }
                                                      break;
                                                   }
                                                   addr342:
                                                   §§goto(addr343);
                                                   §§push(§§pop());
                                                }
                                                §§push(this.m_v3.§&!l§.x);
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr341:
                                                §§goto(addr342);
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr343);
                                          }
                                          §§goto(addr332);
                                       }
                                       §§goto(addr343);
                                    }
                                    §§goto(addr319);
                                 }
                                 §§goto(addr341);
                              }
                              §§goto(addr342);
                           default:
                              b2Settings.b2Assert(false);
                              if(_loc4_ || param2)
                              {
                                 §§goto(addr438);
                              }
                        }
                        return;
                        addr539:
                     }
                     else
                     {
                        §§push(1);
                        if(_loc4_)
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ && this))
                           {
                              addr486:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    §§goto(addr494);
                                 }
                                 else
                                 {
                                    addr512:
                                    §§push(2);
                                    if(_loc5_)
                                    {
                                       §§goto(addr534);
                                    }
                                    else
                                    {
                                       addr515:
                                    }
                                    §§goto(addr539);
                                 }
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc4_)
                                 {
                                    addr506:
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr512);
                                          }
                                          else
                                          {
                                             §§goto(addr521);
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc4_)
                                          {
                                             §§goto(addr519);
                                          }
                                       }
                                       §§goto(addr534);
                                    }
                                    §§goto(addr519);
                                 }
                              }
                              §§goto(addr515);
                           }
                           §§goto(addr519);
                        }
                        §§goto(addr506);
                     }
                     §§goto(addr519);
                  }
                  §§goto(addr486);
               }
               §§goto(addr474);
            }
            §§goto(addr512);
         }
         §§goto(addr540);
      }
      
      public function §1";§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§<v§);
         if(_loc2_ || _loc2_)
         {
            var _loc1_:* = §§pop();
            if(_loc2_ || _loc1_)
            {
               §§push(0);
               if(!(_loc3_ && this))
               {
                  §§push(_loc1_);
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc2_)
                        {
                           §§push(0);
                           if(!_loc2_)
                           {
                              addr244:
                           }
                        }
                        else
                        {
                           addr217:
                           §§push(2);
                           if(!(_loc2_ || _loc3_))
                           {
                              addr229:
                              if(§§pop() === _loc1_)
                              {
                                 addr231:
                                 §§push(3);
                                 if(_loc2_)
                                 {
                                    §§goto(addr244);
                                 }
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                           else
                           {
                              addr225:
                           }
                        }
                        addr250:
                        switch(§§pop())
                        {
                           case 0:
                              b2Settings.b2Assert(false);
                              break;
                              addr128:
                           default:
                              §§push(0);
                              do
                              {
                                 b2Settings.b2Assert(false);
                              }
                              while(!(_loc2_ || _loc3_));
                              
                              if(_loc2_ || _loc3_)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(0);
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          addr87:
                                          if(_loc2_)
                                          {
                                             return §§pop();
                                          }
                                          addr101:
                                          if(!_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr128);
                                    }
                                 }
                                 else
                                 {
                                    addr105:
                                    return 0;
                                 }
                                 return §§pop();
                              }
                              addr91:
                              §§push(b2Math.§'!%§(this.m_v1.w,this.m_v2.w).§`g§());
                              §§goto(addr101);
                           case 2:
                              §§goto(addr91);
                           case 1:
                              §§goto(addr105);
                           case 3:
                              §§goto(addr87);
                        }
                        return b2Math.§`!@§(b2Math.§'!%§(this.m_v2.w,this.m_v1.w),b2Math.§'!%§(this.m_v3.w,this.m_v1.w));
                        addr249:
                     }
                     else
                     {
                        §§push(1);
                        if(_loc2_)
                        {
                           §§push(_loc1_);
                           if(!(_loc3_ && _loc1_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr189:
                                    §§push(1);
                                    if(_loc3_ && _loc2_)
                                    {
                                       §§goto(addr225);
                                    }
                                    else
                                    {
                                       addr197:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr231);
                                 }
                                 §§goto(addr249);
                              }
                              else
                              {
                                 §§push(2);
                                 if(!_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§goto(addr217);
                                          }
                                          §§goto(addr231);
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc2_)
                                          {
                                             §§goto(addr229);
                                          }
                                       }
                                    }
                                    §§goto(addr229);
                                 }
                              }
                              §§goto(addr244);
                           }
                           §§goto(addr229);
                        }
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr229);
               }
               §§goto(addr197);
            }
            §§goto(addr189);
         }
         §§goto(addr250);
      }
      
      public function Solve2() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:b2Vec2 = this.m_v1.w;
         var _loc2_:b2Vec2 = this.m_v2.w;
         var _loc3_:b2Vec2 = b2Math.§'!%§(_loc2_,_loc1_);
         §§push(_loc1_.x);
         if(!_loc7_)
         {
            §§push(_loc3_.x);
            if(!_loc7_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc7_ && _loc2_))
               {
                  addr49:
                  §§push(_loc1_.y);
                  if(!(_loc7_ && _loc1_))
                  {
                     addr58:
                     §§push(§§pop() * _loc3_.y);
                     if(_loc8_ || _loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc7_ && this))
                        {
                           addr86:
                           §§push(-§§pop());
                           if(_loc8_ || _loc3_)
                           {
                              addr84:
                              §§push(Number(§§pop()));
                           }
                           var _loc4_:*;
                           §§push(_loc4_ = §§pop());
                           if(!(_loc7_ && _loc1_))
                           {
                              §§push(0);
                              if(!(_loc7_ && _loc2_))
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc8_ || this)
                                    {
                                       this.m_v1.a = 1;
                                       if(_loc7_)
                                       {
                                       }
                                       addr127:
                                       §§push(_loc2_.x);
                                       if(_loc8_ || this)
                                       {
                                          addr136:
                                          §§push(_loc3_.x);
                                          if(_loc8_ || _loc1_)
                                          {
                                             addr155:
                                             §§push(§§pop() * §§pop());
                                             if(!_loc7_)
                                             {
                                                addr158:
                                                §§push(_loc2_.y);
                                                if(_loc8_)
                                                {
                                                   addr162:
                                                   §§push(§§pop() * _loc3_.y);
                                                   if(_loc8_ || _loc2_)
                                                   {
                                                      addr172:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         addr175:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§push(§§pop());
                                                   }
                                                   var _loc5_:* = §§pop();
                                                   if(_loc8_ || this)
                                                   {
                                                      if(§§pop() <= 0)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            this.m_v2.a = 1;
                                                            if(!(_loc7_ && this))
                                                            {
                                                               this.§<v§ = 1;
                                                            }
                                                            else
                                                            {
                                                               addr217:
                                                               if(true)
                                                               {
                                                                  addr230:
                                                                  §§push(1);
                                                                  §§push(_loc5_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§pop() + _loc4_);
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                                  if(_loc8_ || _loc1_)
                                                                  {
                                                                     addr244:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc6_:* = §§pop();
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(this.m_v1);
                                                                     §§push(_loc5_);
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() * _loc6_);
                                                                     }
                                                                     §§pop().a = §§pop();
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.m_v2);
                                                                     §§push(_loc4_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop() * _loc6_);
                                                                     }
                                                                     §§pop().a = §§pop();
                                                                     while(_loc8_ || _loc3_)
                                                                     {
                                                                        this.§<v§ = 2;
                                                                        if(!_loc7_)
                                                                        {
                                                                           return;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            this.m_v1.Set(this.m_v2);
                                                            return;
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr244);
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr158);
                                    }
                                    this.§<v§ = 1;
                                    if(_loc8_ || _loc3_)
                                    {
                                       return;
                                    }
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr84);
                     }
                  }
               }
               §§goto(addr86);
            }
            §§goto(addr58);
         }
         §§goto(addr49);
      }
      
      public function Solve3() : void
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:* = NaN;
         var _loc1_:b2Vec2 = this.m_v1.w;
         var _loc2_:b2Vec2 = this.m_v2.w;
         var _loc3_:b2Vec2 = this.m_v3.w;
         var _loc4_:b2Vec2 = b2Math.§'!%§(_loc2_,_loc1_);
         §§push(b2Math.§@!y§(_loc1_,_loc4_));
         if(_loc27_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(b2Math.§@!y§(_loc2_,_loc4_));
         if(!(_loc28_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:*;
         §§push(_loc6_ = §§pop());
         if(_loc27_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc5_);
         if(_loc27_ || this)
         {
            §§push(-§§pop());
            if(!(_loc28_ && _loc3_))
            {
               addr95:
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:b2Vec2 = b2Math.§'!%§(_loc3_,_loc1_);
            §§push(b2Math.§@!y§(_loc1_,_loc9_));
            if(!_loc28_)
            {
               §§push(Number(§§pop()));
            }
            var _loc10_:* = §§pop();
            §§push(b2Math.§@!y§(_loc3_,_loc9_));
            if(_loc27_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:*;
            §§push(_loc11_ = §§pop());
            if(_loc27_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc12_:* = §§pop();
            §§push(_loc10_);
            if(!(_loc28_ && this))
            {
               §§push(-§§pop());
               if(!_loc28_)
               {
                  addr140:
                  §§push(Number(§§pop()));
               }
               var _loc13_:* = §§pop();
               var _loc14_:b2Vec2 = b2Math.§'!%§(_loc3_,_loc2_);
               §§push(b2Math.§@!y§(_loc2_,_loc14_));
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc15_:* = §§pop();
               §§push(b2Math.§@!y§(_loc3_,_loc14_));
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc16_:*;
               §§push(_loc16_ = §§pop());
               if(!(_loc28_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc17_:* = §§pop();
               §§push(_loc15_);
               if(!(_loc28_ && _loc1_))
               {
                  §§push(-§§pop());
                  if(!(_loc28_ && _loc1_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc18_:* = §§pop();
               §§push(b2Math.§`!@§(_loc4_,_loc9_));
               if(!(_loc28_ && _loc1_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc19_:*;
               §§push(_loc19_ = §§pop());
               if(_loc27_ || _loc1_)
               {
                  §§push(§§pop() * b2Math.§`!@§(_loc2_,_loc3_));
                  if(!_loc28_)
                  {
                     addr220:
                     §§push(Number(§§pop()));
                  }
                  var _loc20_:* = §§pop();
                  §§push(_loc19_);
                  if(_loc27_ || _loc2_)
                  {
                     §§push(§§pop() * b2Math.§`!@§(_loc3_,_loc1_));
                     if(!_loc28_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc21_:* = §§pop();
                  §§push(_loc19_);
                  if(_loc27_)
                  {
                     §§push(§§pop() * b2Math.§`!@§(_loc1_,_loc2_));
                     if(_loc27_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc22_:* = §§pop();
                  if(!_loc28_)
                  {
                     §§push(_loc8_);
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
                              loop3:
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
                                             loop33:
                                             while(_loc27_ || _loc3_)
                                             {
                                                §§push(0);
                                                loop34:
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   loop35:
                                                   while(_loc27_ || this)
                                                   {
                                                      loop36:
                                                      while(!§§pop())
                                                      {
                                                         loop37:
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                            loop38:
                                                            while(true)
                                                            {
                                                               if(_loc27_)
                                                               {
                                                                  if(_loc27_)
                                                                  {
                                                                     §§push(0);
                                                                     loop39:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() <= §§pop());
                                                                        loop40:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop41:
                                                                           while(!_loc28_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop42:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    loop43:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc18_);
                                                                                       loop44:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          addr829:
                                                                                          while(!(_loc28_ && this))
                                                                                          {
                                                                                             §§push(§§pop() <= §§pop());
                                                                                             continue loop42;
                                                                                          }
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() > §§pop());
                                                                                             if(!(_loc28_ && _loc1_))
                                                                                             {
                                                                                                if(!(_loc27_ || _loc2_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr1039:
                                                                                                      loop67:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               loop68:
                                                                                                               while(_loc27_)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     addr1007:
                                                                                                                     while(!_loc28_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        while(_loc27_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              break loop41;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr1086:
                                                                                                                              §§push(1);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(!(_loc28_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr1103:
                                                                                                                                       _loc24_ = §§pop() / (§§pop() + §§pop());
                                                                                                                                       addr1066:
                                                                                                                                       §§push(this.m_v1);
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          addr1071:
                                                                                                                                          §§pop().a = _loc7_ * _loc24_;
                                                                                                                                          break loop68;
                                                                                                                                       }
                                                                                                                                       addr1151:
                                                                                                                                       addr1149:
                                                                                                                                       addr1140:
                                                                                                                                       §§pop().a = 1;
                                                                                                                                       this.§<v§ = 1;
                                                                                                                                       return;
                                                                                                                                       addr1104:
                                                                                                                                       addr1102:
                                                                                                                                       addr1101:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr1176:
                                                                                                                                    }
                                                                                                                                    addr1176:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       addr1180:
                                                                                                                                       §§push(§§pop() + _loc22_);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1190:
                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                 if(_loc27_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr1189:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc23_:* = §§pop();
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    §§push(this.m_v1);
                                                                                                                                    §§push(_loc20_);
                                                                                                                                    if(!_loc28_)
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
                                                                                                                                    addr1241:
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(this.m_v3);
                                                                                                                                       §§push(_loc22_);
                                                                                                                                       if(!(_loc28_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * _loc23_);
                                                                                                                                       }
                                                                                                                                       §§pop().a = §§pop();
                                                                                                                                       addr1224:
                                                                                                                                       if(!(_loc28_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          this.§<v§ = 3;
                                                                                                                                          if(!(_loc27_ || _loc1_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr1224);
                                                                                                                                          }
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                       §§goto(addr1241);
                                                                                                                                       addr1243:
                                                                                                                                    }
                                                                                                                                    addr1262:
                                                                                                                                    §§goto(addr1262);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1243);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr1160:
                                                                                                                                 §§push(_loc20_);
                                                                                                                                 if(_loc27_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc21_);
                                                                                                                                    if(!(_loc28_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr1176);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1180);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1180);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 addr1021:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop27;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1019:
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1108:
                                                                                                                     addr1128:
                                                                                                                     while(!(_loc28_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              addr1120:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    break loop35;
                                                                                                                                 }
                                                                                                                                 addr1084:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1085);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr1118:
                                                                                                                        }
                                                                                                                        break loop35;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        break loop67;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1061:
                                                                                                               this.m_v2.a = _loc8_ * _loc24_;
                                                                                                               this.§<v§ = 2;
                                                                                                               return;
                                                                                                               addr1054:
                                                                                                               addr1060:
                                                                                                               addr1059:
                                                                                                               addr1058:
                                                                                                               addr1044:
                                                                                                               addr1062:
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         addr1131:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr1132:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               addr1107:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr1108);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr1130:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr1131);
                                                                                                            }
                                                                                                            §§goto(addr1118);
                                                                                                         }
                                                                                                      }
                                                                                                      addr1039:
                                                                                                   }
                                                                                                   §§goto(addr1012);
                                                                                                   addr767:
                                                                                                   loop51:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc28_ && _loc2_)
                                                                                                      {
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            loop57:
                                                                                                            while(!§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc17_);
                                                                                                                  loop59:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     addr583:
                                                                                                                     while(_loc27_)
                                                                                                                     {
                                                                                                                        continue loop34;
                                                                                                                     }
                                                                                                                     addr693:
                                                                                                                     loop55:
                                                                                                                     while(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() <= §§pop());
                                                                                                                        loop56:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              while(_loc27_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 while(!(_loc28_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc17_);
                                                                                                                                    continue loop44;
                                                                                                                                    addr503:
                                                                                                                                    if(!(_loc27_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(!(_loc28_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       if(!(_loc27_ || _loc2_))
                                                                                                                                       {
                                                                                                                                          continue loop5;
                                                                                                                                       }
                                                                                                                                       §§push(this.m_v2);
                                                                                                                                       if(!(_loc28_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc17_);
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc26_);
                                                                                                                                                      if(_loc27_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr384:
                                                                                                                                                         §§pop().a = §§pop() * §§pop();
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc28_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.m_v3);
                                                                                                                                                               if(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc28_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                     if(_loc27_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc26_);
                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr352:
                                                                                                                                                                                 §§pop().a = §§pop() * §§pop();
                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§<v§ = 2;
                                                                                                                                                                                    §§push(this.m_v1);
                                                                                                                                                                                    if(_loc27_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc27_ || _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.m_v3);
                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().Set(§§pop());
                                                                                                                                                                                             if(!(_loc28_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                return;
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop57;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr669:
                                                                                                                                                                                          §§pop().Set(§§pop());
                                                                                                                                                                                          return;
                                                                                                                                                                                          addr670:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1066);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr660:
                                                                                                                                                                                    if(!(_loc28_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr669);
                                                                                                                                                                                       §§push(this.m_v3);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr810:
                                                                                                                                                                                       if(!(_loc28_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().Set(this.m_v2);
                                                                                                                                                                                          return;
                                                                                                                                                                                          addr820:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr922:
                                                                                                                                                                                       §§push(_loc12_);
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc25_);
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr931:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().a = §§pop();
                                                                                                                                                                                                   addr908:
                                                                                                                                                                                                   this.m_v3.a = _loc13_ * _loc25_;
                                                                                                                                                                                                   addr909:
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop36;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc27_ || _loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§<v§ = 2;
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1122:
                                                                                                                                                                                                   while(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         addr1076:
                                                                                                                                                                                                         while(_loc27_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1084);
                                                                                                                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1144);
                                                                                                                                                                                                         addr483:
                                                                                                                                                                                                         if(!(_loc27_ || _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop59;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc28_ && this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop38;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc26_ = §§pop();
                                                                                                                                                                                                            §§goto(addr503);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1189);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1151);
                                                                                                                                                                                                   addr907:
                                                                                                                                                                                                   addr906:
                                                                                                                                                                                                   addr905:
                                                                                                                                                                                                   addr934:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1071);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr931);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc27_ || this))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr806:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          if(_loc27_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                             break loop55;
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                          §§goto(addr806);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1189);
                                                                                                                                                                                       addr732:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1104);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr907);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr906);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr908);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr352);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr905);
                                                                                                                                                               }
                                                                                                                                                               addr727:
                                                                                                                                                               §§pop().a = 1;
                                                                                                                                                               if(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  this.§<v§ = 1;
                                                                                                                                                                  §§goto(addr660);
                                                                                                                                                                  §§push(this.m_v1);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1054);
                                                                                                                                                            }
                                                                                                                                                            addr1147:
                                                                                                                                                            §§goto(addr1149);
                                                                                                                                                            §§push(this.m_v1);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr922);
                                                                                                                                                         §§push(this.m_v1);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1060);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1059);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1061);
                                                                                                                                             }
                                                                                                                                             §§goto(addr384);
                                                                                                                                          }
                                                                                                                                          addr889:
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§pop().Set(this.m_v3);
                                                                                                                                             return;
                                                                                                                                             addr894:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr1058);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr862:
                                                                                                                                          §§pop().a = 1;
                                                                                                                                          if(_loc28_)
                                                                                                                                          {
                                                                                                                                             break loop56;
                                                                                                                                          }
                                                                                                                                          this.§<v§ = 1;
                                                                                                                                          §§push(this.m_v1);
                                                                                                                                       }
                                                                                                                                       §§goto(addr810);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr853:
                                                                                                                                       if(_loc27_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr862);
                                                                                                                                          §§push(this.m_v2);
                                                                                                                                       }
                                                                                                                                       else if(_loc27_)
                                                                                                                                       {
                                                                                                                                          continue loop37;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr894);
                                                                                                                                 }
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr889);
                                                                                                                                    §§push(this.m_v2);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop40;
                                                                                                                              addr779:
                                                                                                                           }
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              while(!(_loc28_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 continue loop51;
                                                                                                                              }
                                                                                                                              continue loop35;
                                                                                                                              addr759:
                                                                                                                           }
                                                                                                                           if(_loc27_ || _loc1_)
                                                                                                                           {
                                                                                                                              if(!_loc28_)
                                                                                                                              {
                                                                                                                                 continue loop57;
                                                                                                                              }
                                                                                                                              §§goto(addr1039);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr1016:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc21_);
                                                                                                                                    continue loop33;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1086);
                                                                                                                              }
                                                                                                                              §§goto(addr1160);
                                                                                                                           }
                                                                                                                           §§goto(addr1140);
                                                                                                                        }
                                                                                                                        §§goto(addr1044);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           continue loop39;
                                                                                                                        }
                                                                                                                        §§goto(addr829);
                                                                                                                     }
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  addr656:
                                                                                                               }
                                                                                                            }
                                                                                                            if(_loc27_ || _loc1_)
                                                                                                            {
                                                                                                               if(_loc27_ || _loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr727);
                                                                                                                  §§push(this.m_v3);
                                                                                                               }
                                                                                                               §§goto(addr934);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr862);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr779);
                                                                                                      }
                                                                                                      §§goto(addr1130);
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1039);
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr851);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 continue loop36;
                                                                              }
                                                                              §§goto(addr1015);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop33;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr1128);
                                                            }
                                                         }
                                                      }
                                                      §§push(1);
                                                      if(_loc27_)
                                                      {
                                                         §§push(_loc12_);
                                                         if(!_loc28_)
                                                         {
                                                            if(_loc27_ || _loc2_)
                                                            {
                                                               §§push(_loc13_);
                                                               if(_loc27_ || _loc2_)
                                                               {
                                                                  §§goto(addr977);
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§goto(addr1176);
                                                            }
                                                            §§goto(addr1101);
                                                         }
                                                         §§goto(addr977);
                                                      }
                                                      §§goto(addr1160);
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr1122);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr1157:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr1146);
                                 }
                              }
                           }
                        }
                        if(_loc28_ && _loc3_)
                        {
                           continue;
                        }
                        §§push(0);
                        if(_loc27_ || _loc3_)
                        {
                           if(_loc27_ || this)
                           {
                              if(!_loc28_)
                              {
                                 §§push(§§pop() <= §§pop());
                                 if(!_loc28_)
                                 {
                                    if(!_loc28_)
                                    {
                                       if(_loc27_)
                                       {
                                          §§goto(addr444);
                                       }
                                       §§goto(addr1157);
                                    }
                                    §§goto(addr627);
                                 }
                                 §§goto(addr557);
                              }
                              §§goto(addr1076);
                           }
                           §§goto(addr1007);
                        }
                        §§goto(addr535);
                     }
                  }
                  §§goto(addr669);
               }
               §§goto(addr220);
            }
            §§goto(addr140);
         }
         §§goto(addr95);
      }
   }
}
