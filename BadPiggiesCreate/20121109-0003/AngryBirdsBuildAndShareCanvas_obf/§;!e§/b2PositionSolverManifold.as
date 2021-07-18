package §;!e§
{
   import §"J§.*;
   import §%4§.*;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §`!h§:b2Vec2;
      
      private static var §4g§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!h§ = new b2Vec2();
         }
         do
         {
            §4g§ = new b2Vec2();
         }
         while(!_loc2_);
         
      }
      
      public var §&!5§:b2Vec2;
      
      public var §5S§:Vector.<b2Vec2>;
      
      public var §6#§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            super();
            while(true)
            {
               this.§&!5§ = new b2Vec2();
               loop3:
               while(!(_loc2_ && _loc2_))
               {
                  this.§5S§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  addr41:
                  if(!(_loc2_ && _loc3_))
                  {
                     addr48:
                     if(false)
                     {
                        while(true)
                        {
                           this.§6#§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                           continue loop3;
                           §§goto(addr48);
                        }
                        addr86:
                        var _loc1_:int = 0;
                        addr61:
                     }
                     else
                     {
                        §§goto(addr86);
                     }
                     while(true)
                     {
                        if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                        {
                           if(!_loc3_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           this.§5S§[_loc1_] = new b2Vec2();
                        }
                        _loc1_++;
                     }
                     return;
                  }
                  addr82:
                  while(true)
                  {
                     §§goto(addr41);
                  }
                  §§goto(addr61);
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §&!§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:b2Mat22 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         if(_loc19_)
         {
            b2Settings.b2Assert(param1.§,!%§ > 0);
         }
         §§push(param1.type);
         if(_loc19_ || param1)
         {
            var _loc17_:* = §§pop();
            if(_loc19_ || _loc3_)
            {
               §§push(b2Manifold.§%"#§);
               if(!(_loc18_ && param1))
               {
                  §§push(_loc17_);
                  if(!_loc18_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc18_)
                        {
                           §§push(0);
                           if(!(_loc19_ || _loc3_))
                           {
                              addr1801:
                              §§push(_loc17_);
                              if(_loc19_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc18_)
                                    {
                                       addr1807:
                                       §§push(1);
                                       if(!(_loc18_ && _loc2_))
                                       {
                                          addr1851:
                                          loop94:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc5_ = param1.§ !T§.m_xf.R;
                                                _loc6_ = param1.localPoint;
                                                if(_loc19_ || _loc2_)
                                                {
                                                   §§push(param1.§ !T§);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(§§pop().m_xf);
                                                      if(!(_loc18_ && _loc2_))
                                                      {
                                                         §§push(§§pop().position);
                                                         if(!(_loc18_ && _loc3_))
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc19_ || _loc3_)
                                                            {
                                                               §§push(_loc5_.col1);
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(_loc6_.x);
                                                                     if(!(_loc18_ && param1))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc19_)
                                                                        {
                                                                           §§push(_loc5_.col2);
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(_loc6_.y);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr137:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc18_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc19_ || _loc3_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                _loc9_ = §§pop();
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   addr161:
                                                                                                   §§push(param1.§ !T§.m_xf);
                                                                                                   if(_loc19_ || param1)
                                                                                                   {
                                                                                                      addr170:
                                                                                                      §§push(§§pop().position.y);
                                                                                                      if(_loc19_ || param1)
                                                                                                      {
                                                                                                         addr178:
                                                                                                         §§push(_loc5_.col1.y);
                                                                                                         if(_loc19_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(_loc6_.x);
                                                                                                            if(_loc19_ || param1)
                                                                                                            {
                                                                                                               addr197:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  addr200:
                                                                                                                  addr202:
                                                                                                                  §§push(_loc5_.col2.y);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr209:
                                                                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                  if(!(_loc18_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr218:
                                                                                                                     _loc10_ = §§pop();
                                                                                                                     _loc5_ = param1.§import§.m_xf.R;
                                                                                                                     _loc6_ = param1.§5!1§[0].localPoint;
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(param1.§import§);
                                                                                                                        loop0:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().m_xf);
                                                                                                                           addr695:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().position);
                                                                                                                              addr696:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 addr697:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_.col1);
                                                                                                                                    addr699:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       addr700:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                          addr702:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             addr703:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_.col2);
                                                                                                                                                addr705:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_.y);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                      }
                                                                                                                                                      addr710:
                                                                                                                                                   }
                                                                                                                                                   addr711:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      addr712:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         addr713:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr714:
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
                                                                                                                     §§goto(addr604);
                                                                                                                     addr217:
                                                                                                                  }
                                                                                                                  §§goto(addr218);
                                                                                                               }
                                                                                                               §§goto(addr209);
                                                                                                            }
                                                                                                            addr207:
                                                                                                            §§goto(addr209);
                                                                                                            §§push(§§pop() * _loc6_.y);
                                                                                                         }
                                                                                                         §§goto(addr209);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr218);
                                                                                             }
                                                                                             §§goto(addr178);
                                                                                          }
                                                                                          §§goto(addr217);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr200);
                                                                                 }
                                                                                 §§goto(addr207);
                                                                              }
                                                                              §§goto(addr137);
                                                                           }
                                                                           §§goto(addr202);
                                                                        }
                                                                        §§goto(addr200);
                                                                     }
                                                                     §§goto(addr197);
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                               §§goto(addr178);
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                }
                                                §§goto(addr161);
                                             case 1:
                                                §§goto(addr721);
                                             case 2:
                                                _loc5_ = param1.§import§.m_xf.R;
                                                _loc6_ = param1.§<?§;
                                                §§push(param1.§ !T§.m_xf);
                                                if(_loc19_)
                                                {
                                                   §§push(this.§&!5§);
                                                   if(_loc19_)
                                                   {
                                                      §§push(_loc5_.col1);
                                                      if(!_loc18_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc19_)
                                                         {
                                                            §§push(_loc6_.x);
                                                            if(_loc19_ || param1)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc19_)
                                                               {
                                                                  §§push(_loc5_.col2);
                                                                  if(!(_loc18_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc19_ || _loc2_)
                                                                     {
                                                                        §§push(_loc6_.y);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 if(!(_loc18_ && _loc2_))
                                                                                 {
                                                                                    addr1304:
                                                                                    §§push(this.§&!5§);
                                                                                    §§push(_loc5_.col1.y);
                                                                                    if(!(_loc18_ && param1))
                                                                                    {
                                                                                       addr1312:
                                                                                       §§push(_loc6_.x);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc18_ && _loc2_))
                                                                                          {
                                                                                             addr1326:
                                                                                             §§push(_loc5_.col2.y);
                                                                                             if(_loc19_ || this)
                                                                                             {
                                                                                             }
                                                                                             addr1338:
                                                                                             §§pop().y = §§pop() + §§pop();
                                                                                             _loc5_ = param1.§import§.m_xf.R;
                                                                                             _loc6_ = param1.localPoint;
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§push(param1.§import§);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop().m_xf);
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      §§push(§§pop().position);
                                                                                                      if(!(_loc18_ && param1))
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
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.col2);
                                                                                                                        if(!(_loc18_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr1400:
                                                                                                                              §§push(_loc6_.y);
                                                                                                                              if(_loc19_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc19_ || this)
                                                                                                                                    {
                                                                                                                                       addr1420:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             addr1426:
                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                addr1431:
                                                                                                                                                §§push(param1.§import§.m_xf);
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr1435:
                                                                                                                                                   §§push(§§pop().position.y);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      addr1440:
                                                                                                                                                      §§push(_loc5_.col1.y);
                                                                                                                                                      if(_loc19_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               addr1455:
                                                                                                                                                               addr1457:
                                                                                                                                                               §§push(_loc5_.col2.y);
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               addr1464:
                                                                                                                                                               §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                               if(_loc19_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr1473:
                                                                                                                                                                  _loc8_ = §§pop();
                                                                                                                                                                  _loc5_ = param1.§ !T§.m_xf.R;
                                                                                                                                                                  if(_loc19_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(!(_loc18_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc2_ = §§pop();
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           loop73:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc2_);
                                                                                                                                                                              addr1698:
                                                                                                                                                                              while(§§pop() < param1.§,!%§)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc6_ = param1.§5!1§[_loc2_].localPoint;
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1.§ !T§);
                                                                                                                                                                                    loop75:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().m_xf);
                                                                                                                                                                                       addr1674:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().position);
                                                                                                                                                                                          addr1675:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                             addr1676:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc5_.col1);
                                                                                                                                                                                                addr1678:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1686:
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc5_.col2);
                                                                                                                                                                                                            addr1688:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                               addr1689:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc6_.y);
                                                                                                                                                                                                                  addr1691:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1686:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         addr1693:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            addr1694:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               addr1695:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc3_ = §§pop();
                                                                                                                                                                                                                  continue loop75;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1692:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1686);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1533);
                                                                                                                                                                                 continue loop73;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§&!5§);
                                                                                                                                                                                 if(!(_loc18_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§&!5§);
                                                                                                                                                                                    if(_loc19_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(-1);
                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1747:
                                                                                                                                                                                                   addr1742:
                                                                                                                                                                                                   addr1740:
                                                                                                                                                                                                   addr1738:
                                                                                                                                                                                                   §§push(this.§&!5§);
                                                                                                                                                                                                   §§push(this.§&!5§.y);
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(-1);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   addr1748:
                                                                                                                                                                                                   break loop94;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1748);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1747);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1747);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1742);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1740);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1738);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1698);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1747);
                                                                                                                                                                  addr1472:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1473);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1464);
                                                                                                                                                         }
                                                                                                                                                         addr1462:
                                                                                                                                                         §§goto(addr1464);
                                                                                                                                                         §§push(§§pop() * _loc6_.y);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1464);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1473);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1472);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1473);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1455);
                                                                                                                              }
                                                                                                                              §§goto(addr1462);
                                                                                                                           }
                                                                                                                           §§goto(addr1455);
                                                                                                                        }
                                                                                                                        §§goto(addr1457);
                                                                                                                     }
                                                                                                                     §§goto(addr1455);
                                                                                                                  }
                                                                                                                  §§goto(addr1400);
                                                                                                               }
                                                                                                               §§goto(addr1420);
                                                                                                            }
                                                                                                            §§goto(addr1440);
                                                                                                         }
                                                                                                         §§goto(addr1426);
                                                                                                      }
                                                                                                      §§goto(addr1435);
                                                                                                   }
                                                                                                   §§goto(addr1473);
                                                                                                }
                                                                                                §§goto(addr1431);
                                                                                             }
                                                                                             §§goto(addr1473);
                                                                                             addr1337:
                                                                                          }
                                                                                          §§goto(addr1338);
                                                                                       }
                                                                                       §§goto(addr1337);
                                                                                       §§push(§§pop() * _loc6_.y);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1338);
                                                                              }
                                                                              §§goto(addr1312);
                                                                           }
                                                                           §§goto(addr1338);
                                                                        }
                                                                        §§goto(addr1312);
                                                                     }
                                                                     §§goto(addr1338);
                                                                  }
                                                                  §§goto(addr1326);
                                                               }
                                                               §§goto(addr1312);
                                                            }
                                                         }
                                                         §§goto(addr1326);
                                                      }
                                                   }
                                                }
                                                §§goto(addr1304);
                                          }
                                          return;
                                          addr1850:
                                       }
                                    }
                                    else
                                    {
                                       addr1827:
                                       §§push(2);
                                       if(_loc18_ && _loc3_)
                                       {
                                       }
                                    }
                                    §§goto(addr1850);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§&O§);
                                    if(_loc19_ || param1)
                                    {
                                       addr1826:
                                       if(§§pop() === _loc17_)
                                       {
                                          §§goto(addr1827);
                                       }
                                       else
                                       {
                                          §§goto(addr1850);
                                          §§push(3);
                                       }
                                       §§goto(addr1850);
                                    }
                                 }
                              }
                              §§goto(addr1826);
                           }
                           else
                           {
                              addr1791:
                           }
                        }
                        §§goto(addr1807);
                     }
                     else
                     {
                        §§push(b2Manifold.§`!5§);
                        if(!(_loc18_ && _loc2_))
                        {
                           §§goto(addr1801);
                        }
                     }
                     §§goto(addr1850);
                  }
                  §§goto(addr1826);
               }
               §§goto(addr1791);
            }
            §§goto(addr1807);
         }
         §§goto(addr1851);
      }
   }
}
