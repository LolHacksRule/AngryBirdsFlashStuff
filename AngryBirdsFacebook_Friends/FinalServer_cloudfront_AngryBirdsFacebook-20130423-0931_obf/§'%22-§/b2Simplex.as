package §'"-§
{
   import §!"3§.*;
   import §,"[§.*;
   import §6!^§.*;
   
   class b2Simplex
   {
       
      
      public var m_v1:b2SimplexVertex;
      
      public var m_v2:b2SimplexVertex;
      
      public var m_v3:b2SimplexVertex;
      
      public var §["8§:Vector.<b2SimplexVertex>;
      
      public var §=!4§:int;
      
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
               for(; !(_loc1_ && _loc1_); if(!(_loc2_ || _loc1_))
               {
                  continue;
               },§§goto(addr89))
               {
                  this.m_v3 = new b2SimplexVertex();
                  loop2:
                  while(true)
                  {
                     this.§["8§ = new Vector.<b2SimplexVertex>(3);
                     loop3:
                     while(true)
                     {
                        super();
                        while(true)
                        {
                           this.§["8§[0] = this.m_v1;
                           loop5:
                           while(!(_loc1_ && this))
                           {
                              continue loop1;
                              while(true)
                              {
                                 this.§["8§[1] = this.m_v2;
                                 do
                                 {
                                    this.§["8§[2] = this.m_v3;
                                 }
                                 while(_loc1_ && this);
                                 
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §?"0§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc10_:b2SimplexVertex = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         if(_loc13_)
         {
            §§push(b2Settings);
            if(!_loc14_)
            {
               §§push(0 <= param1.count);
               if(!_loc14_)
               {
                  if(§§pop())
                  {
                     if(!(_loc14_ && param3))
                     {
                        addr49:
                        §§pop();
                        §§push(param1.count <= 3);
                     }
                  }
                  §§pop().b2Assert(§§pop());
                  if(!(_loc14_ && this))
                  {
                     addr62:
                     this.§=!4§ = param1.count;
                  }
                  var _loc8_:Vector.<b2SimplexVertex> = this.§["8§;
                  var _loc9_:int = 0;
                  loop0:
                  while(true)
                  {
                     §§push(_loc9_);
                     if(!_loc14_)
                     {
                        §§push(this.§=!4§);
                        if(!(_loc14_ && param2))
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc13_ || param3)
                              {
                                 §§push(this.§=!4§);
                                 if(!_loc14_)
                                 {
                                    §§push(1);
                                    if(!(_loc14_ && param2))
                                    {
                                       addr217:
                                       if(§§pop() > §§pop())
                                       {
                                          if(!(_loc14_ && param1))
                                          {
                                             §§push(param1.§9p§);
                                             if(!_loc14_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc14_)
                                                {
                                                   _loc11_ = §§pop();
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      addr334:
                                                      §§push(Number(this.§]!y§()));
                                                      if(_loc13_ || param3)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc14_ && param2))
                                                         {
                                                            _loc12_ = §§pop();
                                                            addr351:
                                                            §§push(0.5);
                                                         }
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * _loc11_);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() < §§pop());
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        addr357:
                                                                        §§pop();
                                                                        if(_loc13_)
                                                                        {
                                                                           §§goto(addr304);
                                                                        }
                                                                        §§goto(addr365);
                                                                     }
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc13_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              for(; _loc13_; §§push(§§pop() < Number.MIN_VALUE),if(!(_loc13_ || param1))
                                                                              {
                                                                                 continue;
                                                                              },if(_loc14_ && param1)
                                                                              {
                                                                                 continue loop9;
                                                                              },if(!(_loc13_ || param2))
                                                                              {
                                                                                 continue loop13;
                                                                              })
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       if(_loc13_ || param2)
                                                                                       {
                                                                                          if(!(_loc14_ && param1))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr334);
                                                                                       }
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr310:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             if(_loc13_ || this)
                                                                                             {
                                                                                                §§push(§§pop() < §§pop());
                                                                                                continue loop8;
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       §§goto(addr365);
                                                                                       addr310:
                                                                                    }
                                                                                    addr331:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr365);
                                                                                 }
                                                                                 §§goto(addr378);
                                                                              }
                                                                              §§goto(addr357);
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc14_ && param2))
                                                                              {
                                                                                 addr292:
                                                                                 this.§=!4§ = 0;
                                                                                 if(!(_loc14_ && param3))
                                                                                 {
                                                                                    §§goto(addr302);
                                                                                 }
                                                                                 §§goto(addr365);
                                                                              }
                                                                              addr302:
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr304);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr361:
                                                                                 §§push(this.§=!4§);
                                                                              }
                                                                              §§goto(addr304);
                                                                           }
                                                                           §§goto(addr361);
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr351);
                                                   }
                                                   §§goto(addr331);
                                                }
                                                §§goto(addr334);
                                             }
                                             §§goto(addr310);
                                          }
                                          §§goto(addr292);
                                       }
                                       §§goto(addr361);
                                    }
                                    addr304:
                                    §§push(2);
                                    if(!_loc14_)
                                    {
                                       break;
                                    }
                                    if(§§pop() == 0)
                                    {
                                       addr365:
                                       (_loc10_ = _loc8_[0]).indexA = 0;
                                       if(_loc13_)
                                       {
                                          _loc10_.indexB = 0;
                                       }
                                       addr378:
                                       _loc6_ = param2.§,"-§(0);
                                       _loc7_ = param4.§,"-§(0);
                                       if(_loc13_)
                                       {
                                          _loc10_.§["L§ = b2Math.§^T§(param3,_loc6_);
                                       }
                                       _loc10_.§9!U§ = b2Math.§^T§(param5,_loc7_);
                                       addr416:
                                       _loc10_.§&!t§ = b2Math.§9N§(_loc10_.§9!U§,_loc10_.§["L§);
                                       addr442:
                                       if(!_loc14_)
                                       {
                                          this.§=!4§ = 1;
                                          if(!(_loc14_ && param1))
                                          {
                                             if(_loc13_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr416);
                                                }
                                                §§goto(addr443);
                                             }
                                             §§goto(addr442);
                                          }
                                          §§goto(addr416);
                                       }
                                       addr435:
                                       §§goto(addr435);
                                    }
                                    addr443:
                                    return;
                                 }
                                 break;
                              }
                              §§goto(addr302);
                           }
                           else
                           {
                              (_loc10_ = _loc8_[_loc9_]).indexA = param1.indexA[_loc9_];
                              if(!(_loc14_ && param3))
                              {
                                 _loc10_.indexB = param1.indexB[_loc9_];
                              }
                              _loc6_ = param2.§,"-§(_loc10_.indexA);
                              _loc7_ = param4.§,"-§(_loc10_.indexB);
                              if(_loc13_)
                              {
                                 _loc10_.§["L§ = b2Math.§^T§(param3,_loc6_);
                                 loop1:
                                 while(true)
                                 {
                                    _loc10_.§9!U§ = b2Math.§^T§(param5,_loc7_);
                                    while(true)
                                    {
                                       _loc10_.§&!t§ = b2Math.§9N§(_loc10_.§9!U§,_loc10_.§["L§);
                                       loop5:
                                       while(_loc13_ || param3)
                                       {
                                          _loc9_++;
                                          if(_loc14_ && this)
                                          {
                                             continue;
                                          }
                                          addr122:
                                          if(_loc13_ || param2)
                                          {
                                             continue loop1;
                                          }
                                          addr159:
                                          while(true)
                                          {
                                             addr138:
                                             while(true)
                                             {
                                                _loc10_.a = 0;
                                                continue loop5;
                                             }
                                             continue loop0;
                                             §§goto(addr122);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr159);
                           }
                        }
                        §§goto(addr217);
                     }
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr310);
                  }
               }
            }
            §§goto(addr49);
         }
         §§goto(addr62);
      }
      
      public function §`d§(param1:b2SimplexCache) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.§9p§ = this.§]!y§();
            if(_loc5_ || this)
            {
               param1.count = uint(this.§=!4§);
            }
         }
         var _loc2_:Vector.<b2SimplexVertex> = this.§["8§;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§=!4§)
            {
               if(_loc5_)
               {
                  break;
               }
               while(_loc4_)
               {
                  while(_loc4_)
                  {
                  }
                  _loc3_++;
               }
               continue;
            }
            param1.indexA[_loc3_] = uint(_loc2_[_loc3_].indexA);
            while(true)
            {
               param1.indexB[_loc3_] = uint(_loc2_[_loc3_].indexB);
               §§goto(addr89);
            }
         }
      }
      
      public function §5"'§() : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:b2Vec2 = null;
         var _loc2_:* = NaN;
         §§push(this.§=!4§);
         if(!_loc5_)
         {
            var _loc3_:* = §§pop();
            if(!(_loc5_ && _loc2_))
            {
               §§push(1);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_)
                        {
                           addr151:
                           §§push(0);
                           if(!(_loc5_ && _loc2_))
                           {
                              addr174:
                              loop3:
                              switch(§§pop())
                              {
                                 case 0:
                                    return this.m_v1.§&!t§.§9l§();
                                 case 1:
                                    _loc1_ = b2Math.§9N§(this.m_v2.§&!t§,this.m_v1.§&!t§);
                                    if(!_loc5_)
                                    {
                                       §§push(b2Math.§]c§(_loc1_,this.m_v1.§&!t§.§9l§()));
                                       if(!_loc5_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       loop1:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr118:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(§§pop() <= 0)
                                                {
                                                   break loop3;
                                                }
                                                if(!_loc5_)
                                                {
                                                   return b2Math.§6!?§(1,_loc1_);
                                                }
                                                continue;
                                             }
                                             continue loop1;
                                          }
                                          break loop3;
                                       }
                                    }
                                    §§goto(addr118);
                                 default:
                                    do
                                    {
                                       b2Settings.b2Assert(false);
                                    }
                                    while(!(_loc4_ || this));
                                    
                                    if(!_loc5_)
                                    {
                                       return new b2Vec2();
                                    }
                                    break;
                              }
                              return b2Math.§@!§(_loc1_,1);
                              addr173:
                           }
                        }
                        else
                        {
                           addr165:
                           §§push(1);
                           if(!_loc4_)
                           {
                           }
                        }
                        §§goto(addr173);
                     }
                     else
                     {
                        §§push(2);
                        if(_loc4_)
                        {
                           addr164:
                           if(§§pop() === _loc3_)
                           {
                              §§goto(addr165);
                           }
                           else
                           {
                              §§goto(addr173);
                              §§push(2);
                           }
                           §§goto(addr173);
                        }
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr164);
               }
               §§goto(addr173);
            }
            §§goto(addr151);
         }
         §§goto(addr174);
      }
      
      public function §;"M§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§=!4§);
         if(!(_loc3_ && _loc3_))
         {
            var _loc1_:* = §§pop();
            if(!(_loc3_ && _loc3_))
            {
               §§push(0);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(_loc1_);
                  if(_loc2_ || _loc1_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr202:
                           §§push(0);
                           if(_loc3_ && this)
                           {
                              addr238:
                           }
                        }
                        else
                        {
                           addr249:
                           §§push(2);
                           if(_loc2_)
                           {
                              addr252:
                           }
                        }
                        addr258:
                        loop1:
                        switch(§§pop())
                        {
                           case 0:
                              b2Settings.b2Assert(false);
                              break;
                           case 1:
                              return this.m_v1.§&!t§;
                           default:
                              while(true)
                              {
                                 b2Settings.b2Assert(false);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    break loop1;
                                 }
                              }
                              return new b2Vec2();
                           case 2:
                              §§push(§§findproperty(b2Vec2));
                              §§push(this.m_v1.a);
                              if(!(_loc3_ && _loc1_))
                              {
                                 §§push(this.m_v1);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop().§&!t§.x);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc2_)
                                       {
                                          addr57:
                                          §§push(this.m_v2.a);
                                          if(_loc2_)
                                          {
                                             §§push(this.m_v2);
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                §§push(§§pop().§&!t§);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc2_)
                                                      {
                                                         addr86:
                                                         §§push(§§pop() + §§pop());
                                                         §§push(this.m_v1.a);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            addr96:
                                                            §§push(this.m_v1.§&!t§.y);
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               §§goto(addr107);
                                                            }
                                                            §§goto(addr130);
                                                         }
                                                         §§goto(addr110);
                                                      }
                                                      §§goto(addr96);
                                                   }
                                                   addr107:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc2_)
                                                   {
                                                      addr110:
                                                      §§push(this.m_v2.a);
                                                      if(!_loc3_)
                                                      {
                                                         addr130:
                                                         §§push(§§pop() + §§pop() * this.m_v2.§&!t§.y);
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                   return new §§pop().b2Vec2(§§pop(),§§pop());
                                                }
                                                §§goto(addr96);
                                             }
                                             §§goto(addr110);
                                          }
                                          §§goto(addr96);
                                       }
                                    }
                                 }
                                 §§goto(addr86);
                              }
                              §§goto(addr57);
                        }
                        return new b2Vec2();
                        addr257:
                     }
                     else
                     {
                        §§push(1);
                        if(_loc2_)
                        {
                           addr214:
                           §§push(_loc1_);
                           if(!(_loc3_ && this))
                           {
                              addr232:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(1);
                                    if(!_loc3_)
                                    {
                                       §§goto(addr238);
                                    }
                                    else
                                    {
                                       §§goto(addr252);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr249);
                                 }
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr248:
                                    if(§§pop() === _loc1_)
                                    {
                                       §§goto(addr249);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                              }
                              §§goto(addr257);
                           }
                           §§goto(addr248);
                        }
                     }
                     §§goto(addr252);
                  }
                  §§goto(addr232);
               }
               §§goto(addr214);
            }
            §§goto(addr202);
         }
         §§goto(addr258);
      }
      
      public function §22§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§=!4§);
         if(!_loc5_)
         {
            var _loc3_:* = §§pop();
            if(_loc4_ || param2)
            {
               §§push(0);
               if(_loc4_ || _loc3_)
               {
                  §§push(_loc3_);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(!(_loc5_ && param2))
                           {
                              addr499:
                           }
                        }
                        else
                        {
                           addr547:
                           §§push(2);
                           if(!_loc4_)
                           {
                              addr559:
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc5_ && param1))
                        {
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(1);
                                    if(!(_loc5_ && param2))
                                    {
                                       addr565:
                                       loop1:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             b2Settings.b2Assert(false);
                                             break;
                                             addr246:
                                          case 1:
                                             param1.SetV(this.m_v1.§["L§);
                                             if(!(_loc5_ && param1))
                                             {
                                                param2.SetV(this.m_v1.§9!U§);
                                                break;
                                                addr224:
                                             }
                                             break;
                                          case 2:
                                             §§push(param1);
                                             §§push(this.m_v1.a);
                                             if(!_loc5_)
                                             {
                                                §§push(this.m_v1.§["L§.x);
                                                if(!(_loc5_ && param2))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      addr214:
                                                      §§push(this.m_v2.a);
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         addr208:
                                                         §§push(§§pop() * this.m_v2.§["L§.x);
                                                      }
                                                      §§pop().x = §§pop() + §§pop();
                                                      if(_loc4_)
                                                      {
                                                         §§push(param1);
                                                         §§push(this.m_v1.a);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(this.m_v1.§["L§.y);
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  addr171:
                                                                  §§push(this.m_v2.a);
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     addr165:
                                                                     §§push(§§pop() * this.m_v2.§["L§.y);
                                                                  }
                                                                  §§pop().y = §§pop() + §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(param2);
                                                                        §§push(this.m_v1.a);
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           §§push(this.m_v1.§9!U§.x);
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr95:
                                                                                 §§push(this.m_v2.a);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr100:
                                                                                    §§push(§§pop() * this.m_v2.§9!U§.x);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§pop().x = §§pop();
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 if(_loc4_ || param2)
                                                                                 {
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       §§push(param2);
                                                                                       §§push(this.m_v1.a);
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          §§push(this.m_v1.§9!U§.y);
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                addr48:
                                                                                                §§push(this.m_v2.a);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr53:
                                                                                                   §§push(§§pop() * this.m_v2.§9!U§.y);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                             if(!(_loc5_ && param2))
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   break loop1;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             addr360:
                                                                                             §§push(param2);
                                                                                             §§push(param1);
                                                                                             §§push(this.m_v1.a);
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                §§push(this.m_v1.§["L§.y);
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(this.m_v2.a);
                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(this.m_v2.§["L§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc4_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr415:
                                                                                                                     §§push(this.m_v3.a);
                                                                                                                     if(_loc4_ || param2)
                                                                                                                     {
                                                                                                                        addr429:
                                                                                                                        §§push(§§pop() * this.m_v3.§["L§.y);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           addr433:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     §§pop().y = _loc3_;
                                                                                                                     if(_loc4_ || param2)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr458:
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr433);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr429);
                                                                                                      }
                                                                                                      §§goto(addr433);
                                                                                                   }
                                                                                                   §§goto(addr415);
                                                                                                }
                                                                                                §§goto(addr429);
                                                                                             }
                                                                                             §§goto(addr433);
                                                                                          }
                                                                                          §§goto(addr53);
                                                                                       }
                                                                                       §§goto(addr48);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr246);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr224);
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr100);
                                                                        }
                                                                        §§goto(addr95);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr171);
                                                            }
                                                            §§goto(addr165);
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr360);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr208);
                                             }
                                             §§goto(addr214);
                                          case 3:
                                             §§push(param2);
                                             §§push(param1);
                                             §§push(this.m_v1.a);
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§push(this.m_v1.§["L§.x);
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      addr285:
                                                      §§push(this.m_v2.a);
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         §§push(this.m_v2.§["L§);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(this.m_v3.a);
                                                                     if(_loc5_ && this)
                                                                     {
                                                                     }
                                                                     addr348:
                                                                     §§pop().x = §§pop().x = §§pop() + §§pop();
                                                                     addr347:
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        §§goto(addr360);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr347);
                                                               }
                                                               addr337:
                                                               §§push(this.m_v3.§["L§.x);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§goto(addr347);
                                                            }
                                                            §§goto(addr348);
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                   }
                                                }
                                                §§goto(addr348);
                                             }
                                             §§goto(addr285);
                                          default:
                                             b2Settings.b2Assert(false);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§goto(addr458);
                                             }
                                       }
                                       return;
                                       addr564:
                                    }
                                    §§goto(addr564);
                                 }
                                 else
                                 {
                                    §§goto(addr547);
                                 }
                              }
                              else
                              {
                                 §§push(2);
                                 if(!(_loc5_ && this))
                                 {
                                    addr541:
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       addr544:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr547);
                                          }
                                          else
                                          {
                                             addr556:
                                             §§push(3);
                                             if(_loc5_)
                                             {
                                             }
                                             §§goto(addr564);
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc4_)
                                          {
                                             addr555:
                                             if(§§pop() === _loc3_)
                                             {
                                                §§goto(addr556);
                                             }
                                             else
                                             {
                                                §§goto(addr564);
                                                §§push(4);
                                             }
                                          }
                                          §§goto(addr564);
                                       }
                                       §§goto(addr564);
                                    }
                                    §§goto(addr555);
                                 }
                              }
                              §§goto(addr559);
                           }
                           §§goto(addr544);
                        }
                        §§goto(addr541);
                     }
                     §§goto(addr564);
                  }
                  §§goto(addr555);
               }
               §§goto(addr499);
            }
            §§goto(addr547);
         }
         §§goto(addr565);
      }
      
      public function §]!y§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§=!4§);
         if(!_loc3_)
         {
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               §§push(0);
               if(_loc2_)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr161:
                           §§push(0);
                           if(!_loc3_)
                           {
                              addr164:
                           }
                           else
                           {
                              addr215:
                           }
                           addr229:
                           switch(§§pop())
                           {
                              case 0:
                                 b2Settings.b2Assert(false);
                                 break;
                              default:
                                 b2Settings.b2Assert(false);
                                 §§push(0);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    addr71:
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       addr94:
                                       if(_loc2_ || _loc1_)
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
                                 else if(_loc2_ || _loc1_)
                                 {
                                    addr52:
                                    §§goto(addr71);
                                    return b2Math.§]c§(b2Math.§9N§(this.m_v2.§&!t§,this.m_v1.§&!t§),b2Math.§9N§(this.m_v3.§&!t§,this.m_v1.§&!t§));
                                 }
                                 else
                                 {
                                    addr120:
                                    return 0;
                                 }
                                 return §§pop();
                              case 3:
                                 §§goto(addr52);
                              case 1:
                                 §§goto(addr120);
                              case 2:
                                 §§goto(addr94);
                           }
                           return b2Math.§9N§(this.m_v1.§&!t§,this.m_v2.§&!t§).§`"I§();
                           addr229:
                        }
                        else
                        {
                           addr207:
                           §§push(2);
                           if(_loc2_ || this)
                           {
                              §§goto(addr215);
                           }
                           else
                           {
                              addr224:
                           }
                           §§goto(addr229);
                        }
                        §§goto(addr215);
                     }
                     else
                     {
                        §§push(1);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(_loc1_);
                           if(_loc2_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(1);
                                    if(_loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr221:
                                    §§push(3);
                                    if(_loc2_)
                                    {
                                       §§goto(addr224);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(2);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(_loc1_);
                                    if(!_loc3_)
                                    {
                                       addr204:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr207);
                                          }
                                          else
                                          {
                                             §§goto(addr221);
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(!_loc3_)
                                          {
                                             §§push(_loc1_);
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr224);
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr221);
                                    }
                                    else
                                    {
                                       §§goto(addr229);
                                       §§push(4);
                                    }
                                    §§goto(addr229);
                                 }
                                 §§goto(addr215);
                              }
                              §§goto(addr229);
                           }
                           §§goto(addr204);
                        }
                     }
                     §§goto(addr224);
                  }
                  §§goto(addr204);
               }
               §§goto(addr164);
            }
         }
         §§goto(addr161);
      }
      
      public function Solve2() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:b2Vec2 = this.m_v1.§&!t§;
         var _loc2_:b2Vec2 = this.m_v2.§&!t§;
         var _loc3_:b2Vec2 = b2Math.§9N§(_loc2_,_loc1_);
         §§push(_loc1_.x);
         if(_loc7_ || _loc3_)
         {
            §§push(_loc3_.x);
            if(!(_loc8_ && _loc2_))
            {
               §§push(§§pop() * §§pop());
               if(_loc7_)
               {
                  §§push(_loc1_.y);
                  if(_loc7_)
                  {
                     addr80:
                     §§push(§§pop() * _loc3_.y);
                     if(_loc7_ || this)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc7_ || this)
                        {
                           addr75:
                           §§push(-§§pop());
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     var _loc4_:* = §§pop();
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc7_)
                              {
                                 this.m_v1.a = 1;
                                 if(!(_loc8_ && _loc1_))
                                 {
                                    this.§=!4§ = 1;
                                    if(_loc8_ && this)
                                    {
                                       addr116:
                                       §§push(_loc2_.x);
                                       if(!_loc8_)
                                       {
                                          addr120:
                                          §§push(_loc3_.x);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc7_ || _loc2_)
                                             {
                                                addr142:
                                                §§push(_loc2_.y);
                                                if(!(_loc8_ && _loc1_))
                                                {
                                                   §§push(§§pop() * _loc3_.y);
                                                   if(!(_loc8_ && _loc1_))
                                                   {
                                                      addr161:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc7_ || _loc1_)
                                                      {
                                                         addr169:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§push(§§pop());
                                                   }
                                                   var _loc5_:* = §§pop();
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      if(§§pop() <= 0)
                                                      {
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            this.m_v2.a = 1;
                                                            if(_loc7_)
                                                            {
                                                               this.§=!4§ = 1;
                                                            }
                                                            else
                                                            {
                                                               addr201:
                                                               if(true)
                                                               {
                                                                  §§goto(addr214);
                                                               }
                                                            }
                                                            this.m_v1.Set(this.m_v2);
                                                            return;
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      addr214:
                                                      §§push(1);
                                                      §§push(_loc5_);
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§push(§§pop() + _loc4_);
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc7_)
                                                      {
                                                         addr228:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc6_:* = §§pop();
                                                      if(!_loc8_)
                                                      {
                                                         §§push(this.m_v1);
                                                         §§push(_loc5_);
                                                         if(!(_loc8_ && this))
                                                         {
                                                            §§push(§§pop() * _loc6_);
                                                         }
                                                         §§pop().a = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(this.m_v2);
                                                            §§push(_loc4_);
                                                            if(_loc7_)
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                            }
                                                            §§pop().a = §§pop();
                                                            §§goto(addr270);
                                                         }
                                                      }
                                                      addr270:
                                                      while(true)
                                                      {
                                                         this.§=!4§ = 2;
                                                         if(_loc7_)
                                                         {
                                                            if(!(_loc8_ && _loc1_))
                                                            {
                                                               break;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr161);
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr142);
                                    }
                                 }
                                 §§goto(addr116);
                              }
                              return;
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr80);
               }
               §§push(§§pop());
            }
            §§goto(addr80);
         }
         §§goto(addr75);
      }
      
      public function Solve3() : void
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc24_:Number = NaN;
         var _loc25_:* = NaN;
         var _loc26_:Number = NaN;
         var _loc1_:b2Vec2 = this.m_v1.§&!t§;
         var _loc2_:b2Vec2 = this.m_v2.§&!t§;
         var _loc3_:b2Vec2 = this.m_v3.§&!t§;
         var _loc4_:b2Vec2 = b2Math.§9N§(_loc2_,_loc1_);
         §§push(b2Math.§[!3§(_loc1_,_loc4_));
         if(_loc28_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(b2Math.§[!3§(_loc2_,_loc4_));
         if(!(_loc27_ && _loc3_))
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
            if(_loc28_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         var _loc9_:b2Vec2 = b2Math.§9N§(_loc3_,_loc1_);
         §§push(b2Math.§[!3§(_loc1_,_loc9_));
         if(_loc28_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(b2Math.§[!3§(_loc3_,_loc9_));
         if(_loc28_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:*;
         §§push(_loc11_ = §§pop());
         if(_loc28_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc10_);
         if(!_loc27_)
         {
            §§push(-§§pop());
            if(_loc28_ || this)
            {
               addr131:
               §§push(Number(§§pop()));
            }
            var _loc13_:* = §§pop();
            var _loc14_:b2Vec2 = b2Math.§9N§(_loc3_,_loc2_);
            §§push(b2Math.§[!3§(_loc2_,_loc14_));
            if(_loc28_)
            {
               §§push(Number(§§pop()));
            }
            var _loc15_:* = §§pop();
            §§push(b2Math.§[!3§(_loc3_,_loc14_));
            if(_loc28_ || _loc2_)
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
            if(!(_loc27_ && _loc3_))
            {
               §§push(-§§pop());
               if(_loc28_ || _loc1_)
               {
                  addr181:
                  §§push(Number(§§pop()));
               }
               var _loc18_:* = §§pop();
               §§push(b2Math.§]c§(_loc4_,_loc9_));
               if(!_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc19_:*;
               §§push(_loc19_ = §§pop());
               if(_loc28_)
               {
                  §§push(§§pop() * b2Math.§]c§(_loc2_,_loc3_));
                  if(!(_loc27_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc20_:* = §§pop();
               §§push(_loc19_);
               if(!_loc27_)
               {
                  §§push(§§pop() * b2Math.§]c§(_loc3_,_loc1_));
                  if(_loc28_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc21_:* = §§pop();
               §§push(_loc19_);
               if(_loc28_ || _loc2_)
               {
                  §§push(§§pop() * b2Math.§]c§(_loc1_,_loc2_));
                  if(!_loc27_)
                  {
                     addr240:
                     §§push(Number(§§pop()));
                  }
                  var _loc22_:* = §§pop();
                  if(!_loc27_)
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
                              loop3:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr1144:
                                       while(true)
                                       {
                                          §§push(_loc13_);
                                          addr1129:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr1130:
                                             while(true)
                                             {
                                                §§push(§§pop() <= §§pop());
                                             }
                                          }
                                       }
                                    }
                                    addr1143:
                                 }
                                 while(true)
                                 {
                                    loop9:
                                    while(!§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr1105:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                  }
                                                                  loop24:
                                                                  for(; _loc28_ || _loc3_; if(_loc27_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  },if(_loc27_)
                                                                  {
                                                                     continue loop11;
                                                                  },_loc25_ = §§pop(),§§goto(addr960))
                                                                  {
                                                                     §§push(0);
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() <= §§pop());
                                                                        loop26:
                                                                        while(!(_loc27_ && this))
                                                                        {
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    loop29:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       loop30:
                                                                                       while(_loc28_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() > §§pop());
                                                                                          loop31:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   loop82:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      loop83:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop42:
                                                                                                               while(!§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        loop45:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                           loop46:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc28_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 loop47:
                                                                                                                                 while(_loc28_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       loop48:
                                                                                                                                       for(; _loc28_; if(!(_loc28_ || this))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       },§§goto(addr425))
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          loop49:
                                                                                                                                          for(; !_loc27_; if(_loc28_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             return;
                                                                                                                                          })
                                                                                                                                          {
                                                                                                                                             if(_loc28_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(_loc18_);
                                                                                                                                                loop50:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   loop51:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                                                                      loop52:
                                                                                                                                                      while(_loc28_)
                                                                                                                                                      {
                                                                                                                                                         loop53:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                  while(_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     loop56:
                                                                                                                                                                     for(; _loc28_; while(!(_loc27_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr696);
                                                                                                                                                                        §§push(§§pop() <= §§pop());
                                                                                                                                                                        §§goto(addr507);
                                                                                                                                                                     })
                                                                                                                                                                     {
                                                                                                                                                                        addr714:
                                                                                                                                                                        if(!(_loc27_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                                                                           loop57:
                                                                                                                                                                           while(_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              loop58:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc28_ || this))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop83;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    addr988:
                                                                                                                                                                                    loop59:
                                                                                                                                                                                    for(; !_loc27_; if(_loc27_ && _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    },if(!(_loc28_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop42;
                                                                                                                                                                                    },if(!_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop31;
                                                                                                                                                                                    },§§pop(),§§goto(addr643))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc28_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          while(_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                             while(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                continue loop56;
                                                                                                                                                                                                addr396:
                                                                                                                                                                                                if(!(_loc28_ || _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop24;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop74:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               loop75:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc27_ && _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr785:
                                                                                                                                                                                                                     if(_loc28_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr794:
                                                                                                                                                                                                                        §§push(this.m_v2);
                                                                                                                                                                                                                        if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().a = 1;
                                                                                                                                                                                                                           this.§=!4§ = 1;
                                                                                                                                                                                                                           addr769:
                                                                                                                                                                                                                           if(_loc27_ && _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop53;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(this.m_v1);
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().Set(this.m_v2);
                                                                                                                                                                                                                              continue loop49;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1135:
                                                                                                                                                                                                                           §§pop().a = 1;
                                                                                                                                                                                                                           addr803:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1050);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     this.§=!4§ = 1;
                                                                                                                                                                                                                     return;
                                                                                                                                                                                                                     addr1126:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc27_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                                                                     if(_loc27_ && _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr963:
                                                                                                                                                                                                                        while(_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc24_ = §§pop();
                                                                                                                                                                                                                              §§push(this.m_v1);
                                                                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1064:
                                                                                                                                                                                                                                 §§push(§§pop() * _loc24_);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().a = §§pop();
                                                                                                                                                                                                                              §§push(this.m_v2);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1050:
                                                                                                                                                                                                                              addr1101:
                                                                                                                                                                                                                              addr1100:
                                                                                                                                                                                                                              addr1099:
                                                                                                                                                                                                                              addr1056:
                                                                                                                                                                                                                              addr1065:
                                                                                                                                                                                                                              addr1055:
                                                                                                                                                                                                                              addr1060:
                                                                                                                                                                                                                              addr1066:
                                                                                                                                                                                                                              addr1046:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop0;
                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1054:
                                                                                                                                                                                                                              §§push(§§pop() * _loc24_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().a = §§pop();
                                                                                                                                                                                                                           this.§=!4§ = 2;
                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop0;
                                                                                                                                                                                                                        addr584:
                                                                                                                                                                                                                        addr963:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr396);
                                                                                                                                                                                                                     loop67:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop51;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                                                                           while(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                              continue loop58;
                                                                                                                                                                                                                              if(_loc28_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop48;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop9;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1105);
                                                                                                                                                                                                                        addr500:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr507:
                                                                                                                                                                                                                              if(!(_loc28_ || this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc27_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                    if(!(_loc27_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             if(!(_loc28_ || _loc1_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop58;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc27_ && _loc1_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop14;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc28_ || this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop74;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr425:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop75;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1146:
                                                                                                                                                                                                                                                addr1146:
                                                                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1149:
                                                                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                                                                   if(_loc28_ || _loc1_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1162:
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1160:
                                                                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                      if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         break loop75;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break loop75;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1162);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop3;
                                                                                                                                                                                                                                          addr538:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop57;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop74;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop12;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop45;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop67;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop56;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop30;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop24;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1050);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               var _loc23_:* = §§pop();
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.m_v1);
                                                                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                                                                  if(_loc28_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * _loc23_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().a = §§pop();
                                                                                                                                                                                                                  §§push(this.m_v2);
                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                  if(_loc28_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * _loc23_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().a = §§pop();
                                                                                                                                                                                                                  addr1227:
                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.m_v3);
                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * _loc23_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().a = §§pop();
                                                                                                                                                                                                                     this.§=!4§ = 3;
                                                                                                                                                                                                                     addr1202:
                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc27_ && _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1227);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        return;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1202:
                                                                                                                                                                                                                     §§goto(addr1202);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1243:
                                                                                                                                                                                                                  §§goto(addr1243);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1202);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr619:
                                                                                                                                                                                                         loop70:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop59;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr696:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop15;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr700);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr582);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop70;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1087);
                                                                                                                                                                                                         §§goto(addr666);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                         break loop47;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1107:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr411);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr500);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop29;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc27_ && _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr895);
                                                                                                                                                                                          }
                                                                                                                                                                                          return;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1019:
                                                                                                                                                                                       while(_loc28_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          while(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr963);
                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                             break loop53;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                       §§goto(addr1050);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       break loop53;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr988:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr698);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr963);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop83;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop52;
                                                                                                                                                                        }
                                                                                                                                                                        addr973:
                                                                                                                                                                        while(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                           if(!(_loc27_ && _loc1_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop82;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop13;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr988);
                                                                                                                                                                           §§goto(addr714);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop1;
                                                                                                                                                                        §§goto(addr988);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop25;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop50;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr785);
                                                                                                                                                         }
                                                                                                                                                         while(!(_loc27_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc28_ || _loc1_))
                                                                                                                                                            {
                                                                                                                                                               continue loop16;
                                                                                                                                                            }
                                                                                                                                                            if(_loc28_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr906);
                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1126);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1027);
                                                                                                                                                      }
                                                                                                                                                      continue loop46;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr334);
                                                                                                                                          }
                                                                                                                                          if(_loc28_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr843);
                                                                                                                                             §§push(this.m_v2);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1046);
                                                                                                                                       }
                                                                                                                                       continue loop26;
                                                                                                                                    }
                                                                                                                                    §§goto(addr783);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       break loop26;
                                                                                                                                    }
                                                                                                                                    continue loop27;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1143);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1144);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(1);
                                                                                                               if(!(_loc27_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§goto(addr936);
                                                                                                                     §§push(_loc13_);
                                                                                                                  }
                                                                                                                  §§goto(addr1149);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr1146);
                                                                                                               }
                                                                                                            }
                                                                                                            addr922:
                                                                                                         }
                                                                                                         §§goto(addr988);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1019);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1130);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr1087);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr1110);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr1107);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr1135);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr295);
               }
               §§goto(addr240);
            }
            §§goto(addr181);
         }
         §§goto(addr131);
      }
   }
}
