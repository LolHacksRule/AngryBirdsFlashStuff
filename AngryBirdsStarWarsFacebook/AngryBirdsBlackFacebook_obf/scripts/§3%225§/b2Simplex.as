package §3"5§
{
   import §4!$§.*;
   import §5"i§.*;
   import §[R§.*;
   
   class b2Simplex
   {
       
      
      public var m_v1:b2SimplexVertex;
      
      public var m_v2:b2SimplexVertex;
      
      public var m_v3:b2SimplexVertex;
      
      public var §=#S§:Vector.<b2SimplexVertex>;
      
      public var §@"K§:int;
      
      function b2Simplex()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.m_v1 = new b2SimplexVertex();
            while(true)
            {
               this.m_v2 = new b2SimplexVertex();
            }
            addr130:
         }
         while(true)
         {
            this.m_v3 = new b2SimplexVertex();
            loop2:
            while(true)
            {
               this.§=#S§ = new Vector.<b2SimplexVertex>(3);
               while(true)
               {
                  super();
                  while(_loc1_)
                  {
                     this.§=#S§[0] = this.m_v1;
                     loop5:
                     for(; !_loc2_; while(true)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop5;
                     },continue loop2)
                     {
                        if(_loc1_)
                        {
                           this.§=#S§[1] = this.m_v2;
                           continue;
                        }
                        §§goto(addr130);
                     }
                  }
               }
            }
            if(_loc1_ || this)
            {
               return;
            }
         }
      }
      
      public function §&!J§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc10_:b2SimplexVertex = null;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         if(_loc13_ || param1)
         {
            §§push(b2Settings);
            if(!(_loc14_ && this))
            {
               §§push(0 <= param1.count);
               if(!_loc14_)
               {
                  if(§§pop())
                  {
                     if(_loc13_ || param1)
                     {
                        §§pop();
                        addr60:
                        §§push(param1.count <= 3);
                     }
                  }
               }
               §§pop().b2Assert(§§pop());
               if(_loc13_)
               {
                  this.§@"K§ = param1.count;
                  addr71:
                  var _loc8_:Vector.<b2SimplexVertex> = this.§=#S§;
                  var _loc9_:int = 0;
                  while(true)
                  {
                     §§push(_loc9_);
                     if(!_loc14_)
                     {
                        §§push(this.§@"K§);
                        if(!(_loc14_ && param1))
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc13_ || param2)
                              {
                                 §§push(this.§@"K§);
                                 if(_loc13_ || param1)
                                 {
                                    §§push(1);
                                    if(_loc13_)
                                    {
                                       addr202:
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc13_)
                                          {
                                             §§push(param1.§2K§);
                                             if(_loc13_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc13_ || param3)
                                                {
                                                   _loc11_ = §§pop();
                                                   if(!_loc14_)
                                                   {
                                                      addr338:
                                                      §§push(_loc12_ = this.§%<§());
                                                      §§push(0.5);
                                                      if(_loc13_ || this)
                                                      {
                                                         §§push(§§pop() * _loc11_);
                                                      }
                                                      §§push(§§pop() < §§pop());
                                                      if(!(§§pop() < §§pop()))
                                                      {
                                                         addr354:
                                                         §§pop();
                                                         addr282:
                                                         addr355:
                                                         §§push(2);
                                                         if(!(_loc14_ && param1))
                                                         {
                                                            addr293:
                                                            §§push(§§pop() * _loc11_);
                                                            if(!_loc14_)
                                                            {
                                                               if(!(_loc14_ && param3))
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(!(_loc14_ && param2))
                                                                  {
                                                                     if(!(_loc14_ && param1))
                                                                     {
                                                                        addr318:
                                                                        §§push(§§pop() < §§pop());
                                                                        if(!(_loc14_ && param1))
                                                                        {
                                                                           addr325:
                                                                           §§push(§§pop());
                                                                           if(!_loc14_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 addr330:
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(_loc13_ || param1)
                                                                                       {
                                                                                          if(_loc13_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() < Number.MIN_VALUE);
                                                                                             if(!(_loc14_ && param1))
                                                                                             {
                                                                                                if(!(_loc14_ && param3))
                                                                                                {
                                                                                                   addr264:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         this.§@"K§ = 0;
                                                                                                         if(_loc14_ && this)
                                                                                                         {
                                                                                                         }
                                                                                                         addr360:
                                                                                                         (_loc10_ = _loc8_[0]).indexA = 0;
                                                                                                         if(!(_loc14_ && param1))
                                                                                                         {
                                                                                                            _loc10_.indexB = 0;
                                                                                                         }
                                                                                                         _loc6_ = param2.§-",§(0);
                                                                                                         _loc7_ = param4.§-",§(0);
                                                                                                         if(_loc13_ || param2)
                                                                                                         {
                                                                                                            _loc10_.§5#1§ = b2Math.§""$§(param3,_loc6_);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc10_.§6!V§ = b2Math.§""$§(param5,_loc7_);
                                                                                                            loop8:
                                                                                                            while(!_loc14_)
                                                                                                            {
                                                                                                               do
                                                                                                               {
                                                                                                                  _loc10_.w = b2Math.§8!3§(_loc10_.§6!V§,_loc10_.§5#1§);
                                                                                                                  do
                                                                                                                  {
                                                                                                                     this.§@"K§ = 1;
                                                                                                                  }
                                                                                                                  while(!(_loc13_ || param3));
                                                                                                                  
                                                                                                                  if(!(_loc14_ && param2))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               while(false);
                                                                                                               
                                                                                                               return;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         addr280:
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr282);
                                                                                                         }
                                                                                                         addr356:
                                                                                                         §§push(this.§@"K§);
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr355);
                                                                                                   }
                                                                                                   §§goto(addr356);
                                                                                                }
                                                                                                §§goto(addr318);
                                                                                             }
                                                                                             §§goto(addr330);
                                                                                          }
                                                                                          §§goto(addr338);
                                                                                       }
                                                                                       §§goto(addr293);
                                                                                       addr335:
                                                                                    }
                                                                                    §§goto(addr360);
                                                                                 }
                                                                                 §§goto(addr338);
                                                                              }
                                                                              §§goto(addr264);
                                                                           }
                                                                           §§goto(addr338);
                                                                        }
                                                                        §§goto(addr354);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr338);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr325);
                                                   }
                                                   §§goto(addr280);
                                                }
                                             }
                                             §§goto(addr338);
                                          }
                                          §§goto(addr360);
                                       }
                                       §§goto(addr280);
                                    }
                                    addr359:
                                    if(§§pop() == §§pop())
                                    {
                                       §§goto(addr360);
                                    }
                                    §§goto(addr453);
                                 }
                                 §§goto(addr293);
                              }
                              §§goto(addr335);
                           }
                           else
                           {
                              (_loc10_ = _loc8_[_loc9_]).indexA = param1.indexA[_loc9_];
                              if(_loc13_ || param2)
                              {
                                 _loc10_.indexB = param1.indexB[_loc9_];
                              }
                              _loc6_ = param2.§-",§(_loc10_.indexA);
                              _loc7_ = param4.§-",§(_loc10_.indexB);
                              if(_loc13_)
                              {
                                 _loc10_.§5#1§ = b2Math.§""$§(param3,_loc6_);
                                 loop1:
                                 while(true)
                                 {
                                    _loc10_.§6!V§ = b2Math.§""$§(param5,_loc7_);
                                    loop2:
                                    while(true)
                                    {
                                       _loc10_.w = b2Math.§8!3§(_loc10_.§6!V§,_loc10_.§5#1§);
                                       while(!_loc14_)
                                       {
                                          while(true)
                                          {
                                             _loc10_.a = 0;
                                             do
                                             {
                                                _loc9_++;
                                             }
                                             while(!(_loc13_ || param2));
                                             
                                             if(_loc14_)
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr138);
                              }
                           }
                        }
                        §§goto(addr202);
                     }
                     break;
                  }
                  §§goto(addr359);
                  §§push(0);
               }
               §§goto(addr71);
            }
            §§goto(addr60);
         }
         §§goto(addr71);
      }
      
      public function §"!f§(param1:b2SimplexCache) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            param1.§2K§ = this.§%<§();
            if(_loc5_)
            {
               param1.count = uint(this.§@"K§);
            }
         }
         var _loc2_:Vector.<b2SimplexVertex> = this.§=#S§;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§@"K§)
            {
               if(_loc5_ || _loc3_)
               {
                  if(!_loc4_)
                  {
                     if(_loc5_ || param1)
                     {
                        break;
                     }
                     param1.indexB[_loc3_] = uint(_loc2_[_loc3_].indexB);
                     addr109:
                  }
                  _loc3_++;
               }
               continue;
            }
            param1.indexA[_loc3_] = uint(_loc2_[_loc3_].indexA);
            §§goto(addr109);
         }
      }
      
      public function §`"7§() : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:b2Vec2 = null;
         var _loc2_:* = NaN;
         do
         {
            §§push(this.§@"K§);
            if(!_loc5_)
            {
               var _loc3_:* = §§pop();
               if(_loc4_ || _loc1_)
               {
                  §§push(1);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(_loc3_);
                     if(_loc4_ || this)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc4_ || _loc2_)
                           {
                              addr171:
                              §§push(0);
                              if(!(_loc5_ && _loc1_))
                              {
                                 addr203:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       return this.m_v1.w.§5!]§();
                                    case 1:
                                       _loc1_ = b2Math.§8!3§(this.m_v2.w,this.m_v1.w);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(b2Math.§0#W§(_loc1_,this.m_v1.w.§5!]§()));
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          do
                                          {
                                             _loc2_ = §§pop();
                                             §§push(_loc2_);
                                          }
                                          while(_loc5_ && _loc2_);
                                          
                                          if(§§pop() > 0)
                                          {
                                             return b2Math.§7!m§(1,_loc1_);
                                          }
                                          return b2Math.§`0§(_loc1_,1);
                                       }
                                       continue;
                                 }
                                 addr203:
                              }
                              else
                              {
                                 addr183:
                                 if(§§pop() !== _loc3_)
                                 {
                                    §§goto(addr203);
                                    §§push(2);
                                 }
                                 §§goto(addr203);
                              }
                              §§goto(addr203);
                           }
                           §§push(1);
                           if(_loc4_)
                           {
                              addr198:
                           }
                        }
                        else
                        {
                           §§push(2);
                           if(_loc4_)
                           {
                              §§goto(addr183);
                           }
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr198);
               }
               §§goto(addr171);
            }
            §§goto(addr203);
         }
         while(true);
         
         b2Settings.b2Assert(false);
         return new b2Vec2();
      }
      
      public function §8#H§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§@"K§);
         if(!_loc3_)
         {
            var _loc1_:* = §§pop();
            if(_loc2_ || _loc3_)
            {
               §§push(0);
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc3_)
                        {
                           addr202:
                           §§push(0);
                           if(!_loc3_)
                           {
                              addr258:
                              switch(§§pop())
                              {
                                 case 0:
                                    b2Settings.b2Assert(false);
                                    return new b2Vec2();
                                 case 1:
                                    return this.m_v1.w;
                                 default:
                                    do
                                    {
                                       b2Settings.b2Assert(false);
                                    }
                                    while(_loc3_);
                                    
                                    if(_loc2_ || _loc3_)
                                    {
                                       return new b2Vec2();
                                    }
                                    break;
                                 case 2:
                              }
                              addr257:
                              §§push(§§findproperty(b2Vec2));
                              §§push(this.m_v1.a);
                              if(!_loc3_)
                              {
                                 §§push(this.m_v1);
                                 if(_loc2_ || this)
                                 {
                                    §§push(§§pop().w.x);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc3_)
                                       {
                                          §§push(this.m_v2.a);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(this.m_v2);
                                             if(_loc2_ || this)
                                             {
                                                §§push(§§pop().w);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         addr103:
                                                         §§push(§§pop() + §§pop());
                                                         §§push(this.m_v1.a);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr113:
                                                            addr116:
                                                            §§push(this.m_v1.w.y);
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               §§goto(addr153);
                                                            }
                                                            addr153:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc2_)
                                                            {
                                                               addr137:
                                                               §§push(this.m_v2.a);
                                                               if(_loc2_ || _loc3_)
                                                               {
                                                                  addr147:
                                                                  §§push(§§pop() * this.m_v2.w.y);
                                                               }
                                                            }
                                                            return new §§pop().b2Vec2(§§pop(),§§pop());
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§goto(addr137);
                                                      }
                                                      §§goto(addr113);
                                                   }
                                                   §§goto(addr147);
                                                }
                                                §§goto(addr116);
                                             }
                                             §§goto(addr137);
                                          }
                                       }
                                       §§goto(addr103);
                                    }
                                    §§goto(addr153);
                                 }
                              }
                              §§goto(addr103);
                              addr257:
                           }
                           else
                           {
                              addr232:
                              if(§§pop() === _loc1_)
                              {
                                 addr234:
                                 §§push(2);
                                 if(_loc2_ || _loc3_)
                                 {
                                 }
                                 §§goto(addr257);
                              }
                              else
                              {
                                 §§goto(addr257);
                                 §§push(3);
                              }
                              §§goto(addr257);
                           }
                        }
                        else
                        {
                           addr225:
                           §§push(1);
                           if(!_loc2_)
                           {
                           }
                        }
                        §§goto(addr257);
                     }
                     else
                     {
                        §§push(1);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(_loc1_);
                           if(_loc2_)
                           {
                              addr217:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§goto(addr225);
                                 }
                                 else
                                 {
                                    §§goto(addr234);
                                 }
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc2_)
                                 {
                                    §§goto(addr232);
                                 }
                              }
                              §§goto(addr252);
                           }
                           §§goto(addr232);
                        }
                     }
                     §§goto(addr257);
                  }
                  §§goto(addr217);
               }
               §§goto(addr232);
            }
            §§goto(addr202);
         }
         §§goto(addr258);
      }
      
      public function §4`§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§@"K§);
         if(_loc4_ || param2)
         {
            var _loc3_:* = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              addr514:
                              if(§§pop() === _loc3_)
                              {
                                 addr516:
                                 §§push(3);
                                 if(!(_loc5_ && this))
                                 {
                                    addr534:
                                 }
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                           addr540:
                           loop2:
                           switch(§§pop())
                           {
                              case 0:
                                 b2Settings.b2Assert(false);
                                 break;
                                 addr236:
                              case 1:
                                 param1.SetV(this.m_v1.§5#1§);
                                 if(!(_loc5_ && param1))
                                 {
                                    param2.SetV(this.m_v1.§6!V§);
                                    addr212:
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    §§goto(addr236);
                                 }
                                 else
                                 {
                                    addr335:
                                    §§push(param2);
                                    §§push(param1);
                                    §§push(this.m_v1.a);
                                    if(_loc4_)
                                    {
                                       §§push(this.m_v1.§5#1§.y);
                                       if(_loc4_ || param2)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(this.m_v2.a);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(this.m_v2.§5#1§);
                                                if(_loc4_ || param2)
                                                {
                                                   §§push(§§pop().y);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§push(this.m_v3.a);
                                                            if(!_loc5_)
                                                            {
                                                               addr409:
                                                               §§push(§§pop() * this.m_v3.§5#1§.y);
                                                               if(!_loc5_)
                                                               {
                                                                  addr412:
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr412);
                                                      }
                                                      _loc3_ = §§pop();
                                                      §§pop().y = §§pop();
                                                      §§pop().y = _loc3_;
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                }
                                             }
                                             §§goto(addr409);
                                          }
                                       }
                                    }
                                    §§goto(addr412);
                                 }
                                 break;
                              case 2:
                                 §§push(param1);
                                 §§push(this.m_v1.a);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(this.m_v1.§5#1§.x);
                                    if(!(_loc5_ && this))
                                    {
                                       addr204:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§push(this.m_v2.a);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() * this.m_v2.§5#1§.x);
                                          }
                                       }
                                       §§pop().x = §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(param1);
                                          §§push(this.m_v1.a);
                                          if(!(_loc5_ && param2))
                                          {
                                             §§push(this.m_v1.§5#1§.y);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc5_)
                                                {
                                                   addr128:
                                                   §§push(this.m_v2.a);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      addr138:
                                                      §§push(§§pop() * this.m_v2.§5#1§.y);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().y = §§pop();
                                                if(_loc5_ && param1)
                                                {
                                                   addr433:
                                                   break loop2;
                                                }
                                                if(_loc4_ || _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      §§push(this.m_v1.a);
                                                      if(_loc4_)
                                                      {
                                                         §§push(this.m_v1.§6!V§.x);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc5_)
                                                            {
                                                               addr87:
                                                               §§push(this.m_v2.a);
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  addr97:
                                                                  §§push(§§pop() * this.m_v2.§6!V§.x);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().x = §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               §§push(param2);
                                                               §§push(this.m_v1.a);
                                                               if(_loc4_ || param2)
                                                               {
                                                                  §§push(this.m_v1.§6!V§.y);
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr54:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc4_ || param2)
                                                                     {
                                                                        §§push(this.m_v2.a);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop() * this.m_v2.§6!V§.y);
                                                                        }
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     if(!(_loc4_ || this))
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§goto(addr54);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr335);
                                                            }
                                                         }
                                                         §§goto(addr97);
                                                      }
                                                      §§goto(addr87);
                                                   }
                                                   break loop2;
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr138);
                                          }
                                          §§goto(addr128);
                                       }
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr204);
                              case 3:
                                 §§push(param2);
                                 §§push(param1);
                                 §§push(this.m_v1.a);
                                 if(_loc4_ || this)
                                 {
                                    §§push(this.m_v1.§5#1§.x);
                                    if(_loc4_ || param1)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc4_ || param2)
                                       {
                                          §§push(this.m_v2.a);
                                          if(_loc4_)
                                          {
                                             §§push(this.m_v2.§5#1§);
                                             if(_loc4_ || this)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc4_)
                                                      {
                                                         addr304:
                                                         §§push(this.m_v3.a);
                                                         if(!_loc5_)
                                                         {
                                                            addr323:
                                                            §§push(§§pop() * this.m_v3.§5#1§.x);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               addr321:
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            _loc3_ = §§pop();
                                                            §§pop().x = §§pop();
                                                            §§pop().x = _loc3_;
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§goto(addr335);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr323);
                                                      }
                                                      §§push(§§pop());
                                                   }
                                                }
                                             }
                                             §§goto(addr323);
                                          }
                                       }
                                       §§goto(addr304);
                                    }
                                    §§goto(addr321);
                                 }
                                 §§goto(addr304);
                              default:
                                 b2Settings.b2Assert(false);
                                 if(_loc4_)
                                 {
                                    §§goto(addr433);
                                 }
                           }
                           return;
                           addr539:
                        }
                        §§goto(addr516);
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(1);
                                    if(_loc4_ || this)
                                    {
                                       §§goto(addr539);
                                    }
                                    else
                                    {
                                       §§goto(addr514);
                                    }
                                 }
                                 §§goto(addr516);
                              }
                              else
                              {
                                 §§push(2);
                                 if(!_loc5_)
                                 {
                                    addr491:
                                    §§push(_loc3_);
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr499:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             addr507:
                                             §§push(2);
                                             if(_loc5_)
                                             {
                                             }
                                             §§goto(addr539);
                                          }
                                          else
                                          {
                                             §§goto(addr516);
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc4_)
                                          {
                                             §§goto(addr514);
                                          }
                                       }
                                       §§goto(addr534);
                                    }
                                    §§goto(addr514);
                                 }
                              }
                              §§goto(addr539);
                           }
                           §§goto(addr499);
                        }
                     }
                  }
                  §§goto(addr514);
               }
               §§goto(addr491);
            }
            §§goto(addr507);
         }
         §§goto(addr540);
      }
      
      public function §%<§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§@"K§);
         if(!_loc3_)
         {
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               §§push(0);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(_loc1_);
                  if(_loc2_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc2_ || _loc1_)
                        {
                           addr151:
                           §§push(0);
                           if(!_loc2_)
                           {
                              addr182:
                           }
                        }
                        else
                        {
                           addr197:
                           §§push(2);
                           if(!_loc2_)
                           {
                              addr209:
                              if(§§pop() === _loc1_)
                              {
                                 addr211:
                                 §§push(3);
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr229:
                                 }
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                           else
                           {
                              addr200:
                           }
                        }
                        addr235:
                        switch(§§pop())
                        {
                           case 0:
                              b2Settings.b2Assert(false);
                              addr101:
                              return 0;
                              addr108:
                           default:
                              b2Settings.b2Assert(false);
                              if(!_loc3_)
                              {
                                 §§push(0);
                                 if(!_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr101);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr58);
                                 }
                              }
                              else if(!(_loc3_ && _loc3_))
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    addr39:
                                    addr58:
                                    return §§pop();
                                    §§push(b2Math.§0#W§(b2Math.§8!3§(this.m_v2.w,this.m_v1.w),b2Math.§8!3§(this.m_v3.w,this.m_v1.w)));
                                 }
                                 else
                                 {
                                    §§goto(addr108);
                                 }
                              }
                              else
                              {
                                 if(_loc3_)
                                 {
                                    addr93:
                                    §§push(0);
                                    break;
                                 }
                                 addr60:
                                 §§push(b2Math.§8!3§(this.m_v1.w,this.m_v2.w).Length());
                              }
                              if(_loc2_ || _loc1_)
                              {
                                 return §§pop();
                              }
                              break;
                           case 2:
                              §§goto(addr60);
                           case 1:
                              §§goto(addr93);
                           case 3:
                              §§goto(addr39);
                        }
                        return §§pop();
                        addr234:
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(_loc1_);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr171:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§push(1);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§goto(addr182);
                                    }
                                    else
                                    {
                                       addr186:
                                       §§push(_loc1_);
                                       if(_loc2_ || this)
                                       {
                                          addr194:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr197);
                                             }
                                             §§goto(addr211);
                                          }
                                          else
                                          {
                                             §§push(3);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§goto(addr209);
                                             }
                                             §§goto(addr234);
                                          }
                                       }
                                       §§goto(addr209);
                                    }
                                 }
                                 §§goto(addr211);
                              }
                              else
                              {
                                 §§push(2);
                                 if(!_loc3_)
                                 {
                                    §§goto(addr186);
                                 }
                              }
                              §§goto(addr234);
                           }
                           §§goto(addr194);
                        }
                     }
                     §§goto(addr200);
                  }
                  §§goto(addr171);
               }
               §§goto(addr229);
            }
            §§goto(addr151);
         }
         §§goto(addr235);
      }
      
      public function Solve2() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:b2Vec2 = this.m_v1.w;
         var _loc2_:b2Vec2 = this.m_v2.w;
         var _loc3_:b2Vec2 = b2Math.§8!3§(_loc2_,_loc1_);
         §§push(_loc1_.x);
         if(_loc7_ || _loc1_)
         {
            §§push(_loc3_.x);
            if(!_loc8_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc8_ && this))
               {
                  §§push(_loc1_.y);
                  if(!(_loc8_ && _loc1_))
                  {
                     addr62:
                     §§push(§§pop() * _loc3_.y);
                     if(!(_loc8_ && _loc3_))
                     {
                        addr72:
                        §§push(§§pop() + §§pop());
                        if(_loc7_)
                        {
                           §§push(-§§pop());
                           if(_loc7_)
                           {
                              addr79:
                              §§push(Number(§§pop()));
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr79);
                     }
                     var _loc4_:* = §§pop();
                     if(!(_loc8_ && _loc1_))
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(!(_loc8_ && _loc1_))
                              {
                                 this.m_v1.a = 1;
                                 if(_loc7_ || this)
                                 {
                                    this.§@"K§ = 1;
                                    if(_loc8_ && _loc3_)
                                    {
                                       addr121:
                                       §§push(_loc2_.x);
                                       if(_loc7_)
                                       {
                                          §§push(_loc3_.x);
                                          if(_loc7_ || _loc1_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc8_)
                                             {
                                                §§push(_loc2_.y);
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   §§push(§§pop() * _loc3_.y);
                                                   if(_loc8_ && this)
                                                   {
                                                   }
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr171);
                                       }
                                       §§goto(addr169);
                                    }
                                 }
                                 §§goto(addr121);
                              }
                              return;
                           }
                           §§goto(addr121);
                        }
                        addr171:
                        §§push(§§pop() + §§pop());
                        if(!_loc8_)
                        {
                           addr169:
                           §§push(Number(§§pop()));
                        }
                        var _loc5_:*;
                        §§push(_loc5_ = §§pop());
                        if(!_loc8_)
                        {
                           if(§§pop() <= 0)
                           {
                              if(!_loc8_)
                              {
                                 this.m_v2.a = 1;
                                 if(_loc7_ || _loc3_)
                                 {
                                    this.§@"K§ = 1;
                                    while(true)
                                    {
                                    }
                                    addr208:
                                 }
                                 else if(true)
                                 {
                                    §§goto(addr209);
                                 }
                                 while(true)
                                 {
                                    this.m_v1.Set(this.m_v2);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§goto(addr208);
                                 }
                              }
                              return;
                           }
                           addr209:
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
                           §§goto(addr224);
                        }
                        addr224:
                        var _loc6_:Number = §§pop();
                        if(_loc7_)
                        {
                           §§push(this.m_v1);
                           §§push(_loc5_);
                           if(_loc7_)
                           {
                              §§push(§§pop() * _loc6_);
                           }
                           §§pop().a = §§pop();
                           do
                           {
                              §§push(this.m_v2);
                              §§push(_loc4_);
                              if(_loc7_)
                              {
                                 §§push(§§pop() * _loc6_);
                              }
                              §§pop().a = §§pop();
                              do
                              {
                                 this.§@"K§ = 2;
                              }
                              while(_loc8_ && this);
                              
                           }
                           while(!(_loc7_ || _loc2_));
                           
                        }
                        return;
                     }
                     §§goto(addr169);
                  }
                  §§goto(addr72);
               }
               §§goto(addr79);
            }
            §§goto(addr62);
         }
         §§goto(addr79);
      }
      
      public function Solve3() : void
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc1_:b2Vec2 = this.m_v1.w;
         var _loc2_:b2Vec2 = this.m_v2.w;
         var _loc3_:b2Vec2 = this.m_v3.w;
         var _loc4_:b2Vec2 = b2Math.§8!3§(_loc2_,_loc1_);
         §§push(b2Math.§+#>§(_loc1_,_loc4_));
         if(_loc27_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(b2Math.§+#>§(_loc2_,_loc4_));
         if(!_loc28_)
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
         if(_loc27_)
         {
            §§push(-§§pop());
            if(_loc27_)
            {
               addr80:
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:b2Vec2 = b2Math.§8!3§(_loc3_,_loc1_);
            §§push(b2Math.§+#>§(_loc1_,_loc9_));
            if(_loc27_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc10_:* = §§pop();
            §§push(b2Math.§+#>§(_loc3_,_loc9_));
            if(!_loc28_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:*;
            §§push(_loc11_ = §§pop());
            if(!(_loc28_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
            var _loc12_:* = §§pop();
            §§push(_loc10_);
            if(!(_loc28_ && this))
            {
               §§push(-§§pop());
               if(_loc27_ || _loc3_)
               {
                  addr135:
                  §§push(Number(§§pop()));
               }
               var _loc13_:* = §§pop();
               var _loc14_:b2Vec2 = b2Math.§8!3§(_loc3_,_loc2_);
               §§push(b2Math.§+#>§(_loc2_,_loc14_));
               if(_loc27_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc15_:* = §§pop();
               §§push(b2Math.§+#>§(_loc3_,_loc14_));
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc16_:*;
               §§push(_loc16_ = §§pop());
               if(_loc27_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc17_:* = §§pop();
               §§push(_loc15_);
               if(!(_loc28_ && _loc2_))
               {
                  §§push(-§§pop());
                  if(!_loc28_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc18_:* = §§pop();
               §§push(b2Math.§0#W§(_loc4_,_loc9_));
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc19_:*;
               §§push(_loc19_ = §§pop());
               if(_loc27_)
               {
                  §§push(§§pop() * b2Math.§0#W§(_loc2_,_loc3_));
                  if(!_loc28_)
                  {
                     addr205:
                     §§push(Number(§§pop()));
                  }
                  var _loc20_:* = §§pop();
                  §§push(_loc19_);
                  if(!(_loc28_ && this))
                  {
                     §§push(§§pop() * b2Math.§0#W§(_loc3_,_loc1_));
                     if(_loc27_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc21_:* = §§pop();
                  §§push(_loc19_);
                  if(!(_loc28_ && _loc3_))
                  {
                     §§push(§§pop() * b2Math.§0#W§(_loc1_,_loc2_));
                     if(!(_loc28_ && _loc2_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc22_:* = §§pop();
                  if(_loc27_)
                  {
                     §§push(_loc8_);
                     while(true)
                     {
                        §§push(0);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() <= §§pop());
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
                                       addr1128:
                                       while(true)
                                       {
                                          §§push(_loc13_);
                                          addr1113:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr1114:
                                             while(true)
                                             {
                                                §§push(§§pop() <= §§pop());
                                             }
                                          }
                                       }
                                    }
                                    addr1127:
                                 }
                                 while(true)
                                 {
                                    loop9:
                                    for(; !§§pop(); if(!(_loc27_ || _loc1_))
                                    {
                                       continue;
                                    },§§goto(addr984),§§push(§§pop()))
                                    {
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          while(true)
                                          {
                                             §§push(0);
                                             while(_loc27_ || _loc1_)
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
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr1102:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               addr1070:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr1071:
                                                                  while(!_loc28_)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                         addr1101:
                                                      }
                                                      while(true)
                                                      {
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop21:
                                                            while(!_loc28_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue loop13;
                                                               }
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr1037:
                                                                        if(_loc27_ || _loc2_)
                                                                        {
                                                                           addr1055:
                                                                           §§push(1);
                                                                           §§push(_loc7_);
                                                                           if(!(_loc28_ && _loc1_))
                                                                           {
                                                                              addr1054:
                                                                              §§push(§§pop() + _loc8_);
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr1059:
                                                                              _loc24_ = §§pop();
                                                                              if(!(_loc28_ && this))
                                                                              {
                                                                                 addr1027:
                                                                                 this.m_v1.a = _loc7_ * _loc24_;
                                                                                 addr1025:
                                                                                 addr1026:
                                                                                 addr1024:
                                                                                 do
                                                                                 {
                                                                                    §§push(this.m_v2);
                                                                                    §§push(_loc8_);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       addr1004:
                                                                                       §§push(§§pop() * _loc24_);
                                                                                    }
                                                                                    §§pop().a = §§pop();
                                                                                 }
                                                                                 while(!(_loc27_ || _loc2_));
                                                                                 
                                                                                 addr1013:
                                                                                 if(!(_loc27_ || _loc3_))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc22_);
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          continue loop26;
                                                                                       }
                                                                                       §§goto(addr1059);
                                                                                       §§goto(addr1013);
                                                                                    }
                                                                                    addr1087:
                                                                                 }
                                                                                 this.§@"K§ = 2;
                                                                                 return;
                                                                                 addr996:
                                                                              }
                                                                              return;
                                                                              addr1110:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr1159:
                                                                              addr1160:
                                                                           }
                                                                           var _loc23_:Number = §§pop();
                                                                           if(!(_loc28_ && _loc2_))
                                                                           {
                                                                              §§push(this.m_v1);
                                                                              §§push(_loc20_);
                                                                              if(_loc27_)
                                                                              {
                                                                                 §§push(§§pop() * _loc23_);
                                                                              }
                                                                              §§pop().a = §§pop();
                                                                           }
                                                                           §§push(this.m_v2);
                                                                           §§push(_loc21_);
                                                                           if(!(_loc28_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() * _loc23_);
                                                                           }
                                                                           §§pop().a = §§pop();
                                                                           addr1211:
                                                                           if(!_loc28_)
                                                                           {
                                                                              §§push(this.m_v3);
                                                                              §§push(_loc22_);
                                                                              if(!(_loc28_ && _loc1_))
                                                                              {
                                                                                 §§push(§§pop() * _loc23_);
                                                                              }
                                                                              §§pop().a = §§pop();
                                                                              addr1194:
                                                                              if(!_loc28_)
                                                                              {
                                                                                 this.§@"K§ = 3;
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    §§goto(addr1194);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr1211);
                                                                           }
                                                                           addr1232:
                                                                           §§goto(addr1232);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc12_);
                                                                           addr972:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              addr973:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 addr974:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    §§goto(addr1101);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr970:
                                                                     }
                                                                     §§goto(addr1102);
                                                                     addr649:
                                                                     if(!(_loc27_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     while(!§§pop())
                                                                     {
                                                                        §§push(_loc17_);
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(0);
                                                                           loop62:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc28_)
                                                                              {
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop() > §§pop());
                                                                                 while(_loc27_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc27_ || _loc1_)
                                                                                       {
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             if(!_loc27_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      while(!_loc28_)
                                                                                                      {
                                                                                                         §§push(_loc18_);
                                                                                                         if(!(_loc28_ && this))
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            continue loop62;
                                                                                                         }
                                                                                                         §§goto(addr1159);
                                                                                                      }
                                                                                                      addr723:
                                                                                                      if(_loc27_ || _loc2_)
                                                                                                      {
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            addr713:
                                                                                                            §§push(this.m_v1);
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               §§pop().Set(this.m_v2);
                                                                                                               return;
                                                                                                            }
                                                                                                            addr871:
                                                                                                            §§push(_loc12_);
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               §§push(_loc25_);
                                                                                                               if(!(_loc28_ && _loc2_))
                                                                                                               {
                                                                                                                  addr883:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc28_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(_loc27_ || _loc1_)
                                                                                                                     {
                                                                                                                        §§pop().a = §§pop();
                                                                                                                        addr852:
                                                                                                                        this.m_v3.a = _loc13_ * _loc25_;
                                                                                                                        addr853:
                                                                                                                        if(!(_loc27_ || _loc3_))
                                                                                                                        {
                                                                                                                           addr921:
                                                                                                                           §§push(1);
                                                                                                                           if(!(_loc28_ && this))
                                                                                                                           {
                                                                                                                              if(!_loc28_)
                                                                                                                              {
                                                                                                                                 addr932:
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 if(!(_loc28_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    if(_loc27_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          addr952:
                                                                                                                                          _loc25_ = §§pop() / (§§pop() + §§pop());
                                                                                                                                          §§goto(addr871);
                                                                                                                                          §§push(this.m_v1);
                                                                                                                                          addr953:
                                                                                                                                          addr950:
                                                                                                                                          addr951:
                                                                                                                                       }
                                                                                                                                       §§goto(addr1054);
                                                                                                                                    }
                                                                                                                                    addr1141:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc27_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr1150:
                                                                                                                                       §§push(§§pop() + _loc22_);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    if(_loc27_ || this)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1159);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1160);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1055);
                                                                                                                           }
                                                                                                                           addr1130:
                                                                                                                           §§push(_loc20_);
                                                                                                                           if(!(_loc28_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(_loc21_);
                                                                                                                              if(!_loc28_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1141);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1150);
                                                                                                                        }
                                                                                                                        if(!(_loc28_ && _loc2_))
                                                                                                                        {
                                                                                                                           this.§@"K§ = 2;
                                                                                                                           addr843:
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              addr826:
                                                                                                                              this.m_v2.Set(this.m_v3);
                                                                                                                              if(!(_loc27_ || _loc3_))
                                                                                                                              {
                                                                                                                                 §§goto(addr843);
                                                                                                                              }
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 return;
                                                                                                                                 addr838:
                                                                                                                              }
                                                                                                                              break loop9;
                                                                                                                           }
                                                                                                                           §§goto(addr970);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr996);
                                                                                                                        }
                                                                                                                        addr851:
                                                                                                                        addr849:
                                                                                                                     }
                                                                                                                     §§goto(addr1025);
                                                                                                                  }
                                                                                                                  §§goto(addr1027);
                                                                                                               }
                                                                                                               §§goto(addr1026);
                                                                                                            }
                                                                                                            §§goto(addr883);
                                                                                                         }
                                                                                                         §§goto(addr1059);
                                                                                                      }
                                                                                                      §§goto(addr898);
                                                                                                      addr574:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc13_);
                                                                                                               loop35:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  addr957:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                     addr958:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr959:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           addr762:
                                                                                                                           if(_loc28_ && _loc1_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr771:
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    addr775:
                                                                                                                                    §§push(this.m_v2);
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc28_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          §§pop().a = 1;
                                                                                                                                          this.§@"K§ = 1;
                                                                                                                                          §§goto(addr723);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1000);
                                                                                                                                    }
                                                                                                                                    §§goto(addr826);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1006);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc12_);
                                                                                                                                    addr674:
                                                                                                                                    while(!_loc28_)
                                                                                                                                    {
                                                                                                                                       continue loop35;
                                                                                                                                    }
                                                                                                                                    addr709:
                                                                                                                                 }
                                                                                                                                 addr672:
                                                                                                                              }
                                                                                                                              §§goto(addr952);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               if(!(_loc27_ || _loc1_))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(this.m_v3);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  §§push(_loc18_);
                                                                                                                  if(!(_loc28_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(!(_loc28_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(_loc26_);
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           addr350:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc28_)
                                                                                                                           {
                                                                                                                              §§goto(addr352);
                                                                                                                           }
                                                                                                                           §§goto(addr850);
                                                                                                                        }
                                                                                                                        §§goto(addr851);
                                                                                                                     }
                                                                                                                     §§goto(addr852);
                                                                                                                  }
                                                                                                                  §§goto(addr350);
                                                                                                               }
                                                                                                               if(_loc27_ || _loc1_)
                                                                                                               {
                                                                                                                  §§pop().a = 1;
                                                                                                                  §§goto(addr669);
                                                                                                               }
                                                                                                               §§goto(addr849);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr1127);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1128);
                                                                                                   }
                                                                                                   §§goto(addr1159);
                                                                                                }
                                                                                                while(_loc27_)
                                                                                                {
                                                                                                   while(!§§pop())
                                                                                                   {
                                                                                                      §§goto(addr787);
                                                                                                   }
                                                                                                   §§goto(addr921);
                                                                                                   §§goto(addr507);
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          while(_loc27_ || _loc2_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§goto(addr968);
                                                                                             }
                                                                                             §§goto(addr919);
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       §§goto(addr695);
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc28_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr649);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr816);
                                                                                    }
                                                                                 }
                                                                                 continue loop27;
                                                                              }
                                                                              §§goto(addr691);
                                                                           }
                                                                           §§goto(addr973);
                                                                        }
                                                                        §§goto(addr1159);
                                                                     }
                                                                     §§goto(addr660);
                                                                     §§push(this.m_v3);
                                                                  }
                                                               }
                                                            }
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr1114);
                                          }
                                       }
                                    }
                                    §§goto(addr1119);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr838);
               }
               §§goto(addr205);
            }
            §§goto(addr135);
         }
         §§goto(addr80);
      }
   }
}
