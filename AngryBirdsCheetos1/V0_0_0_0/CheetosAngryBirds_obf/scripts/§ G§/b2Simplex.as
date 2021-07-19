package § G§
{
   import §-!C§.*;
   import §9"§.*;
   import §>!@§.*;
   
   class b2Simplex
   {
       
      
      public var m_v1:b2SimplexVertex;
      
      public var m_v2:b2SimplexVertex;
      
      public var m_v3:b2SimplexVertex;
      
      public var §3!S§:Vector.<b2SimplexVertex>;
      
      public var §[B§:int;
      
      function b2Simplex()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
                  while(true)
                  {
                     this.§3!S§ = new Vector.<b2SimplexVertex>(3);
                     addr99:
                     while(true)
                     {
                        super();
                        addr88:
                        while(_loc2_)
                        {
                        }
                        continue loop1;
                     }
                     addr67:
                     if(_loc2_ || _loc1_)
                     {
                        this.§3!S§[2] = this.m_v3;
                        if(!(_loc1_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           §§goto(addr88);
                        }
                        loop7:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr67);
                           }
                           else
                           {
                              while(!_loc1_)
                              {
                                 this.§3!S§[1] = this.m_v2;
                                 continue loop7;
                              }
                              §§goto(addr99);
                              addr82:
                           }
                        }
                        addr74:
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§3!S§[0] = this.m_v1;
            §§goto(addr82);
         }
         §§goto(addr47);
      }
      
      public function §1!B§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc10_:b2SimplexVertex = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         if(!(_loc14_ && param2))
         {
            §§push(b2Settings);
            if(_loc13_)
            {
               §§push(0 <= param1.count);
               if(!_loc14_)
               {
                  if(§§pop())
                  {
                     if(!(_loc14_ && param3))
                     {
                        addr54:
                        §§pop();
                        §§push(param1.count <= 3);
                     }
                  }
                  §§pop().b2Assert(§§pop());
                  if(!_loc14_)
                  {
                     this.§[B§ = param1.count;
                     addr66:
                     var _loc8_:Vector.<b2SimplexVertex> = this.§3!S§;
                     var _loc9_:int = 0;
                     loop0:
                     while(true)
                     {
                        §§push(_loc9_);
                        if(!(_loc14_ && param2))
                        {
                           §§push(this.§[B§);
                           if(_loc13_ || param3)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc13_ || param2)
                                 {
                                    §§push(this.§[B§);
                                    if(!(_loc14_ && param2))
                                    {
                                       §§push(1);
                                       if(!(_loc14_ && param3))
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(!_loc14_)
                                             {
                                                §§push(param1.§5L§);
                                                if(_loc13_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc13_)
                                                   {
                                                      _loc11_ = §§pop();
                                                      if(!_loc14_)
                                                      {
                                                         §§push(this.§9M§());
                                                         if(!(_loc14_ && param3))
                                                         {
                                                            addr312:
                                                            §§push(Number(§§pop()));
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               _loc12_ = §§pop();
                                                               addr321:
                                                               §§push(0.5);
                                                               if(_loc13_ || param1)
                                                               {
                                                                  §§push(§§pop() * _loc11_);
                                                               }
                                                            }
                                                            §§push(§§pop() < §§pop());
                                                            if(!(§§pop() < §§pop()))
                                                            {
                                                               addr334:
                                                               §§pop();
                                                               addr271:
                                                               addr335:
                                                               §§push(2);
                                                               if(_loc13_)
                                                               {
                                                                  addr277:
                                                                  §§push(§§pop() * _loc11_);
                                                                  §§push(_loc12_);
                                                                  if(!(_loc14_ && param2))
                                                                  {
                                                                     addr286:
                                                                     §§push(§§pop() < §§pop());
                                                                     if(_loc13_)
                                                                     {
                                                                        addr288:
                                                                        §§push(§§pop());
                                                                        if(!(_loc14_ && this))
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              addr298:
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§pop();
                                                                                 addr301:
                                                                                 §§push(_loc12_);
                                                                                 if(_loc13_ || param2)
                                                                                 {
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          addr239:
                                                                                          §§push(§§pop() < Number.MIN_VALUE);
                                                                                          if(!(_loc14_ && this))
                                                                                          {
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                addr251:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      this.§[B§ = 0;
                                                                                                      if(_loc13_ || param1)
                                                                                                      {
                                                                                                         addr265:
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               addr269:
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr271);
                                                                                                               }
                                                                                                               addr336:
                                                                                                               §§push(this.§[B§);
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr335);
                                                                                                         }
                                                                                                         §§goto(addr301);
                                                                                                      }
                                                                                                      addr340:
                                                                                                      (_loc10_ = _loc8_[0]).indexA = 0;
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         _loc10_.indexB = 0;
                                                                                                      }
                                                                                                      _loc6_ = param2.§]!A§(0);
                                                                                                      _loc7_ = param4.§]!A§(0);
                                                                                                      if(!(_loc14_ && param1))
                                                                                                      {
                                                                                                         _loc10_.§<j§ = b2Math.§&B§(param3,_loc6_);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc10_.§ a§ = b2Math.§&B§(param5,_loc7_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr386:
                                                                                                            §§goto(addr423);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr265);
                                                                                                }
                                                                                                §§goto(addr336);
                                                                                             }
                                                                                             §§goto(addr286);
                                                                                          }
                                                                                          §§goto(addr298);
                                                                                       }
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    §§goto(addr321);
                                                                                 }
                                                                                 §§goto(addr277);
                                                                              }
                                                                              §§goto(addr312);
                                                                           }
                                                                           §§goto(addr251);
                                                                        }
                                                                        §§goto(addr312);
                                                                     }
                                                                     §§goto(addr334);
                                                                  }
                                                                  §§goto(addr312);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr288);
                                                         }
                                                         §§goto(addr321);
                                                         addr225:
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                   §§goto(addr239);
                                                }
                                                §§goto(addr277);
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr269);
                                       }
                                       §§goto(addr339);
                                    }
                                    §§goto(addr277);
                                 }
                                 §§goto(addr269);
                              }
                              else
                              {
                                 (_loc10_ = _loc8_[_loc9_]).indexA = param1.indexA[_loc9_];
                                 if(_loc13_)
                                 {
                                    _loc10_.indexB = param1.indexB[_loc9_];
                                 }
                                 _loc6_ = param2.§]!A§(_loc10_.indexA);
                                 _loc7_ = param4.§]!A§(_loc10_.indexB);
                                 if(_loc13_)
                                 {
                                    _loc10_.§<j§ = b2Math.§&B§(param3,_loc6_);
                                    while(true)
                                    {
                                       _loc10_.§ a§ = b2Math.§&B§(param5,_loc7_);
                                       loop2:
                                       while(_loc13_)
                                       {
                                          _loc10_.§+!!§ = b2Math.§?d§(_loc10_.§ a§,_loc10_.§<j§);
                                          while(true)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                _loc10_.a = 0;
                                                do
                                                {
                                                   _loc9_++;
                                                }
                                                while(_loc14_ && param2);
                                                
                                                if(!(_loc13_ || this))
                                                {
                                                   break;
                                                }
                                                if(_loc13_)
                                                {
                                                   while(false)
                                                   {
                                                      continue loop4;
                                                   }
                                                   continue loop0;
                                                   addr126:
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr126);
                              }
                           }
                           §§goto(addr339);
                        }
                        break;
                     }
                     addr339:
                     if(§§pop() == §§pop())
                     {
                        §§goto(addr340);
                     }
                     addr423:
                     while(true)
                     {
                        _loc10_.§+!!§ = b2Math.§?d§(_loc10_.§ a§,_loc10_.§<j§);
                        while(!_loc14_)
                        {
                           this.§[B§ = 1;
                           if(_loc13_)
                           {
                              continue loop8;
                           }
                        }
                        continue loop7;
                     }
                     return;
                     §§push(0);
                  }
                  §§goto(addr66);
               }
            }
            §§goto(addr54);
         }
         §§goto(addr66);
      }
      
      public function §3e§(param1:b2SimplexCache) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            param1.§5L§ = this.§9M§();
            if(!(_loc5_ && _loc3_))
            {
               addr34:
               param1.count = uint(this.§[B§);
            }
            var _loc2_:Vector.<b2SimplexVertex> = this.§3!S§;
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= this.§[B§)
               {
                  if(_loc4_)
                  {
                     if(_loc4_ || param1)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           break;
                        }
                        param1.indexB[_loc3_] = uint(_loc2_[_loc3_].indexB);
                        addr118:
                     }
                     _loc3_++;
                  }
                  continue;
               }
               param1.indexA[_loc3_] = uint(_loc2_[_loc3_].indexA);
               §§goto(addr118);
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function §`!S§() : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:b2Vec2 = null;
         var _loc2_:* = NaN;
         §§push(this.§[B§);
         if(!_loc5_)
         {
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(1);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_ || _loc2_)
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              addr143:
                              if(§§pop() === _loc3_)
                              {
                                 addr145:
                                 §§push(1);
                                 if(_loc4_ || _loc1_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                           else
                           {
                              addr139:
                           }
                        }
                        §§goto(addr145);
                     }
                     else
                     {
                        §§push(2);
                        if(_loc4_)
                        {
                           §§goto(addr143);
                        }
                     }
                     addr169:
                     loop4:
                     switch(§§pop())
                     {
                        case 0:
                           return this.m_v1.§+!!§.§<!#§();
                        case 1:
                           _loc1_ = b2Math.§?d§(this.m_v2.§+!!§,this.m_v1.§+!!§);
                           if(_loc4_)
                           {
                              §§push(b2Math.§2c§(_loc1_,this.m_v1.§+!!§.§<!#§()));
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    break loop4;
                                 }
                                 if(_loc5_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(§§pop() > 0)
                                 {
                                    §§goto(addr98);
                                 }
                                 else
                                 {
                                    §§goto(addr66);
                                 }
                              }
                           }
                           break;
                        default:
                           while(true)
                           {
                              b2Settings.b2Assert(false);
                              if(!_loc5_)
                              {
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    break;
                                 }
                                 if(!_loc5_)
                                 {
                                    return new b2Vec2();
                                 }
                              }
                              if(_loc5_)
                              {
                                 break loop4;
                              }
                              continue;
                              addr98:
                              return b2Math.§@!"§(1,_loc1_);
                           }
                           addr66:
                           return b2Math.§"!L§(_loc1_,1);
                     }
                     continue loop3;
                  }
                  §§goto(addr143);
               }
               §§goto(addr139);
            }
            §§goto(addr145);
         }
         §§goto(addr169);
      }
      
      public function §<k§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§[B§);
         if(_loc2_)
         {
            var _loc1_:* = §§pop();
            if(!(_loc3_ && _loc3_))
            {
               §§push(0);
               if(_loc2_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc2_)
                        {
                           addr202:
                           §§push(0);
                           if(_loc3_)
                           {
                              addr233:
                           }
                        }
                        else
                        {
                           addr225:
                           §§push(1);
                           if(!(_loc3_ && this))
                           {
                              §§goto(addr233);
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(_loc1_);
                           if(_loc2_)
                           {
                              addr217:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc2_ || this)
                                 {
                                    §§goto(addr225);
                                 }
                                 else
                                 {
                                    addr244:
                                    §§push(2);
                                    if(_loc2_)
                                    {
                                       addr262:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             b2Settings.b2Assert(false);
                                             return new b2Vec2();
                                          case 1:
                                             return this.m_v1.§+!!§;
                                          case 2:
                                             §§push(§§findproperty(b2Vec2));
                                             §§push(this.m_v1.a);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(this.m_v1);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§push(§§pop().§+!!§.x);
                                                   if(_loc2_ || this)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this.m_v2.a);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§push(this.m_v2);
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§push(§§pop().§+!!§);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr99:
                                                                        addr101:
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push(this.m_v1.a);
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                        }
                                                                        §§goto(addr149);
                                                                     }
                                                                     addr112:
                                                                     §§push(this.m_v1.§+!!§.y);
                                                                     if(_loc2_)
                                                                     {
                                                                        addr115:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           addr135:
                                                                           §§push(this.m_v2.a);
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              §§push(§§pop() * this.m_v2.§+!!§.y);
                                                                           }
                                                                        }
                                                                        §§goto(addr149);
                                                                     }
                                                                     addr149:
                                                                     return new §§pop().b2Vec2(§§pop(),§§pop());
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr115);
                                                               }
                                                               §§goto(addr112);
                                                            }
                                                            §§goto(addr135);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr99);
                                                }
                                                §§goto(addr101);
                                             }
                                             §§goto(addr99);
                                          default:
                                             b2Settings.b2Assert(false);
                                             return new b2Vec2();
                                       }
                                       addr262:
                                       addr257:
                                    }
                                    §§goto(addr262);
                                 }
                              }
                              else
                              {
                                 §§push(2);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(_loc1_);
                                 }
                                 §§goto(addr262);
                              }
                              §§goto(addr262);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr244);
                           }
                           else
                           {
                              §§push(3);
                           }
                        }
                        §§goto(addr257);
                     }
                     §§goto(addr262);
                  }
                  §§goto(addr217);
               }
               §§goto(addr262);
            }
            §§goto(addr202);
         }
         §§goto(addr262);
      }
      
      public function §'Y§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§[B§);
         if(_loc5_)
         {
            var _loc3_:* = §§pop();
            if(!(_loc4_ && param2))
            {
               §§push(0);
               if(!(_loc4_ && this))
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                           if(_loc4_)
                           {
                              addr493:
                           }
                        }
                        else
                        {
                           addr517:
                           §§push(3);
                           if(_loc4_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || param2)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(1);
                                    if(!(_loc4_ && this))
                                    {
                                       §§goto(addr493);
                                    }
                                    else
                                    {
                                       addr506:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr517);
                                 }
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       addr500:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(2);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr506);
                                             }
                                             else
                                             {
                                                addr515:
                                                §§push(_loc3_);
                                             }
                                             addr536:
                                             loop2:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   b2Settings.b2Assert(false);
                                                   break;
                                                   addr237:
                                                case 1:
                                                   param1.SetV(this.m_v1.§<j§);
                                                   param2.SetV(this.m_v1.§ a§);
                                                   break;
                                                   addr231:
                                                   addr222:
                                                case 2:
                                                   §§push(param1);
                                                   §§push(this.m_v1.a);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(this.m_v1.§<j§.x);
                                                      if(!_loc4_)
                                                      {
                                                         addr200:
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc4_)
                                                         {
                                                            §§push(this.m_v2.a);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() * this.m_v2.§<j§.x);
                                                            }
                                                         }
                                                         §§pop().x = §§pop();
                                                         loop0:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  §§push(param1);
                                                                  §§push(this.m_v1.a);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§push(this.m_v1.§<j§.y);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                           addr146:
                                                                           §§push(this.m_v2.a);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              addr156:
                                                                              §§push(§§pop() * this.m_v2.§<j§.y);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§pop().y = §§pop();
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(param2);
                                                                              §§push(this.m_v1.a);
                                                                              if(_loc5_ || param2)
                                                                              {
                                                                                 §§push(this.m_v1.§ a§.x);
                                                                                 if(!(_loc4_ && param2))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       addr91:
                                                                                       §§push(this.m_v2.a);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr96:
                                                                                          §§push(§§pop() * this.m_v2.§ a§.x);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                    §§pop().x = §§pop();
                                                                                    if(!(_loc4_ && param2))
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr346:
                                                                                    addr346:
                                                                                    §§push(param2);
                                                                                    §§push(param1);
                                                                                    §§push(this.m_v1.a);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(this.m_v1.§<j§.y);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(this.m_v2.a);
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                §§push(this.m_v2.§<j§);
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            addr415:
                                                                                                            §§push(this.m_v3.a);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr406:
                                                                                                               §§push(this.m_v3.§<j§.y);
                                                                                                            }
                                                                                                            _loc3_ = §§pop();
                                                                                                            §§pop().y = §§pop();
                                                                                                            §§pop().y = _loc3_;
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            addr429:
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         addr414:
                                                                                                         §§goto(addr415);
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      §§goto(addr406);
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§goto(addr414);
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§goto(addr415);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr406);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr415);
                                                                                    }
                                                                                    §§goto(addr414);
                                                                                 }
                                                                                 §§goto(addr96);
                                                                              }
                                                                              §§goto(addr91);
                                                                              addr55:
                                                                              §§pop().y = §§pop();
                                                                              if(!_loc5_)
                                                                              {
                                                                                 break loop2;
                                                                              }
                                                                              if(true)
                                                                              {
                                                                                 break loop2;
                                                                              }
                                                                           }
                                                                           break loop2;
                                                                        }
                                                                        §§goto(addr346);
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  §§goto(addr146);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr237);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr231);
                                                            }
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§goto(addr200);
                                                case 3:
                                                   §§push(param2);
                                                   §§push(param1);
                                                   §§push(this.m_v1.a);
                                                   if(!(_loc4_ && param2))
                                                   {
                                                      §§push(this.m_v1.§<j§.x);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_)
                                                         {
                                                            §§push(this.m_v2.a);
                                                            if(_loc5_ || param2)
                                                            {
                                                               addr281:
                                                               §§push(this.m_v2.§<j§);
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc5_ || param2)
                                                                     {
                                                                        addr307:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           addr315:
                                                                           §§push(this.m_v3.a);
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              addr329:
                                                                              §§push(§§pop() * this.m_v3.§<j§.x);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr332:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              _loc3_ = §§pop();
                                                                              §§pop().x = §§pop();
                                                                              §§pop().x = _loc3_;
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr346);
                                                                              }
                                                                              break;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                               }
                                                               §§goto(addr329);
                                                            }
                                                            §§goto(addr307);
                                                         }
                                                         §§goto(addr315);
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                   §§goto(addr315);
                                                default:
                                                   b2Settings.b2Assert(false);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr429);
                                                   }
                                             }
                                             return;
                                             addr535:
                                          }
                                          §§goto(addr517);
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(!(_loc4_ && param1))
                                          {
                                             §§goto(addr515);
                                          }
                                          §§goto(addr535);
                                       }
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr517);
                                    }
                                    else
                                    {
                                       §§push(4);
                                    }
                                 }
                              }
                           }
                           §§goto(addr500);
                        }
                     }
                     §§goto(addr535);
                  }
                  §§goto(addr500);
               }
               §§goto(addr515);
            }
            §§goto(addr517);
         }
         §§goto(addr536);
      }
      
      public function §9M§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§[B§);
         if(!(_loc3_ && _loc2_))
         {
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               §§push(0);
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(_loc2_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(_loc3_)
                           {
                              addr158:
                              §§push(_loc1_);
                              if(_loc2_ || _loc3_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       addr169:
                                       §§push(1);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr220:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                b2Settings.b2Assert(false);
                                                break;
                                             case 1:
                                                §§goto(addr112);
                                             case 2:
                                                §§goto(addr91);
                                             case 3:
                                                addr75:
                                                §§push(b2Math.§2c§(b2Math.§?d§(this.m_v2.§+!!§,this.m_v1.§+!!§),b2Math.§?d§(this.m_v3.§+!!§,this.m_v1.§+!!§)));
                                                if(_loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             default:
                                                b2Settings.b2Assert(false);
                                                §§push(0);
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr112:
                                                      0;
                                                      return 0;
                                                   }
                                                   addr91:
                                                   return b2Math.§?d§(this.m_v1.§+!!§,this.m_v2.§+!!§).§8!%§();
                                                }
                                                §§goto(addr75);
                                          }
                                          return §§pop();
                                          addr219:
                                       }
                                    }
                                    else
                                    {
                                       addr192:
                                       §§push(2);
                                       if(!_loc2_)
                                       {
                                       }
                                    }
                                    §§goto(addr219);
                                 }
                                 else
                                 {
                                    §§push(2);
                                    if(_loc2_)
                                    {
                                       addr181:
                                       §§push(_loc1_);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr189:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr192);
                                             }
                                             else
                                             {
                                                addr201:
                                                §§push(3);
                                                if(!_loc2_)
                                                {
                                                }
                                                §§goto(addr219);
                                             }
                                          }
                                          else
                                          {
                                             §§push(3);
                                             if(!_loc3_)
                                             {
                                                addr200:
                                                if(§§pop() === _loc1_)
                                                {
                                                   §§goto(addr201);
                                                }
                                                else
                                                {
                                                   §§goto(addr219);
                                                   §§push(4);
                                                }
                                                §§goto(addr219);
                                             }
                                          }
                                       }
                                       §§goto(addr200);
                                    }
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr169);
                     }
                     else
                     {
                        §§push(1);
                        if(_loc2_)
                        {
                           §§goto(addr158);
                        }
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr200);
               }
               §§goto(addr158);
            }
            §§goto(addr192);
         }
         §§goto(addr220);
      }
      
      public function Solve2() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:b2Vec2 = this.m_v1.§+!!§;
         var _loc2_:b2Vec2 = this.m_v2.§+!!§;
         var _loc3_:b2Vec2 = b2Math.§?d§(_loc2_,_loc1_);
         §§push(_loc1_.x);
         if(_loc8_ || _loc1_)
         {
            §§push(_loc3_.x);
            if(_loc8_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc7_ && _loc2_))
               {
                  §§push(_loc1_.y);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * _loc3_.y);
                     if(_loc7_ && this)
                     {
                     }
                     addr81:
                     var _loc4_:* = §§pop();
                     if(!(_loc7_ && this))
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc8_ || _loc2_)
                              {
                                 this.m_v1.a = 1;
                                 if(_loc8_ || _loc2_)
                                 {
                                    this.§[B§ = 1;
                                    if(!_loc8_)
                                    {
                                       addr117:
                                       §§push(_loc2_.x);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(_loc3_.x);
                                          if(!_loc7_)
                                          {
                                             addr130:
                                             §§push(§§pop() * §§pop());
                                             if(_loc8_)
                                             {
                                                §§push(_loc2_.y);
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   §§push(§§pop() * _loc3_.y);
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc8_ || _loc2_)
                                                      {
                                                      }
                                                      addr172:
                                                      var _loc5_:*;
                                                      §§push(_loc5_ = §§pop());
                                                      if(_loc8_)
                                                      {
                                                         if(§§pop() <= 0)
                                                         {
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               this.m_v2.a = 1;
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  this.§[B§ = 1;
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr214:
                                                               }
                                                               else if(true)
                                                               {
                                                                  addr215:
                                                                  §§push(1);
                                                                  §§push(_loc5_);
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     §§push(§§pop() + _loc4_);
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     addr234:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc6_:* = §§pop();
                                                                  if(_loc8_ || _loc2_)
                                                                  {
                                                                     §§push(this.m_v1);
                                                                     §§push(_loc5_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop() * _loc6_);
                                                                     }
                                                                     §§pop().a = §§pop();
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.m_v2);
                                                                     §§push(_loc4_);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(§§pop() * _loc6_);
                                                                     }
                                                                     §§pop().a = §§pop();
                                                                     while(!_loc7_)
                                                                     {
                                                                        this.§[B§ = 2;
                                                                        if(_loc8_)
                                                                        {
                                                                           return;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  this.m_v1.Set(this.m_v2);
                                                                  if(!_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                }
                                             }
                                             §§goto(addr172);
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr172);
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr172);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc8_ || _loc1_)
                  {
                     §§push(-§§pop());
                     if(_loc8_)
                     {
                        addr80:
                        §§push(Number(§§pop()));
                        §§push(Number(§§pop()));
                     }
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr81);
         }
         §§goto(addr80);
      }
      
      public function Solve3() : void
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:Number = NaN;
         var _loc1_:b2Vec2 = this.m_v1.§+!!§;
         var _loc2_:b2Vec2 = this.m_v2.§+!!§;
         var _loc3_:b2Vec2 = this.m_v3.§+!!§;
         var _loc4_:b2Vec2 = b2Math.§?d§(_loc2_,_loc1_);
         §§push(b2Math.§9-§(_loc1_,_loc4_));
         if(!_loc28_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(b2Math.§9-§(_loc2_,_loc4_));
         if(!(_loc28_ && _loc3_))
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
         if(!_loc28_)
         {
            §§push(-§§pop());
            if(_loc27_ || _loc1_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         var _loc9_:b2Vec2 = b2Math.§?d§(_loc3_,_loc1_);
         §§push(b2Math.§9-§(_loc1_,_loc9_));
         if(!_loc28_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(b2Math.§9-§(_loc3_,_loc9_));
         if(!(_loc28_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:*;
         §§push(_loc11_ = §§pop());
         if(!(_loc28_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc10_);
         if(!_loc28_)
         {
            §§push(-§§pop());
            if(!(_loc28_ && this))
            {
               addr130:
               §§push(Number(§§pop()));
            }
            var _loc13_:* = §§pop();
            var _loc14_:b2Vec2 = b2Math.§?d§(_loc3_,_loc2_);
            §§push(b2Math.§9-§(_loc2_,_loc14_));
            if(_loc27_)
            {
               §§push(Number(§§pop()));
            }
            var _loc15_:* = §§pop();
            §§push(b2Math.§9-§(_loc3_,_loc14_));
            if(_loc27_ || _loc3_)
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
               if(!_loc28_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc18_:* = §§pop();
            §§push(b2Math.§2c§(_loc4_,_loc9_));
            if(_loc27_ || _loc1_)
            {
               §§push(Number(§§pop()));
            }
            var _loc19_:*;
            §§push(_loc19_ = §§pop());
            if(!_loc28_)
            {
               §§push(§§pop() * b2Math.§2c§(_loc2_,_loc3_));
               if(_loc27_)
               {
                  addr200:
                  §§push(Number(§§pop()));
               }
               var _loc20_:* = §§pop();
               §§push(_loc19_);
               if(!_loc28_)
               {
                  §§push(§§pop() * b2Math.§2c§(_loc3_,_loc1_));
                  if(_loc27_ || this)
                  {
                     addr217:
                     §§push(Number(§§pop()));
                  }
                  var _loc21_:* = §§pop();
                  §§push(_loc19_);
                  if(_loc27_ || this)
                  {
                     §§push(§§pop() * b2Math.§2c§(_loc1_,_loc2_));
                     if(_loc27_)
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
                           while(true)
                           {
                              §§push(§§pop() <= §§pop());
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
                                          addr1168:
                                          while(true)
                                          {
                                             §§push(_loc13_);
                                             addr1153:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr1154:
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                }
                                             }
                                          }
                                       }
                                       addr1167:
                                    }
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop12:
                                                   while(_loc27_)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      loop13:
                                                      for(; _loc27_; if(_loc28_ && this)
                                                      {
                                                         continue;
                                                      },§§goto(addr764))
                                                      {
                                                         §§push(§§pop());
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
                                                                        addr1118:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() > §§pop());
                                                                        }
                                                                        while(_loc27_ || _loc1_)
                                                                        {
                                                                           §§push(0);
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc28_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc27_ || _loc1_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop() <= §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    loop33:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          §§pop();
                                                                                          loop34:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(!(_loc27_ || _loc1_))
                                                                                             {
                                                                                                break;
                                                                                                addr1028:
                                                                                             }
                                                                                             §§push(0);
                                                                                             while(_loc27_)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc28_)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   loop37:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      loop38:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc27_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        addr1157:
                                                                                                                        §§push(this.m_v1);
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(_loc21_);
                                                                                                                     loop41:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        addr988:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                           addr989:
                                                                                                                           while(!_loc28_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr993:
                                                                                                                                    §§push(1);
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc12_);
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             addr1002:
                                                                                                                                             §§push(§§pop() + _loc13_);
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                if(!_loc28_)
                                                                                                                                                {
                                                                                                                                                   addr1009:
                                                                                                                                                   §§push(Number(§§pop() / §§pop()));
                                                                                                                                                   if(_loc27_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      _loc25_ = §§pop();
                                                                                                                                                      addr962:
                                                                                                                                                      §§push(this.m_v1);
                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                      if(_loc27_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc25_);
                                                                                                                                                         if(_loc27_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            addr979:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().a = §§pop();
                                                                                                                                                                  addr957:
                                                                                                                                                                  this.m_v3.a = _loc13_ * _loc25_;
                                                                                                                                                                  this.§[B§ = 2;
                                                                                                                                                                  addr943:
                                                                                                                                                                  if(!(_loc28_ && _loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     addr935:
                                                                                                                                                                     this.m_v2.Set(this.m_v3);
                                                                                                                                                                     return;
                                                                                                                                                                     addr938:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr1064:
                                                                                                                                                                  }
                                                                                                                                                                  addr1079:
                                                                                                                                                                  if(_loc28_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     addr1102:
                                                                                                                                                                     addr1101:
                                                                                                                                                                     §§push(1);
                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1107:
                                                                                                                                                                        §§push(§§pop() / (§§pop() + _loc8_));
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop0;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc24_ = §§pop();
                                                                                                                                                                           addr1093:
                                                                                                                                                                           this.m_v1.a = _loc7_ * _loc24_;
                                                                                                                                                                           §§push(this.m_v2);
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                           if(!(_loc28_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              addr1077:
                                                                                                                                                                              §§push(§§pop() * _loc24_);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().a = §§pop();
                                                                                                                                                                           §§goto(addr1079);
                                                                                                                                                                           addr1091:
                                                                                                                                                                           addr1092:
                                                                                                                                                                           addr1090:
                                                                                                                                                                           addr1094:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1153);
                                                                                                                                                                     }
                                                                                                                                                                     addr1184:
                                                                                                                                                                     addr1186:
                                                                                                                                                                     addr1185:
                                                                                                                                                                     §§push(§§pop() / (§§pop() + _loc22_));
                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop34;
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
                                                                                                                                                                        §§push(this.m_v2);
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        if(!(_loc28_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * _loc23_);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().a = §§pop();
                                                                                                                                                                        addr1236:
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.m_v3);
                                                                                                                                                                           §§push(_loc22_);
                                                                                                                                                                           if(_loc27_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * _loc23_);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().a = §§pop();
                                                                                                                                                                           addr1219:
                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              this.§[B§ = 3;
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1219);
                                                                                                                                                                              }
                                                                                                                                                                              return;
                                                                                                                                                                              addr1221:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1236);
                                                                                                                                                                        }
                                                                                                                                                                        addr1257:
                                                                                                                                                                        §§goto(addr1257);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1221);
                                                                                                                                                                  }
                                                                                                                                                                  this.§[B§ = 2;
                                                                                                                                                                  return;
                                                                                                                                                                  addr958:
                                                                                                                                                                  addr984:
                                                                                                                                                                  addr955:
                                                                                                                                                                  addr956:
                                                                                                                                                                  addr954:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1091);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1093);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1092);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr979);
                                                                                                                                                      addr1017:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr1049:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         addr1050:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                            addr1051:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               addr1052:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop33;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop37;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr1049:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1107);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr1173:
                                                                                                                                                §§push(_loc21_);
                                                                                                                                                if(_loc27_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr1181:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1184);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1186);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1185);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1184);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1102);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr1170:
                                                                                                                                       §§push(_loc20_);
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1173);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1102);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       continue loop41;
                                                                                                                                       addr931:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr1100:
                                                                                                                           while(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr1049);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1101);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1064);
                                                                                                               }
                                                                                                               §§pop().a = 1;
                                                                                                               §§goto(addr1161);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr991);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc28_ && this))
                                                                                                            {
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr816);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr766:
                                                                                                                           if(_loc27_ || this)
                                                                                                                           {
                                                                                                                              addr775:
                                                                                                                              this.m_v3.a = 1;
                                                                                                                              §§goto(addr777);
                                                                                                                           }
                                                                                                                           §§goto(addr984);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr633);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr764:
                                                                                                                  }
                                                                                                                  §§goto(addr1009);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop38;
                                                                                                            §§goto(addr594);
                                                                                                         }
                                                                                                         §§goto(addr1052);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop16;
                                                                                             }
                                                                                             continue loop12;
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc27_ || _loc3_)
                                                                                                {
                                                                                                   if(!(_loc28_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(this.m_v2);
                                                                                                      if(_loc27_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(_loc17_);
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            §§push(_loc26_);
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               addr392:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc28_ && this))
                                                                                                               {
                                                                                                                  §§pop().a = §§pop();
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        if(_loc27_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(!_loc28_)
                                                                                                                           {
                                                                                                                              §§push(this.m_v3);
                                                                                                                              if(!_loc28_)
                                                                                                                              {
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc18_);
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc28_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc26_);
                                                                                                                                          if(_loc27_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr364:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                §§pop().a = §§pop();
                                                                                                                                                if(_loc27_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr720);
                                                                                                                                             }
                                                                                                                                             §§goto(addr955);
                                                                                                                                          }
                                                                                                                                          §§goto(addr956);
                                                                                                                                       }
                                                                                                                                       §§goto(addr957);
                                                                                                                                    }
                                                                                                                                    §§goto(addr364);
                                                                                                                                 }
                                                                                                                                 §§goto(addr954);
                                                                                                                              }
                                                                                                                              §§goto(addr775);
                                                                                                                           }
                                                                                                                           §§goto(addr1130);
                                                                                                                        }
                                                                                                                        §§goto(addr845);
                                                                                                                     }
                                                                                                                     §§goto(addr766);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr446);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1093);
                                                                                                            }
                                                                                                            §§goto(addr1077);
                                                                                                         }
                                                                                                         §§goto(addr392);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   break loop33;
                                                                                                }
                                                                                                continue loop34;
                                                                                             }
                                                                                             §§goto(addr877);
                                                                                          }
                                                                                          §§goto(addr1102);
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr1167);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1168);
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              §§goto(addr1028);
                                                                              while(_loc27_ || _loc3_)
                                                                              {
                                                                                 if(!(_loc28_ && _loc1_))
                                                                                 {
                                                                                    if(_loc27_ || _loc2_)
                                                                                    {
                                                                                       §§goto(addr662);
                                                                                       §§push(§§pop() > §§pop());
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr1118);
                                                                                    }
                                                                                    §§goto(addr1120);
                                                                                 }
                                                                                 §§goto(addr988);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr1099);
                                                                           }
                                                                           if(_loc28_ && _loc1_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr527);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr616);
                                                            }
                                                         }
                                                      }
                                                      continue loop9;
                                                   }
                                                   §§goto(addr1154);
                                                }
                                             }
                                          }
                                          §§goto(addr1157);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr699);
                  }
                  §§goto(addr234);
               }
               §§goto(addr217);
            }
            §§goto(addr200);
         }
         §§goto(addr130);
      }
   }
}
