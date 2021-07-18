package §-"&§
{
   import §'F§.*;
   import §3!`§.*;
   import §6Z§.*;
   import §^9§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §#T§:b2Vec2;
      
      private static var §]!i§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2PositionSolverManifold))
         {
            §#T§ = new b2Vec2();
         }
         do
         {
            §]!i§ = new b2Vec2();
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public var §[!l§:b2Vec2;
      
      public var §"A§:Vector.<b2Vec2>;
      
      public var §9",§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§[!l§ = new b2Vec2();
            loop1:
            while(true)
            {
               addr37:
               addr80:
               while(true)
               {
                  this.§9",§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                  continue loop1;
               }
               var _loc1_:int = 0;
               addr83:
               if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
               {
                  if(_loc2_ || _loc1_)
                  {
                     if(_loc3_ && _loc1_)
                     {
                        _loc1_++;
                        addr107:
                        §§goto(addr83);
                        addr126:
                     }
                     return;
                  }
                  §§goto(addr107);
               }
               this.§"A§[_loc1_] = new b2Vec2();
               §§goto(addr126);
            }
            if(_loc3_ && this)
            {
               continue;
            }
            this.§"A§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
            if(_loc2_ || _loc3_)
            {
               if(false)
               {
                  §§goto(addr37);
               }
               §§goto(addr80);
            }
            §§goto(addr46);
         }
      }
      
      public function §",§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:b2Mat22 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         if(!_loc19_)
         {
            b2Settings.b2Assert(param1.§>!%§ > 0);
         }
         §§push(param1.type);
         if(_loc18_)
         {
            var _loc17_:* = §§pop();
            if(_loc18_)
            {
               §§push(b2Manifold.§1K§);
               if(!_loc19_)
               {
                  §§push(_loc17_);
                  if(!(_loc19_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc19_ && param1))
                        {
                           §§push(0);
                           if(!_loc18_)
                           {
                              addr1860:
                              §§push(_loc17_);
                              if(!_loc19_)
                              {
                                 addr1863:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc19_)
                                    {
                                       addr1866:
                                       §§push(1);
                                       if(_loc18_)
                                       {
                                          addr1900:
                                          loop91:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc5_ = param1.§'!n§.m_xf.R;
                                                _loc6_ = param1.localPoint;
                                                if(_loc18_)
                                                {
                                                   §§push(param1.§'!n§);
                                                   if(_loc18_ || this)
                                                   {
                                                      §§push(§§pop().m_xf);
                                                      if(_loc18_)
                                                      {
                                                         §§push(§§pop().position);
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc18_ || _loc2_)
                                                            {
                                                               §§push(_loc5_.col1);
                                                               if(_loc18_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc18_ || param1)
                                                                  {
                                                                     §§push(_loc6_.x);
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc19_ && this))
                                                                        {
                                                                           addr127:
                                                                           §§push(_loc5_.col2);
                                                                           if(_loc18_ || param1)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(!(_loc19_ && param1))
                                                                              {
                                                                                 §§push(_loc6_.y);
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          addr159:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             addr162:
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                _loc9_ = §§pop();
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   addr170:
                                                                                                   §§push(param1.§'!n§.m_xf);
                                                                                                   if(_loc18_ || param1)
                                                                                                   {
                                                                                                      addr179:
                                                                                                      §§push(§§pop().position.y);
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         addr182:
                                                                                                         §§push(_loc5_.col1.y);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(_loc6_.x);
                                                                                                            if(_loc18_ || _loc3_)
                                                                                                            {
                                                                                                               addr218:
                                                                                                               addr196:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc19_ && param1))
                                                                                                               {
                                                                                                                  addr206:
                                                                                                                  §§push(_loc5_.col2.y);
                                                                                                                  if(!(_loc19_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr216:
                                                                                                                     §§push(§§pop() * _loc6_.y);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc19_ && _loc2_))
                                                                                                               {
                                                                                                                  addr226:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               _loc10_ = §§pop();
                                                                                                               _loc5_ = param1.§ 5§.m_xf.R;
                                                                                                               _loc6_ = param1.§=i§[0].localPoint;
                                                                                                               if(_loc18_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(param1.§ 5§);
                                                                                                                  loop0:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().m_xf);
                                                                                                                     addr701:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().position);
                                                                                                                        addr702:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           addr703:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_.col1);
                                                                                                                              addr705:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 addr706:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                    addr708:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr709:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.col2);
                                                                                                                                          addr711:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             addr712:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                addr714:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   addr715:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      addr716:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         addr717:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr718:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc11_ = §§pop();
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr284);
                                                                                                            }
                                                                                                            §§goto(addr218);
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         §§goto(addr218);
                                                                                                      }
                                                                                                      §§goto(addr226);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr218);
                                                                                             }
                                                                                             §§goto(addr226);
                                                                                          }
                                                                                          §§goto(addr182);
                                                                                       }
                                                                                       §§goto(addr218);
                                                                                    }
                                                                                    §§goto(addr196);
                                                                                 }
                                                                              }
                                                                              §§goto(addr216);
                                                                           }
                                                                           §§goto(addr206);
                                                                        }
                                                                        §§goto(addr159);
                                                                     }
                                                                     §§goto(addr216);
                                                                  }
                                                                  §§goto(addr127);
                                                               }
                                                               §§goto(addr182);
                                                            }
                                                            §§goto(addr162);
                                                         }
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                }
                                                §§goto(addr170);
                                             case 1:
                                                §§goto(addr725);
                                             case 2:
                                                _loc5_ = param1.§ 5§.m_xf.R;
                                                _loc6_ = param1.§ !8§;
                                                §§push(param1.§'!n§.m_xf);
                                                if(!_loc19_)
                                                {
                                                   §§push(this.§[!l§);
                                                   if(_loc18_)
                                                   {
                                                      §§push(_loc5_.col1);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc18_ || _loc2_)
                                                         {
                                                            §§push(_loc6_.x);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc18_)
                                                               {
                                                                  addr1284:
                                                                  §§push(_loc5_.col2);
                                                                  if(!(_loc19_ && this))
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc18_ || this)
                                                                     {
                                                                        §§push(_loc6_.y);
                                                                        if(!(_loc19_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc18_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 if(!(_loc19_ && _loc2_))
                                                                                 {
                                                                                    addr1333:
                                                                                    §§push(this.§[!l§);
                                                                                    §§push(_loc5_.col1.y);
                                                                                    if(!(_loc19_ && _loc2_))
                                                                                    {
                                                                                       addr1341:
                                                                                       §§push(_loc6_.x);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          addr1345:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc18_ || _loc3_)
                                                                                          {
                                                                                             addr1355:
                                                                                             §§push(_loc5_.col2.y);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                addr1361:
                                                                                                §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                             }
                                                                                             §§goto(addr1361);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1361);
                                                                                    }
                                                                                 }
                                                                                 addr1363:
                                                                                 _loc5_ = param1.§ 5§.m_xf.R;
                                                                                 _loc6_ = param1.localPoint;
                                                                                 if(!(_loc19_ && param1))
                                                                                 {
                                                                                    §§push(param1.§ 5§);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       §§push(§§pop().m_xf);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(§§pop().position);
                                                                                          if(_loc18_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(_loc5_.col1);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(_loc6_.x);
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc5_.col2);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(_loc6_.y);
                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        addr1436:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr1502:
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              _loc5_ = param1.§'!n§.m_xf.R;
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                 {
                                                                                                                                    _loc2_ = §§pop();
                                                                                                                                    if(_loc18_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       loop71:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc2_);
                                                                                                                                          addr1762:
                                                                                                                                          while(§§pop() < param1.§>!%§)
                                                                                                                                          {
                                                                                                                                             _loc6_ = param1.§=i§[_loc2_].localPoint;
                                                                                                                                             if(_loc18_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§'!n§);
                                                                                                                                                loop73:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().m_xf);
                                                                                                                                                   addr1719:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().position);
                                                                                                                                                      addr1720:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(!(_loc19_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_.col1);
                                                                                                                                                            loop76:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               if(_loc18_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.x);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1743:
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_.col2);
                                                                                                                                                                        addr1745:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr1746:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_.y);
                                                                                                                                                                              addr1748:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr1743:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     addr1750:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc18_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           addr1758:
                                                                                                                                                                        }
                                                                                                                                                                        addr1759:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc3_ = §§pop();
                                                                                                                                                                           continue loop73;
                                                                                                                                                                           addr1633:
                                                                                                                                                                           if(_loc18_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop76;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1749:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1743);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1758);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1572);
                                                                                                                                             continue loop71;
                                                                                                                                          }
                                                                                                                                          if(_loc18_ || this)
                                                                                                                                          {
                                                                                                                                             addr1772:
                                                                                                                                             §§push(this.§[!l§);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§[!l§);
                                                                                                                                                if(!(_loc19_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(-1);
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            addr1794:
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            addr1817:
                                                                                                                                                            if(!(_loc19_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr1806:
                                                                                                                                                               §§push(this.§[!l§);
                                                                                                                                                               §§push(this.§[!l§.y);
                                                                                                                                                               if(_loc18_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr1815:
                                                                                                                                                                  §§push(§§pop() * -1);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            break loop91;
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         §§goto(addr1817);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1815);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1794);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1806);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1794);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1762);
                                                                                                                              }
                                                                                                                              §§goto(addr1772);
                                                                                                                              addr1501:
                                                                                                                           }
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr1455:
                                                                                                                              §§push(param1.§ 5§.m_xf);
                                                                                                                              if(!(_loc19_ && param1))
                                                                                                                              {
                                                                                                                                 addr1464:
                                                                                                                                 §§push(§§pop().position.y);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    addr1469:
                                                                                                                                    §§push(_loc5_.col1.y);
                                                                                                                                    if(!(_loc19_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                       if(_loc18_ || this)
                                                                                                                                       {
                                                                                                                                          addr1498:
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             addr1489:
                                                                                                                                             §§push(_loc5_.col2.y);
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                addr1496:
                                                                                                                                                §§push(§§pop() * _loc6_.y);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1501);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1502);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1498);
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr1489);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1502);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1498);
                                                                                                                  }
                                                                                                                  §§goto(addr1496);
                                                                                                               }
                                                                                                               §§goto(addr1436);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1489);
                                                                                                      }
                                                                                                      §§goto(addr1436);
                                                                                                   }
                                                                                                   §§goto(addr1498);
                                                                                                }
                                                                                                §§goto(addr1469);
                                                                                             }
                                                                                             §§goto(addr1502);
                                                                                          }
                                                                                          §§goto(addr1464);
                                                                                       }
                                                                                       §§goto(addr1502);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1455);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              §§goto(addr1363);
                                                                           }
                                                                           §§goto(addr1345);
                                                                        }
                                                                     }
                                                                     §§goto(addr1361);
                                                                  }
                                                                  §§goto(addr1355);
                                                               }
                                                               §§goto(addr1341);
                                                            }
                                                            §§goto(addr1361);
                                                         }
                                                         §§goto(addr1284);
                                                      }
                                                   }
                                                   §§goto(addr1333);
                                                }
                                                §§goto(addr1363);
                                          }
                                          return;
                                          addr1899:
                                       }
                                    }
                                    else
                                    {
                                       addr1881:
                                       §§push(2);
                                       if(_loc19_)
                                       {
                                       }
                                    }
                                    §§goto(addr1899);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§8!p§);
                                    if(_loc18_ || _loc3_)
                                    {
                                       addr1880:
                                       if(§§pop() === _loc17_)
                                       {
                                          §§goto(addr1881);
                                       }
                                       else
                                       {
                                          §§goto(addr1899);
                                          §§push(3);
                                       }
                                       §§goto(addr1899);
                                    }
                                 }
                                 §§goto(addr1899);
                              }
                              §§goto(addr1880);
                           }
                           §§goto(addr1899);
                        }
                        §§goto(addr1881);
                     }
                     else
                     {
                        §§push(b2Manifold.§3!u§);
                        if(!(_loc19_ && _loc2_))
                        {
                           §§goto(addr1860);
                        }
                        §§goto(addr1880);
                     }
                  }
                  §§goto(addr1863);
               }
               §§goto(addr1880);
            }
            §§goto(addr1866);
         }
         §§goto(addr1900);
      }
   }
}
