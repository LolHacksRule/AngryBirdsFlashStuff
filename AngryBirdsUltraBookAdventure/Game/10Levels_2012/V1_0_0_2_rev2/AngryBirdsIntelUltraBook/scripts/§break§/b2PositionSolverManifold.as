package §break§
{
   import §7!u§.*;
   import §72§.*;
   import §>H§.*;
   import §`w§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §!! §:b2Vec2;
      
      private static var §&k§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!! § = new b2Vec2();
         }
         do
         {
            §&k§ = new b2Vec2();
         }
         while(_loc1_ && b2PositionSolverManifold);
         
      }
      
      public var §'!L§:b2Vec2;
      
      public var §,!f§:Vector.<b2Vec2>;
      
      public var §7]§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            super();
            while(true)
            {
               this.§'!L§ = new b2Vec2();
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§7]§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                     do
                     {
                        this.§,!f§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                     }
                     while(_loc3_ && _loc3_);
                     
                     if(_loc2_ || _loc1_)
                     {
                        if(true)
                        {
                           var _loc1_:int = 0;
                           while(true)
                           {
                              if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                              {
                                 if(!(_loc2_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 this.§,!f§[_loc1_] = new b2Vec2();
                              }
                              _loc1_++;
                           }
                        }
                        continue;
                        return;
                     }
                     break;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr59);
         }
      }
      
      public function §%%§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:b2Mat22 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         if(!_loc18_)
         {
            b2Settings.b2Assert(param1.§'0§ > 0);
         }
         §§push(param1.type);
         if(_loc19_)
         {
            var _loc17_:* = §§pop();
            if(!_loc18_)
            {
               §§push(b2Manifold.§"^§);
               if(!(_loc18_ && param1))
               {
                  §§push(_loc17_);
                  if(!(_loc18_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc18_)
                        {
                           §§push(0);
                           if(!_loc19_)
                           {
                           }
                        }
                        else
                        {
                           addr1802:
                           §§push(1);
                           if(!(_loc18_ && this))
                           {
                              addr1820:
                           }
                           else
                           {
                              addr1840:
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Manifold.§+!M§);
                        if(!(_loc18_ && this))
                        {
                           §§push(_loc17_);
                           if(!_loc18_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc18_)
                                 {
                                    §§goto(addr1802);
                                 }
                                 else
                                 {
                                    addr1832:
                                    §§push(2);
                                    if(!(_loc18_ && _loc3_))
                                    {
                                       §§goto(addr1840);
                                    }
                                    addr1846:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc5_ = param1.§3x§.m_xf.R;
                                          _loc6_ = param1.localPoint;
                                          if(_loc19_)
                                          {
                                             §§push(param1.§3x§);
                                             if(_loc19_)
                                             {
                                                §§push(§§pop().m_xf);
                                                if(_loc19_ || _loc3_)
                                                {
                                                   §§push(§§pop().position);
                                                   if(_loc19_ || _loc2_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc19_)
                                                      {
                                                         §§push(_loc5_.col1);
                                                         if(!(_loc18_ && _loc2_))
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc18_)
                                                            {
                                                               §§push(_loc6_.x);
                                                               if(!(_loc18_ && this))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     §§push(_loc5_.col2);
                                                                     if(!(_loc18_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(_loc6_.y);
                                                                           if(!(_loc18_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc18_)
                                                                              {
                                                                                 addr147:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc19_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc18_ && _loc3_))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc18_ && _loc3_))
                                                                                       {
                                                                                          addr171:
                                                                                          _loc9_ = §§pop();
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             addr176:
                                                                                             §§push(param1.§3x§.m_xf);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                addr180:
                                                                                                §§push(§§pop().position.y);
                                                                                                if(_loc19_ || param1)
                                                                                                {
                                                                                                   addr190:
                                                                                                   §§push(_loc5_.col1.y);
                                                                                                   if(_loc19_ || this)
                                                                                                   {
                                                                                                      addr198:
                                                                                                      §§push(_loc6_.x);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         addr219:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            addr207:
                                                                                                            §§push(_loc5_.col2.y);
                                                                                                            if(!(_loc18_ && _loc3_))
                                                                                                            {
                                                                                                               addr217:
                                                                                                               §§push(§§pop() * _loc6_.y);
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            addr223:
                                                                                                            _loc10_ = §§pop();
                                                                                                            _loc5_ = param1.§8P§.m_xf.R;
                                                                                                            _loc6_ = param1.§;!K§[0].localPoint;
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§push(param1.§8P§);
                                                                                                               loop0:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().m_xf);
                                                                                                                  addr687:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().position);
                                                                                                                     addr688:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr689:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.col1);
                                                                                                                           addr691:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              addr692:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                 addr694:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    addr695:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_.col2);
                                                                                                                                       addr697:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          addr698:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.y);
                                                                                                                                             addr700:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                addr701:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   addr702:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      addr703:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         addr704:
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
                                                                                                            §§goto(addr592);
                                                                                                            addr222:
                                                                                                         }
                                                                                                         §§goto(addr223);
                                                                                                      }
                                                                                                      §§goto(addr219);
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§goto(addr219);
                                                                                                }
                                                                                                §§goto(addr222);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr223);
                                                                                    }
                                                                                    §§goto(addr171);
                                                                                 }
                                                                              }
                                                                              §§goto(addr219);
                                                                           }
                                                                           §§goto(addr217);
                                                                        }
                                                                        §§goto(addr147);
                                                                     }
                                                                  }
                                                                  §§goto(addr207);
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr223);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr223);
                                       case 1:
                                          §§goto(addr711);
                                       case 2:
                                          _loc5_ = param1.§8P§.m_xf.R;
                                          _loc6_ = param1.§?Q§;
                                          §§push(param1.§3x§.m_xf);
                                          if(_loc19_ || this)
                                          {
                                             §§push(this.§'!L§);
                                             if(!_loc18_)
                                             {
                                                §§push(_loc5_.col1);
                                                if(_loc19_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc19_ || _loc3_)
                                                   {
                                                      §§push(_loc6_.x);
                                                      if(!(_loc18_ && this))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc18_)
                                                         {
                                                            §§push(_loc5_.col2);
                                                            if(_loc19_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc19_ || param1)
                                                               {
                                                                  §§push(_loc6_.y);
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc18_ && param1))
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           if(!_loc18_)
                                                                           {
                                                                              addr1314:
                                                                              §§push(this.§'!L§);
                                                                              §§push(_loc5_.col1.y);
                                                                              if(_loc19_)
                                                                              {
                                                                                 addr1317:
                                                                                 §§push(_loc6_.x);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr1324:
                                                                                       §§push(_loc5_.col2.y);
                                                                                       if(!(_loc18_ && this))
                                                                                       {
                                                                                          addr1334:
                                                                                          §§push(§§pop() * _loc6_.y);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1334);
                                                                              }
                                                                              §§goto(addr1324);
                                                                           }
                                                                           addr1339:
                                                                           _loc5_ = param1.§8P§.m_xf.R;
                                                                           _loc6_ = param1.localPoint;
                                                                           if(!(_loc18_ && this))
                                                                           {
                                                                              §§push(param1.§8P§);
                                                                              if(_loc19_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop().m_xf);
                                                                                 if(_loc19_ || param1)
                                                                                 {
                                                                                    §§push(§§pop().position);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          §§push(_loc5_.col1);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc19_ || _loc2_)
                                                                                             {
                                                                                                §§push(_loc6_.x);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      §§push(_loc5_.col2);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(!(_loc18_ && this))
                                                                                                         {
                                                                                                            §§push(_loc6_.y);
                                                                                                            if(!(_loc18_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc19_ || param1)
                                                                                                                  {
                                                                                                                     addr1430:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(!(_loc18_ && this))
                                                                                                                        {
                                                                                                                           addr1441:
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           if(!(_loc18_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr1451:
                                                                                                                              §§push(param1.§8P§.m_xf);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 addr1455:
                                                                                                                                 addr1454:
                                                                                                                                 §§push(§§pop().position.y);
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    addr1458:
                                                                                                                                    addr1460:
                                                                                                                                    §§push(_loc5_.col1.y);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       addr1463:
                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc19_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr1477:
                                                                                                                                             §§push(_loc5_.col2.y);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                addr1483:
                                                                                                                                                §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1483);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1483);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr1488:
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    _loc5_ = param1.§3x§.m_xf.R;
                                                                                                                                    if(_loc19_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                          if(!(_loc18_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc2_);
                                                                                                                                             }
                                                                                                                                             addr1702:
                                                                                                                                          }
                                                                                                                                          addr1753:
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       while(§§pop() < param1.§'0§)
                                                                                                                                       {
                                                                                                                                          _loc6_ = param1.§;!K§[_loc2_].localPoint;
                                                                                                                                          if(_loc19_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(param1.§3x§);
                                                                                                                                             loop75:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().m_xf);
                                                                                                                                                addr1666:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().position);
                                                                                                                                                   addr1667:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_.col1);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.x);
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_.col2);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1692:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_.y);
                                                                                                                                                                              addr1694:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1692:
                                                                                                                                                                        }
                                                                                                                                                                        addr1695:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           addr1696:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1700:
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                                                                    continue loop75;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1700:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1700);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr1689:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1696);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1692);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1696);
                                                                                                                                                         }
                                                                                                                                                         addr1677:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1700);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1579);
                                                                                                                                          §§goto(addr1702);
                                                                                                                                       }
                                                                                                                                       if(!(_loc18_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(this.§'!L§);
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§'!L§);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(_loc19_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(-1);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr1735:
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            addr1742:
                                                                                                                                                            §§push(this.§'!L§);
                                                                                                                                                            §§push(this.§'!L§.y);
                                                                                                                                                            if(_loc19_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr1751:
                                                                                                                                                               §§push(§§pop() * -1);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1753);
                                                                                                                                                      }
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      §§goto(addr1753);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1751);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1735);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1742);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1753);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1488);
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1488);
                                                                                                                        }
                                                                                                                        §§goto(addr1458);
                                                                                                                     }
                                                                                                                     §§goto(addr1441);
                                                                                                                  }
                                                                                                                  §§goto(addr1463);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1483);
                                                                                                      }
                                                                                                      §§goto(addr1477);
                                                                                                   }
                                                                                                   §§goto(addr1430);
                                                                                                }
                                                                                                §§goto(addr1483);
                                                                                             }
                                                                                             §§goto(addr1463);
                                                                                          }
                                                                                          §§goto(addr1460);
                                                                                       }
                                                                                       §§goto(addr1458);
                                                                                    }
                                                                                    §§goto(addr1455);
                                                                                 }
                                                                                 §§goto(addr1454);
                                                                              }
                                                                              §§goto(addr1451);
                                                                           }
                                                                           §§goto(addr1458);
                                                                        }
                                                                        §§pop().y = §§pop();
                                                                        §§goto(addr1339);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr1334);
                                                            }
                                                         }
                                                         §§goto(addr1324);
                                                      }
                                                      §§goto(addr1334);
                                                   }
                                                   §§goto(addr1317);
                                                }
                                             }
                                             §§goto(addr1314);
                                          }
                                          §§goto(addr1339);
                                    }
                                    return;
                                    addr1845:
                                 }
                              }
                              else
                              {
                                 §§push(b2Manifold.§6!X§);
                                 if(_loc19_ || param1)
                                 {
                                 }
                              }
                              §§goto(addr1845);
                           }
                           addr1831:
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr1832);
                           }
                           else
                           {
                              §§goto(addr1832);
                              §§push(3);
                           }
                           §§goto(addr1832);
                        }
                        §§goto(addr1831);
                        §§push(_loc17_);
                     }
                     §§goto(addr1832);
                  }
                  §§goto(addr1831);
               }
               §§goto(addr1820);
            }
            §§goto(addr1802);
         }
         §§goto(addr1846);
      }
   }
}
