package §'!;§
{
   import §#b§.*;
   import §<!B§.*;
   import §?s§.*;
   
   class b2Simplex
   {
       
      
      public var m_v1:b2SimplexVertex;
      
      public var m_v2:b2SimplexVertex;
      
      public var m_v3:b2SimplexVertex;
      
      public var §>!+§:Vector.<b2SimplexVertex>;
      
      public var §'!,§:int;
      
      function b2Simplex()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_v1 = new b2SimplexVertex();
            this.m_v2 = new b2SimplexVertex();
            if(_loc1_)
            {
               addr38:
               this.m_v3 = new b2SimplexVertex();
               this.§>!+§ = new Vector.<b2SimplexVertex>(3);
               if(!_loc2_)
               {
                  super();
                  this.§>!+§[0] = this.m_v1;
               }
            }
            this.§>!+§[1] = this.m_v2;
            this.§>!+§[2] = this.m_v3;
            return;
         }
         §§goto(addr38);
      }
      
      public function §^!J§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc10_:b2SimplexVertex = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         if(!(_loc13_ && param3))
         {
            §§push(b2Settings);
            if(_loc14_)
            {
               §§push(0 <= param1.count);
               if(!_loc13_)
               {
                  if(§§pop())
                  {
                     if(!_loc13_)
                     {
                        §§pop();
                        addr51:
                        §§push(param1.count <= 3);
                     }
                  }
               }
               §§pop().b2Assert(§§pop());
               if(!_loc13_)
               {
                  this.§'!,§ = param1.count;
                  addr62:
                  var _loc8_:Vector.<b2SimplexVertex> = this.§>!+§;
                  var _loc9_:int = 0;
                  while(true)
                  {
                     §§push(_loc9_);
                     if(_loc14_ || param1)
                     {
                        §§push(this.§'!,§);
                        if(_loc14_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc14_)
                              {
                                 §§push(this.§'!,§);
                                 if(_loc14_ || param2)
                                 {
                                    break;
                                 }
                                 addr289:
                                 if(§§pop() == 0)
                                 {
                                    addr291:
                                    (_loc10_ = _loc8_[0]).indexA = 0;
                                    if(!(_loc13_ && param3))
                                    {
                                       _loc10_.indexB = 0;
                                    }
                                    _loc6_ = param2.§2!E§(0);
                                    _loc7_ = param4.§2!E§(0);
                                    if(_loc14_ || param1)
                                    {
                                       _loc10_.§!! § = b2Math.§#!N§(param3,_loc6_);
                                       if(_loc14_)
                                       {
                                          _loc10_.§0!j§ = b2Math.§#!N§(param5,_loc7_);
                                          if(_loc14_)
                                          {
                                             addr352:
                                             _loc10_.§6! § = b2Math.§<b§(_loc10_.§0!j§,_loc10_.§!! §);
                                             if(!_loc14_)
                                             {
                                             }
                                             §§goto(addr365);
                                          }
                                          this.§'!,§ = 1;
                                          addr365:
                                          return;
                                       }
                                       §§goto(addr352);
                                    }
                                 }
                                 §§goto(addr352);
                              }
                              addr281:
                              if(_loc12_ < Number.MIN_VALUE)
                              {
                                 if(_loc14_)
                                 {
                                    this.§'!,§ = 0;
                                    addr287:
                                    §§goto(addr289);
                                    §§push(this.§'!,§);
                                 }
                                 §§goto(addr291);
                              }
                              §§goto(addr287);
                           }
                           else
                           {
                              (_loc10_ = _loc8_[_loc9_]).indexA = param1.indexA[_loc9_];
                              if(!(_loc13_ && param2))
                              {
                                 _loc10_.indexB = param1.indexB[_loc9_];
                              }
                              _loc6_ = param2.§2!E§(_loc10_.indexA);
                              _loc7_ = param4.§2!E§(_loc10_.indexB);
                              if(!_loc13_)
                              {
                                 _loc10_.§!! § = b2Math.§#!N§(param3,_loc6_);
                                 if(_loc14_)
                                 {
                                    addr116:
                                    _loc10_.§0!j§ = b2Math.§#!N§(param5,_loc7_);
                                    if(_loc13_ && param2)
                                    {
                                       continue;
                                    }
                                    _loc10_.§6! § = b2Math.§<b§(_loc10_.§0!j§,_loc10_.§!! §);
                                    if(_loc13_)
                                    {
                                       continue;
                                    }
                                    _loc10_.a = 0;
                                    if(!(_loc14_ || param1))
                                    {
                                       continue;
                                    }
                                 }
                                 _loc9_++;
                                 continue;
                              }
                              §§goto(addr116);
                           }
                        }
                        §§goto(addr289);
                     }
                     break;
                  }
                  §§push(1);
                  if(!_loc13_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!_loc13_)
                        {
                           §§push(param1.§^!8§);
                           if(!(_loc13_ && param3))
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc11_ = §§pop();
                        }
                        §§push(this.§3!K§());
                        if(!(_loc13_ && this))
                        {
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                           if(!(_loc13_ && this))
                           {
                              _loc12_ = §§pop();
                              if(!_loc13_)
                              {
                                 §§push(0.5);
                                 if(_loc14_ || param2)
                                 {
                                    addr230:
                                    §§push(§§pop() * _loc11_);
                                    if(!_loc13_)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc14_)
                                       {
                                          §§push(§§pop());
                                          if(_loc14_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc13_ && param3))
                                                {
                                                   §§pop();
                                                   if(_loc14_)
                                                   {
                                                      §§push(2);
                                                      if(_loc14_ || param2)
                                                      {
                                                         §§push(§§pop() * _loc11_);
                                                         if(_loc14_)
                                                         {
                                                            addr264:
                                                            addr263:
                                                            §§push(§§pop() < _loc12_);
                                                            if(_loc14_ || param1)
                                                            {
                                                               addr272:
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr281);
                                                            }
                                                            §§pop();
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                }
                                                §§goto(addr281);
                                             }
                                          }
                                          §§goto(addr272);
                                       }
                                       §§goto(addr281);
                                    }
                                 }
                                 §§goto(addr264);
                              }
                              §§goto(addr263);
                           }
                           §§goto(addr230);
                        }
                        §§goto(addr281);
                     }
                     §§goto(addr287);
                  }
                  §§goto(addr289);
               }
               §§goto(addr62);
            }
            §§goto(addr51);
         }
         §§goto(addr62);
      }
      
      public function §6!c§(param1:b2SimplexCache) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.§^!8§ = this.§3!K§();
            if(!(_loc5_ && this))
            {
               addr29:
               param1.count = uint(this.§'!,§);
            }
            var _loc2_:Vector.<b2SimplexVertex> = this.§>!+§;
            var _loc3_:int = 0;
            while(_loc3_ < this.§'!,§)
            {
               param1.indexA[_loc3_] = uint(_loc2_[_loc3_].indexA);
               if(!(_loc4_ || param1))
               {
                  break;
               }
               param1.indexB[_loc3_] = uint(_loc2_[_loc3_].indexB);
               if(!(_loc4_ || _loc3_))
               {
                  break;
               }
               _loc3_++;
               if(_loc5_)
               {
                  break;
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §3o§() : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:b2Vec2 = null;
         var _loc2_:* = NaN;
         §§push(this.§'!,§);
         if(_loc4_ || _loc3_)
         {
            var _loc3_:* = §§pop();
            if(!(_loc5_ && this))
            {
               §§push(1);
               if(!(_loc5_ && this))
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(!(_loc4_ || _loc3_))
                           {
                              addr145:
                              if(§§pop() === _loc3_)
                              {
                                 addr147:
                                 §§push(1);
                                 if(!_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                        }
                        §§goto(addr147);
                     }
                     else
                     {
                        §§push(2);
                        if(_loc4_)
                        {
                           §§goto(addr145);
                        }
                     }
                     §§goto(addr156);
                  }
               }
               §§goto(addr145);
            }
            §§goto(addr147);
         }
         addr156:
         switch(§§pop())
         {
            case 0:
               return this.m_v1.§6! §.§[1§();
            case 1:
               _loc1_ = b2Math.§<b§(this.m_v2.§6! §,this.m_v1.§6! §);
               if(_loc5_ && _loc1_)
               {
                  break;
               }
               §§push(b2Math.§?§(_loc1_,this.m_v1.§6! §.§[1§()));
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(_loc4_)
                  {
                     addr58:
                     _loc2_ = §§pop();
                     §§push(_loc2_);
                  }
                  if(§§pop() > 0)
                  {
                     return b2Math.§=!b§(1,_loc1_);
                  }
                  return b2Math.§!!r§(_loc1_,1);
               }
               §§goto(addr58);
               break;
            default:
               b2Settings.b2Assert(false);
         }
         return new b2Vec2();
      }
      
      public function §0!"§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§'!,§);
         if(_loc3_ || this)
         {
            var _loc1_:* = §§pop();
            if(!_loc2_)
            {
               §§push(0);
               §§push(_loc1_);
               if(!_loc2_)
               {
                  if(§§pop() === §§pop())
                  {
                     §§push(!_loc2_ ? 0 : 2);
                  }
                  else
                  {
                     §§push(1);
                     if(!_loc2_)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc1_)
                        {
                           addr205:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(1);
                                 if(!_loc2_)
                                 {
                                    addr234:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          b2Settings.b2Assert(false);
                                          if(_loc3_ || this)
                                          {
                                             return new b2Vec2();
                                          }
                                          break;
                                       default:
                                          break;
                                       case 1:
                                          return this.m_v1.§6! §;
                                       case 2:
                                          §§push(§§findproperty(b2Vec2));
                                          §§push(this.m_v1.a);
                                          if(!_loc2_)
                                          {
                                             §§push(this.m_v1);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop().§6! §.x);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc2_)
                                                   {
                                                      §§push(this.m_v2.a);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(this.m_v2);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(§§pop().§6! §);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc3_ || _loc1_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc2_ && _loc1_))
                                                                  {
                                                                     §§goto(addr122);
                                                                  }
                                                                  §§goto(addr142);
                                                               }
                                                               §§goto(addr147);
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                   }
                                                   §§goto(addr122);
                                                }
                                                §§goto(addr133);
                                             }
                                             §§goto(addr122);
                                          }
                                          addr122:
                                          §§push(§§pop() + §§pop());
                                          §§push(this.m_v1.a);
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr136:
                                             addr133:
                                             §§push(this.m_v1.§6! §.y);
                                             if(_loc3_)
                                             {
                                                §§goto(addr153);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          addr153:
                                          §§push(§§pop() * §§pop());
                                          if(!_loc2_)
                                          {
                                             addr142:
                                             §§push(this.m_v2.a);
                                             if(_loc3_)
                                             {
                                                addr147:
                                                §§push(§§pop() * this.m_v2.§6! §.y);
                                             }
                                          }
                                          return new §§pop().b2Vec2(§§pop(),§§pop());
                                    }
                                    b2Settings.b2Assert(false);
                                    return new b2Vec2();
                                    addr233:
                                 }
                                 §§goto(addr233);
                              }
                              else
                              {
                                 §§goto(addr227);
                              }
                           }
                           else
                           {
                              §§push(2);
                              if(!(_loc2_ && _loc1_))
                              {
                                 addr226:
                                 if(§§pop() === _loc1_)
                                 {
                                    §§goto(addr227);
                                 }
                                 else
                                 {
                                    §§goto(addr233);
                                    §§push(3);
                                 }
                                 §§goto(addr233);
                              }
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr226);
                     }
                  }
                  §§goto(addr233);
               }
               §§goto(addr205);
            }
            §§goto(addr227);
         }
         §§goto(addr234);
      }
      
      public function § !F§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§'!,§);
         if(!(_loc4_ && param2))
         {
            var _loc3_:* = §§pop();
            if(_loc5_ || this)
            {
               §§push(0);
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§push(0);
                        if(!(_loc5_ || param2))
                        {
                           addr474:
                           if(§§pop() === _loc3_)
                           {
                              addr476:
                              §§push(3);
                              if(!_loc4_)
                              {
                                 addr479:
                              }
                           }
                           else
                           {
                              §§push(4);
                           }
                        }
                     }
                     else
                     {
                        addr471:
                        §§push(2);
                     }
                  }
                  else
                  {
                     §§push(1);
                     if(!_loc4_)
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§goto(addr484);
                              }
                              else
                              {
                                 §§goto(addr476);
                              }
                           }
                           else
                           {
                              §§push(2);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(_loc3_);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr468:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr471);
                                       }
                                       §§goto(addr484);
                                    }
                                    else
                                    {
                                       §§goto(addr474);
                                       §§push(3);
                                    }
                                    §§goto(addr476);
                                 }
                                 §§goto(addr474);
                              }
                           }
                           §§goto(addr479);
                        }
                        §§goto(addr468);
                     }
                  }
                  addr484:
                  §§goto(addr440);
               }
               §§goto(addr474);
            }
            addr440:
            §§goto(addr485);
         }
         addr485:
         switch(1)
         {
            case 0:
               b2Settings.b2Assert(false);
               if(!(_loc4_ && this))
               {
                  break;
               }
               addr381:
               break;
            case 1:
               param1.SetV(this.m_v1.§!! §);
               param2.SetV(this.m_v1.§0!j§);
               if(_loc5_)
               {
                  break;
               }
               §§goto(addr381);
               break;
            case 2:
               §§push(param1);
               §§push(this.m_v1.a);
               if(!(_loc4_ && this))
               {
                  §§push(this.m_v1.§!! §.x);
                  if(_loc5_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc4_ && this))
                     {
                        addr81:
                        §§push(this.m_v2.a);
                        if(_loc5_)
                        {
                           addr75:
                           §§push(§§pop() * this.m_v2.§!! §.x);
                        }
                        §§pop().x = §§pop() + §§pop();
                        §§push(param1);
                        §§push(this.m_v1.a);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(this.m_v1.§!! §.y);
                           if(_loc5_ || this)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_ || _loc3_)
                              {
                                 addr128:
                                 §§push(this.m_v2.a);
                                 if(_loc5_ || param2)
                                 {
                                    addr122:
                                    §§push(§§pop() * this.m_v2.§!! §.y);
                                 }
                                 §§pop().y = §§pop() + §§pop();
                                 if(!_loc4_)
                                 {
                                    §§push(param2);
                                    §§push(this.m_v1.a);
                                    if(!_loc4_)
                                    {
                                       §§push(this.m_v1.§0!j§.x);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc5_)
                                          {
                                             addr162:
                                             §§push(this.m_v2.a);
                                             if(_loc5_ || param1)
                                             {
                                                addr156:
                                                §§push(§§pop() * this.m_v2.§0!j§.x);
                                             }
                                             §§pop().x = §§pop() + §§pop();
                                             if(_loc5_ || this)
                                             {
                                                §§push(param2);
                                                §§push(this.m_v1.a);
                                                if(_loc5_)
                                                {
                                                   §§push(this.m_v1.§0!j§.y);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         addr190:
                                                         §§push(this.m_v2.a);
                                                         if(!_loc4_)
                                                         {
                                                            addr200:
                                                            §§push(§§pop() + §§pop() * this.m_v2.§0!j§.y);
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                      §§pop().y = §§pop();
                                                      if(_loc5_ || this)
                                                      {
                                                         addr209:
                                                         break;
                                                      }
                                                      addr374:
                                                      break;
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr190);
                                             }
                                             else
                                             {
                                                §§goto(addr381);
                                             }
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr128);
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
               if(_loc5_ || _loc3_)
               {
                  §§push(this.m_v1.§!! §.x);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc4_ && param1))
                     {
                        addr252:
                        §§push(this.m_v2.a);
                        if(_loc5_)
                        {
                           §§push(this.m_v2.§!! §);
                           if(!_loc4_)
                           {
                              §§push(§§pop().x);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc4_)
                                    {
                                       addr281:
                                       §§push(this.m_v3.a);
                                       if(_loc5_)
                                       {
                                          addr295:
                                          §§push(§§pop() * this.m_v3.§!! §.x);
                                          if(_loc5_)
                                          {
                                             addr293:
                                             §§push(§§pop() + §§pop());
                                          }
                                          _loc3_ = §§pop();
                                          §§pop().x = §§pop();
                                          §§pop().x = _loc3_;
                                          §§push(param2);
                                          §§push(param1);
                                          §§push(this.m_v1.a);
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(this.m_v1.§!! §.y);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc4_)
                                                {
                                                   §§push(this.m_v2.a);
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr331:
                                                      §§push(this.m_v2.§!! §);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop().y);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc5_ || this)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc5_)
                                                               {
                                                                  addr350:
                                                                  §§push(this.m_v3.a);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr359:
                                                                     §§push(§§pop() * this.m_v3.§!! §.y);
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        addr368:
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                  }
                                                                  _loc3_ = §§pop();
                                                                  §§pop().y = §§pop();
                                                                  §§pop().y = _loc3_;
                                                                  §§goto(addr374);
                                                               }
                                                            }
                                                            §§goto(addr368);
                                                         }
                                                      }
                                                      §§goto(addr359);
                                                   }
                                                   §§goto(addr368);
                                                }
                                                §§goto(addr350);
                                             }
                                             §§goto(addr331);
                                          }
                                          §§goto(addr368);
                                       }
                                    }
                                    §§goto(addr295);
                                    §§push(§§pop());
                                 }
                              }
                           }
                           §§goto(addr295);
                        }
                        §§goto(addr293);
                     }
                     §§goto(addr281);
                  }
                  §§goto(addr295);
               }
               §§goto(addr252);
            default:
               b2Settings.b2Assert(false);
               if(_loc5_)
               {
                  §§goto(addr381);
               }
         }
      }
      
      public function §3!K§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§'!,§);
         if(!_loc2_)
         {
            var _loc1_:* = §§pop();
            if(_loc3_ || this)
            {
               §§push(0);
               §§push(_loc1_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     §§push(!_loc2_ ? 0 : 2);
                  }
                  else
                  {
                     §§push(1);
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                        addr139:
                        if(§§pop() === §§pop())
                        {
                           if(_loc3_)
                           {
                              §§push(1);
                              if(_loc3_)
                              {
                                 addr166:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       b2Settings.b2Assert(false);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(0);
                                          if(!_loc2_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr37);
                                       }
                                    case 3:
                                       §§push(b2Math.§?§(b2Math.§<b§(this.m_v2.§6! §,this.m_v1.§6! §),b2Math.§<b§(this.m_v3.§6! §,this.m_v1.§6! §)));
                                       if(!_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       break;
                                    case 1:
                                       §§push(0);
                                       if(_loc3_)
                                       {
                                          addr37:
                                          return §§pop();
                                       }
                                       break;
                                    case 2:
                                       §§push(b2Math.§<b§(this.m_v1.§6! §,this.m_v2.§6! §).§#!^§());
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          return §§pop();
                                       }
                                       break;
                                    default:
                                       b2Settings.b2Assert(false);
                                 }
                                 return 0;
                                 addr166:
                              }
                              §§goto(addr166);
                           }
                           else
                           {
                              addr160:
                              §§push(3);
                           }
                           addr161:
                           §§goto(addr166);
                        }
                        else
                        {
                           §§push(2);
                           §§push(_loc1_);
                           if(!_loc2_)
                           {
                              addr150:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr153);
                                 }
                                 else
                                 {
                                    §§goto(addr160);
                                 }
                              }
                              else
                              {
                                 §§push(3);
                                 if(_loc3_)
                                 {
                                    addr159:
                                    if(§§pop() === _loc1_)
                                    {
                                       §§goto(addr160);
                                    }
                                    else
                                    {
                                       §§goto(addr166);
                                       §§push(4);
                                    }
                                    §§goto(addr166);
                                 }
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr159);
                        }
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr166);
               }
               §§goto(addr139);
            }
            §§goto(addr153);
         }
         §§goto(addr166);
      }
      
      public function Solve2() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:b2Vec2 = this.m_v1.§6! §;
         var _loc2_:b2Vec2 = this.m_v2.§6! §;
         var _loc3_:b2Vec2 = b2Math.§<b§(_loc2_,_loc1_);
         §§push(_loc1_.x);
         if(_loc8_)
         {
            §§push(_loc3_.x);
            if(_loc8_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc7_)
               {
                  §§push(_loc1_.y);
                  if(!(_loc7_ && _loc3_))
                  {
                     addr53:
                     §§push(§§pop() * _loc3_.y);
                     if(_loc8_)
                     {
                        addr58:
                        §§push(§§pop() + §§pop());
                        if(_loc8_)
                        {
                           addr61:
                           §§push(-§§pop());
                           if(_loc8_ || _loc2_)
                           {
                           }
                           addr70:
                           var _loc4_:*;
                           §§push(_loc4_ = §§pop());
                           if(!_loc7_)
                           {
                              §§push(0);
                              if(_loc8_ || _loc2_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       this.m_v1.a = 1;
                                       if(!_loc7_)
                                       {
                                          this.§'!,§ = 1;
                                          if(!(_loc8_ || this))
                                          {
                                             addr107:
                                             §§push(_loc2_.x);
                                             if(_loc8_ || _loc2_)
                                             {
                                                §§push(_loc3_.x);
                                                if(!_loc7_)
                                                {
                                                   addr130:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§push(_loc2_.y);
                                                      if(!(_loc7_ && _loc1_))
                                                      {
                                                         §§push(§§pop() * _loc3_.y);
                                                         if(_loc7_)
                                                         {
                                                         }
                                                         addr162:
                                                         var _loc5_:* = §§pop();
                                                         if(_loc8_)
                                                         {
                                                            if(§§pop() <= 0)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  this.m_v2.a = 1;
                                                                  if(_loc8_)
                                                                  {
                                                                     this.§'!,§ = 1;
                                                                     if(!_loc7_)
                                                                     {
                                                                        this.m_v1.Set(this.m_v2);
                                                                        if(!(_loc8_ || _loc1_))
                                                                        {
                                                                           §§goto(addr193);
                                                                        }
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                            }
                                                            addr193:
                                                            §§push(1);
                                                            §§push(_loc5_);
                                                            if(_loc8_)
                                                            {
                                                               §§push(§§pop() + _loc4_);
                                                            }
                                                            §§push(§§pop() / §§pop());
                                                            if(_loc8_)
                                                            {
                                                               addr202:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc6_:* = §§pop();
                                                            if(!_loc7_)
                                                            {
                                                               §§push(this.m_v1);
                                                               §§push(_loc5_);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§§pop() * _loc6_);
                                                               }
                                                               §§pop().a = §§pop();
                                                               if(_loc8_ || this)
                                                               {
                                                                  §§push(this.m_v2);
                                                                  §§push(_loc4_);
                                                                  if(!(_loc7_ && _loc1_))
                                                                  {
                                                                     §§push(§§pop() * _loc6_);
                                                                  }
                                                                  §§pop().a = §§pop();
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     this.§'!,§ = 2;
                                                                  }
                                                               }
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc7_ && this))
                                                      {
                                                         addr161:
                                                         §§push(Number(§§pop()));
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr162);
                                             }
                                             §§goto(addr161);
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr70);
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr58);
               }
               §§goto(addr61);
            }
            §§goto(addr53);
         }
         §§goto(addr61);
      }
      
      public function Solve3() : void
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc24_:* = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:* = NaN;
         var _loc1_:b2Vec2 = this.m_v1.§6! §;
         var _loc2_:b2Vec2 = this.m_v2.§6! §;
         var _loc3_:b2Vec2 = this.m_v3.§6! §;
         var _loc4_:b2Vec2 = b2Math.§<b§(_loc2_,_loc1_);
         §§push(b2Math.§9!;§(_loc1_,_loc4_));
         if(!(_loc28_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(b2Math.§9!;§(_loc2_,_loc4_));
         if(_loc27_)
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
         if(_loc27_ || _loc2_)
         {
            §§push(-§§pop());
            if(_loc27_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         var _loc9_:b2Vec2 = b2Math.§<b§(_loc3_,_loc1_);
         §§push(b2Math.§9!;§(_loc1_,_loc9_));
         if(!(_loc28_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(b2Math.§9!;§(_loc3_,_loc9_));
         if(_loc27_)
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
         if(_loc27_ || _loc3_)
         {
            §§push(-§§pop());
            if(_loc27_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc13_:* = §§pop();
         var _loc14_:b2Vec2 = b2Math.§<b§(_loc3_,_loc2_);
         §§push(b2Math.§9!;§(_loc2_,_loc14_));
         if(!(_loc28_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:* = §§pop();
         §§push(b2Math.§9!;§(_loc3_,_loc14_));
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:*;
         §§push(_loc16_ = §§pop());
         if(!(_loc28_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc17_:* = §§pop();
         §§push(_loc15_);
         if(_loc27_ || _loc2_)
         {
            §§push(-§§pop());
            if(!_loc28_)
            {
               addr185:
               §§push(Number(§§pop()));
            }
            var _loc18_:* = §§pop();
            §§push(b2Math.§?§(_loc4_,_loc9_));
            if(!(_loc28_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
            var _loc19_:*;
            §§push(_loc19_ = §§pop());
            if(_loc27_)
            {
               §§push(§§pop() * b2Math.§?§(_loc2_,_loc3_));
               if(!_loc28_)
               {
                  addr210:
                  §§push(Number(§§pop()));
               }
               var _loc20_:* = §§pop();
               §§push(_loc19_);
               if(!_loc28_)
               {
                  §§push(§§pop() * b2Math.§?§(_loc3_,_loc1_));
                  if(!(_loc28_ && _loc2_))
                  {
                     addr227:
                     §§push(Number(§§pop()));
                  }
                  var _loc21_:* = §§pop();
                  §§push(_loc19_);
                  if(!(_loc28_ && _loc2_))
                  {
                     §§push(§§pop() * b2Math.§?§(_loc1_,_loc2_));
                     if(_loc27_ || this)
                     {
                        addr249:
                        §§push(Number(§§pop()));
                     }
                     var _loc22_:* = §§pop();
                     if(_loc27_ || _loc3_)
                     {
                        §§push(_loc8_ <= 0);
                        if(_loc8_ <= 0)
                        {
                           §§pop();
                           if(!(_loc28_ && _loc1_))
                           {
                              §§push(_loc13_);
                              if(!_loc28_)
                              {
                                 addr276:
                                 if(§§pop() <= 0)
                                 {
                                    if(_loc27_ || this)
                                    {
                                       §§push(this.m_v1);
                                       if(!_loc28_)
                                       {
                                          §§pop().a = 1;
                                          if(_loc27_)
                                          {
                                             addr292:
                                             this.§'!,§ = 1;
                                             if(!(_loc28_ && _loc2_))
                                             {
                                                return;
                                             }
                                          }
                                          else
                                          {
                                             addr508:
                                             §§push(_loc13_);
                                             if(_loc27_ || _loc1_)
                                             {
                                                §§push(§§pop() > 0);
                                                if(!(_loc28_ && _loc1_))
                                                {
                                                   addr525:
                                                   if(§§pop())
                                                   {
                                                      if(_loc27_)
                                                      {
                                                         §§pop();
                                                         §§push(_loc21_);
                                                         if(!(_loc28_ && _loc1_))
                                                         {
                                                            §§push(0);
                                                            if(_loc27_)
                                                            {
                                                               §§goto(addr542);
                                                            }
                                                         }
                                                         §§goto(addr636);
                                                      }
                                                      §§goto(addr631);
                                                   }
                                                   addr542:
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      §§push(1);
                                                      if(_loc27_)
                                                      {
                                                         addr547:
                                                         §§push(_loc12_);
                                                         §§push(_loc13_);
                                                         if(!(_loc28_ && _loc3_))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc28_)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(!_loc28_)
                                                               {
                                                                  addr562:
                                                                  _loc25_ = §§pop();
                                                                  addr563:
                                                                  §§push(this.m_v1);
                                                                  if(!_loc28_)
                                                                  {
                                                                     addr577:
                                                                     §§push(_loc12_);
                                                                     if(_loc27_ || _loc2_)
                                                                     {
                                                                        addr576:
                                                                        §§push(§§pop() * _loc25_);
                                                                     }
                                                                     §§pop().a = §§pop();
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(this.m_v3);
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(_loc13_);
                                                                           if(!_loc28_)
                                                                           {
                                                                              §§push(_loc25_);
                                                                              if(_loc27_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§pop().a = §§pop();
                                                                                    this.§'!,§ = 2;
                                                                                    if(_loc27_ || _loc1_)
                                                                                    {
                                                                                       §§push(this.m_v2);
                                                                                       if(_loc27_ || _loc2_)
                                                                                       {
                                                                                          §§pop().Set(this.m_v3);
                                                                                          return;
                                                                                       }
                                                                                       addr795:
                                                                                       addr805:
                                                                                       §§push(_loc17_);
                                                                                       if(_loc27_ || _loc3_)
                                                                                       {
                                                                                          addr803:
                                                                                          §§push(§§pop() * _loc26_);
                                                                                       }
                                                                                       §§pop().a = §§pop();
                                                                                       addr806:
                                                                                       addr808:
                                                                                       §§push(this.m_v3);
                                                                                       §§push(_loc18_);
                                                                                       if(!(_loc28_ && _loc2_))
                                                                                       {
                                                                                          addr816:
                                                                                          §§push(§§pop() * _loc26_);
                                                                                       }
                                                                                       §§pop().a = §§pop();
                                                                                       §§goto(addr819);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr679:
                                                                                       §§push(_loc17_);
                                                                                       §§push(0);
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          addr683:
                                                                                          §§push(§§pop() <= §§pop());
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             addr686:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc28_ && _loc3_))
                                                                                                {
                                                                                                   §§push(this.m_v3);
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      addr698:
                                                                                                      §§pop().a = 1;
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         this.§'!,§ = 1;
                                                                                                         §§push(this.m_v1);
                                                                                                         if(!(_loc28_ && _loc1_))
                                                                                                         {
                                                                                                            §§push(this.m_v3);
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               §§pop().Set(§§pop());
                                                                                                               if(!(_loc28_ && _loc1_))
                                                                                                               {
                                                                                                                  return;
                                                                                                               }
                                                                                                               addr819:
                                                                                                               this.§'!,§ = 2;
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  addr828:
                                                                                                                  this.m_v1.Set(this.m_v3);
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                     addr832:
                                                                                                                     §§push(1);
                                                                                                                     §§push(_loc20_);
                                                                                                                     §§push(_loc21_);
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        §§goto(addr844);
                                                                                                                     }
                                                                                                                     §§goto(addr841);
                                                                                                                  }
                                                                                                               }
                                                                                                               return;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr828);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr806);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr808);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr749:
                                                                                                   §§push(_loc18_ > 0);
                                                                                                }
                                                                                                §§goto(addr832);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr738:
                                                                                                §§push(_loc17_ > 0);
                                                                                                if(_loc17_ > 0)
                                                                                                {
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      addr741:
                                                                                                      §§pop();
                                                                                                      if(_loc27_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr749);
                                                                                                      }
                                                                                                      addr770:
                                                                                                      §§push(1);
                                                                                                      if(!(_loc28_ && _loc1_))
                                                                                                      {
                                                                                                         addr778:
                                                                                                         §§push(_loc17_);
                                                                                                         §§push(_loc18_);
                                                                                                         if(_loc27_ || _loc2_)
                                                                                                         {
                                                                                                            addr788:
                                                                                                            §§push(Number(§§pop() / (§§pop() + §§pop())));
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               _loc26_ = §§pop();
                                                                                                               addr793:
                                                                                                               §§goto(addr795);
                                                                                                               §§push(this.m_v2);
                                                                                                            }
                                                                                                            §§goto(addr844);
                                                                                                         }
                                                                                                         §§goto(addr841);
                                                                                                      }
                                                                                                      §§goto(addr832);
                                                                                                   }
                                                                                                   addr767:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§goto(addr770);
                                                                                                      }
                                                                                                      §§goto(addr793);
                                                                                                   }
                                                                                                   §§goto(addr832);
                                                                                                }
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc28_ && _loc3_))
                                                                                                {
                                                                                                   §§goto(addr761);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr767);
                                                                                          }
                                                                                          §§goto(addr741);
                                                                                       }
                                                                                       §§goto(addr766);
                                                                                    }
                                                                                    §§goto(addr832);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr816);
                                                                        }
                                                                        §§goto(addr698);
                                                                     }
                                                                     §§goto(addr793);
                                                                  }
                                                                  §§goto(addr828);
                                                               }
                                                               §§goto(addr749);
                                                            }
                                                            §§goto(addr788);
                                                         }
                                                         §§goto(addr841);
                                                      }
                                                      §§goto(addr778);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc7_);
                                                      if(_loc27_)
                                                      {
                                                         addr627:
                                                         §§push(§§pop() <= 0);
                                                         §§push(§§pop() <= 0);
                                                         if(_loc27_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr631:
                                                               §§pop();
                                                               §§push(_loc18_);
                                                               if(_loc27_)
                                                               {
                                                                  addr636:
                                                                  §§push(§§pop() <= 0);
                                                                  if(!_loc28_)
                                                                  {
                                                                     addr639:
                                                                     if(§§pop())
                                                                     {
                                                                        §§push(this.m_v2);
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§pop().a = 1;
                                                                           this.§'!,§ = 1;
                                                                           §§push(this.m_v1);
                                                                           if(_loc27_)
                                                                           {
                                                                              §§pop().Set(this.m_v2);
                                                                              §§goto(addr656);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr828);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr795);
                                                                        }
                                                                        §§goto(addr795);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr658:
                                                                        §§push(_loc12_);
                                                                        §§push(0);
                                                                        if(_loc27_ || this)
                                                                        {
                                                                           addr666:
                                                                           §§push(§§pop() <= §§pop());
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(!(_loc28_ && _loc1_))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§goto(addr679);
                                                                                 }
                                                                                 §§goto(addr795);
                                                                              }
                                                                              §§goto(addr686);
                                                                           }
                                                                           §§goto(addr738);
                                                                        }
                                                                        §§goto(addr683);
                                                                     }
                                                                  }
                                                                  addr761:
                                                                  §§pop();
                                                                  §§push(_loc20_);
                                                                  if(!_loc28_)
                                                                  {
                                                                     addr766:
                                                                     §§goto(addr767);
                                                                     §§push(§§pop() <= 0);
                                                                  }
                                                                  §§goto(addr844);
                                                               }
                                                               §§goto(addr679);
                                                            }
                                                            §§goto(addr639);
                                                         }
                                                         §§goto(addr738);
                                                      }
                                                   }
                                                   §§goto(addr844);
                                                }
                                                §§goto(addr767);
                                             }
                                             §§goto(addr658);
                                          }
                                          addr656:
                                          return;
                                       }
                                       §§goto(addr828);
                                    }
                                    §§goto(addr795);
                                 }
                                 else
                                 {
                                    §§push(_loc7_);
                                    §§push(0);
                                    if(!_loc28_)
                                    {
                                       §§push(§§pop() > §§pop());
                                       if(_loc27_ || _loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc27_ || _loc2_)
                                             {
                                                §§pop();
                                                if(_loc27_ || _loc1_)
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc27_)
                                                   {
                                                      §§push(§§pop() > 0);
                                                      if(_loc27_ || _loc1_)
                                                      {
                                                         addr344:
                                                         §§push(§§pop());
                                                         if(!_loc28_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc27_)
                                                               {
                                                                  §§pop();
                                                                  §§push(_loc22_);
                                                                  if(_loc27_ || this)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc27_ || this)
                                                                     {
                                                                        addr368:
                                                                        if(§§pop() <= §§pop())
                                                                        {
                                                                           §§push(1);
                                                                           if(!(_loc28_ && _loc1_))
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc27_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc27_ || _loc2_)
                                                                                          {
                                                                                             _loc24_ = §§pop();
                                                                                             §§push(this.m_v1);
                                                                                             if(!(_loc28_ && this))
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(_loc27_ || this)
                                                                                                {
                                                                                                   §§push(_loc24_);
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         addr426:
                                                                                                         §§pop().a = §§pop();
                                                                                                         §§push(this.m_v2);
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc27_ || this)
                                                                                                            {
                                                                                                               §§push(_loc24_);
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc28_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§pop().a = §§pop();
                                                                                                                     if(!(_loc28_ && _loc1_))
                                                                                                                     {
                                                                                                                        this.§'!,§ = 2;
                                                                                                                        if(_loc27_ || _loc2_)
                                                                                                                        {
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr631);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr563);
                                                                                                                     }
                                                                                                                     §§goto(addr828);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr803);
                                                                                                            }
                                                                                                            §§goto(addr805);
                                                                                                         }
                                                                                                         §§goto(addr795);
                                                                                                      }
                                                                                                      §§goto(addr577);
                                                                                                   }
                                                                                                   §§goto(addr576);
                                                                                                }
                                                                                                §§goto(addr426);
                                                                                             }
                                                                                             §§goto(addr828);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr766);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr547);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr841);
                                                                              }
                                                                              addr844:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc27_)
                                                                              {
                                                                                 addr841:
                                                                                 §§push(§§pop() + _loc22_);
                                                                              }
                                                                              var _loc23_:Number = §§pop() / §§pop();
                                                                              if(_loc27_ || _loc2_)
                                                                              {
                                                                                 §§push(this.m_v1);
                                                                                 §§push(_loc20_);
                                                                                 if(_loc27_ || this)
                                                                                 {
                                                                                    §§push(§§pop() * _loc23_);
                                                                                 }
                                                                                 §§pop().a = §§pop();
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    §§push(this.m_v2);
                                                                                    §§push(_loc21_);
                                                                                    if(!(_loc28_ && _loc1_))
                                                                                    {
                                                                                       §§push(§§pop() * _loc23_);
                                                                                    }
                                                                                    §§pop().a = §§pop();
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(this.m_v3);
                                                                                       §§push(_loc22_);
                                                                                       if(_loc27_ || this)
                                                                                       {
                                                                                          §§push(§§pop() * _loc23_);
                                                                                       }
                                                                                       §§pop().a = §§pop();
                                                                                       if(_loc28_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr910);
                                                                                 }
                                                                                 this.§'!,§ = 3;
                                                                              }
                                                                              addr910:
                                                                              return;
                                                                           }
                                                                           §§goto(addr778);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr482:
                                                                           §§push(_loc12_ > 0);
                                                                           §§push(_loc12_ > 0);
                                                                           if(!(_loc28_ && _loc3_))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc27_ || this)
                                                                                 {
                                                                                    addr500:
                                                                                    §§pop();
                                                                                    if(!(_loc28_ && _loc2_))
                                                                                    {
                                                                                       §§goto(addr508);
                                                                                    }
                                                                                    §§goto(addr738);
                                                                                 }
                                                                                 §§goto(addr627);
                                                                              }
                                                                              §§goto(addr525);
                                                                           }
                                                                           §§goto(addr686);
                                                                        }
                                                                     }
                                                                     §§goto(addr666);
                                                                  }
                                                                  §§goto(addr482);
                                                               }
                                                               §§goto(addr738);
                                                            }
                                                            §§goto(addr368);
                                                         }
                                                         §§goto(addr686);
                                                      }
                                                      §§goto(addr666);
                                                   }
                                                   §§goto(addr658);
                                                }
                                                §§goto(addr793);
                                             }
                                             §§goto(addr631);
                                          }
                                          §§goto(addr344);
                                       }
                                       §§goto(addr500);
                                    }
                                 }
                                 §§goto(addr627);
                              }
                              §§goto(addr562);
                           }
                           §§goto(addr631);
                        }
                        §§goto(addr276);
                     }
                     §§goto(addr292);
                  }
                  §§goto(addr249);
               }
               §§goto(addr227);
            }
            §§goto(addr210);
         }
         §§goto(addr185);
      }
   }
}
