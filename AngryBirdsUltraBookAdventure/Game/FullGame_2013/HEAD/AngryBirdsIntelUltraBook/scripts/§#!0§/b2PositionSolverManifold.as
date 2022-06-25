package §#!0§
{
   import §!m§.*;
   import §+!g§.*;
   import §>!8§.*;
   import §>!L§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §"b§:b2Vec2;
      
      private static var §1!Z§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §"b§ = new b2Vec2();
            do
            {
               §1!Z§ = new b2Vec2();
            }
            while(!(_loc1_ || b2PositionSolverManifold));
            
         }
      }
      
      public var §+i§:b2Vec2;
      
      public var §&!2§:Vector.<b2Vec2>;
      
      public var §+!a§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§+i§ = new b2Vec2();
               addr70:
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§+!a§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§&!2§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
            if(!_loc2_)
            {
               continue;
            }
            if(_loc2_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr70);
            }
            §§goto(addr42);
         }
         §§push(0);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() >= b2Settings.b2_maxManifoldPoints)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  loop5:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        _loc1_ = §§pop();
                        continue loop5;
                     }
                  }
                  continue;
               }
               this.§&!2§[_loc1_] = new b2Vec2();
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc2_)
                  {
                     §§push(§§pop() + 1);
                     if(!(_loc3_ && this))
                     {
                        §§push(int(§§pop()));
                     }
                  }
               }
            }
            §§goto(addr118);
         }
      }
      
      public function §2@§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
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
         if(_loc18_ || param1)
         {
            b2Settings.b2Assert(param1.§39§ > 0);
         }
         §§push(param1.type);
         if(!_loc19_)
         {
            var _loc17_:* = §§pop();
            if(_loc18_ || _loc2_)
            {
               §§push(b2Manifold.§@!"§);
               if(_loc18_)
               {
                  §§push(_loc17_);
                  if(_loc18_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc18_)
                        {
                           §§push(0);
                           if(_loc18_ || _loc2_)
                           {
                              addr1896:
                              loop98:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc5_ = param1.§7l§.m_xf.R;
                                    _loc6_ = param1.localPoint;
                                    if(!_loc19_)
                                    {
                                       §§push(param1.§7l§);
                                       if(!_loc19_)
                                       {
                                          §§push(§§pop().m_xf);
                                          if(!_loc19_)
                                          {
                                             §§push(§§pop().position);
                                             if(!(_loc19_ && param1))
                                             {
                                                §§push(§§pop().x);
                                                if(_loc18_)
                                                {
                                                   §§push(_loc5_.col1);
                                                   if(!(_loc19_ && _loc2_))
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc18_)
                                                      {
                                                         §§push(_loc6_.x);
                                                         if(!(_loc19_ && this))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc19_)
                                                            {
                                                               §§push(_loc5_.col2);
                                                               if(_loc18_ || this)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(_loc6_.y);
                                                                     if(!(_loc19_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc19_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc19_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc18_ || _loc3_)
                                                                                 {
                                                                                    addr167:
                                                                                    _loc9_ = §§pop();
                                                                                    if(_loc18_ || param1)
                                                                                    {
                                                                                       addr177:
                                                                                       §§push(param1.§7l§.m_xf);
                                                                                       if(_loc18_ || _loc3_)
                                                                                       {
                                                                                          addr186:
                                                                                          §§push(§§pop().position.y);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             addr191:
                                                                                             §§push(_loc5_.col1.y);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                addr194:
                                                                                                §§push(_loc6_.x);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   addr210:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      addr203:
                                                                                                      §§push(_loc5_.col2.y);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         addr206:
                                                                                                         §§push(§§pop() * _loc6_.y);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      addr214:
                                                                                                      _loc10_ = §§pop();
                                                                                                      _loc5_ = param1.§<H§.m_xf.R;
                                                                                                      _loc6_ = param1.§]!8§[0].localPoint;
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         §§push(param1.§<H§);
                                                                                                         loop0:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().m_xf);
                                                                                                            addr648:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().position);
                                                                                                               addr649:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr650:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.col1);
                                                                                                                     addr652:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr653:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.x);
                                                                                                                           addr655:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr656:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.col2);
                                                                                                                                 addr658:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    addr659:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       addr661:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr662:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr663:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                addr664:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   addr665:
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
                                                                                                      §§goto(addr515);
                                                                                                      addr213:
                                                                                                   }
                                                                                                   §§goto(addr214);
                                                                                                }
                                                                                                §§goto(addr210);
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§goto(addr210);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr214);
                                                                                 }
                                                                                 §§goto(addr213);
                                                                              }
                                                                              §§goto(addr214);
                                                                           }
                                                                           §§goto(addr210);
                                                                        }
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  §§goto(addr210);
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                   §§goto(addr191);
                                                }
                                                §§goto(addr167);
                                             }
                                          }
                                          §§goto(addr186);
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr214);
                                 case 1:
                                    §§goto(addr672);
                                 case 2:
                                    _loc5_ = param1.§<H§.m_xf.R;
                                    _loc6_ = param1.§#!#§;
                                    §§push(param1.§7l§.m_xf);
                                    if(_loc18_ || param1)
                                    {
                                       §§push(this.§+i§);
                                       if(_loc18_)
                                       {
                                          §§push(_loc5_.col1);
                                          if(!(_loc19_ && this))
                                          {
                                             §§push(§§pop().x);
                                             if(_loc18_)
                                             {
                                                §§push(_loc6_.x);
                                                if(!(_loc19_ && this))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc18_)
                                                   {
                                                      §§push(_loc5_.col2);
                                                      if(_loc18_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            §§push(_loc6_.y);
                                                            if(_loc18_ || _loc3_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  addr1300:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc18_ || _loc3_)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     if(!_loc19_)
                                                                     {
                                                                        addr1315:
                                                                        §§push(this.§+i§);
                                                                        §§push(_loc5_.col1.y);
                                                                        if(_loc18_)
                                                                        {
                                                                           addr1318:
                                                                           §§push(_loc6_.x);
                                                                           if(!(_loc19_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc18_)
                                                                              {
                                                                              }
                                                                              addr1339:
                                                                              §§pop().y = §§pop();
                                                                              _loc5_ = param1.§<H§.m_xf.R;
                                                                              _loc6_ = param1.localPoint;
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(param1.§<H§);
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    §§push(§§pop().m_xf);
                                                                                    if(_loc18_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop().position);
                                                                                       if(!(_loc19_ && param1))
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(_loc5_.col1);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!(_loc19_ && _loc3_))
                                                                                                {
                                                                                                   §§push(_loc6_.x);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc19_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(_loc5_.col2);
                                                                                                         if(!(_loc19_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(_loc6_.y);
                                                                                                               if(!(_loc19_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc18_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc19_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr1452:
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              if(!(_loc19_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr1462:
                                                                                                                                 §§push(param1.§<H§.m_xf);
                                                                                                                                 if(_loc18_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr1471:
                                                                                                                                    §§push(§§pop().position.y);
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       addr1474:
                                                                                                                                       addr1476:
                                                                                                                                       §§push(_loc5_.col1.y);
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          addr1479:
                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                          if(!(_loc19_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc18_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr1498:
                                                                                                                                                §§push(_loc5_.col2.y);
                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                {
                                                                                                                                                   addr1509:
                                                                                                                                                   §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1509);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1509);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                       {
                                                                                                                                          addr1518:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    addr1523:
                                                                                                                                    _loc5_ = param1.§7l§.m_xf.R;
                                                                                                                                    if(!(_loc19_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc18_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                          if(!(_loc19_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr1549:
                                                                                                                                             _loc2_ = §§pop();
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                addr1552:
                                                                                                                                                loop97:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   addr1755:
                                                                                                                                                   while(§§pop() < param1.§39§)
                                                                                                                                                   {
                                                                                                                                                      _loc6_ = param1.§]!8§[_loc2_].localPoint;
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§7l§);
                                                                                                                                                         loop79:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().m_xf);
                                                                                                                                                            addr1731:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().position);
                                                                                                                                                               addr1732:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  addr1733:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_.col1);
                                                                                                                                                                     addr1735:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        addr1736:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.x);
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_.col2);
                                                                                                                                                                                 addr1743:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    addr1744:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                                                                       addr1746:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr1741:
                                                                                                                                                                           }
                                                                                                                                                                           addr1747:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              addr1748:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1752:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                                                                    continue loop79;
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
                                                                                                                                                      §§goto(addr1631);
                                                                                                                                                      continue loop97;
                                                                                                                                                   }
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      addr1760:
                                                                                                                                                      §§push(this.§+i§);
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§+i§);
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(-1);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc18_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     if(!(_loc19_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr1794:
                                                                                                                                                                        §§push(this.§+i§);
                                                                                                                                                                        §§push(this.§+i§.y);
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1797:
                                                                                                                                                                           §§push(§§pop() * -1);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                     }
                                                                                                                                                                     break loop98;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1797);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1794);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1760);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1755);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1549);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1552);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1523);
                                                                                                                           }
                                                                                                                           §§goto(addr1518);
                                                                                                                        }
                                                                                                                        §§goto(addr1474);
                                                                                                                     }
                                                                                                                     §§goto(addr1479);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1509);
                                                                                                         }
                                                                                                         §§goto(addr1498);
                                                                                                      }
                                                                                                      §§goto(addr1479);
                                                                                                   }
                                                                                                   §§goto(addr1509);
                                                                                                }
                                                                                                §§goto(addr1479);
                                                                                             }
                                                                                             §§goto(addr1476);
                                                                                          }
                                                                                          §§goto(addr1452);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1471);
                                                                                 }
                                                                                 §§goto(addr1462);
                                                                              }
                                                                              §§goto(addr1471);
                                                                           }
                                                                           addr1338:
                                                                           §§goto(addr1339);
                                                                           §§push(§§pop() + §§pop() * _loc6_.y);
                                                                        }
                                                                     }
                                                                     §§goto(addr1339);
                                                                  }
                                                                  §§push(_loc5_.col2.y);
                                                                  if(!_loc18_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr1338);
                                                         }
                                                      }
                                                      §§goto(addr1300);
                                                   }
                                                   §§goto(addr1339);
                                                }
                                                §§goto(addr1338);
                                             }
                                             §§goto(addr1318);
                                          }
                                       }
                                       §§goto(addr1315);
                                    }
                                    §§goto(addr1339);
                              }
                              return;
                              addr1895:
                           }
                           else
                           {
                              addr1880:
                              if(§§pop() === _loc17_)
                              {
                                 if(!_loc19_)
                                 {
                                    addr1884:
                                    §§push(2);
                                    if(!_loc19_)
                                    {
                                       addr1887:
                                    }
                                 }
                                 else
                                 {
                                    addr1890:
                                    §§push(3);
                                    if(_loc19_)
                                    {
                                    }
                                 }
                              }
                              else if(false)
                              {
                                 §§goto(addr1890);
                              }
                              else
                              {
                                 §§goto(addr1895);
                                 §§push(3);
                              }
                              §§goto(addr1895);
                           }
                           §§goto(addr1895);
                        }
                        §§goto(addr1890);
                     }
                     else
                     {
                        §§push(b2Manifold.§<!!§);
                        if(_loc18_ || _loc3_)
                        {
                           §§push(_loc17_);
                           if(!_loc19_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc19_)
                                 {
                                    §§push(1);
                                    if(_loc18_ || _loc2_)
                                    {
                                    }
                                    §§goto(addr1895);
                                 }
                                 else
                                 {
                                    §§goto(addr1884);
                                 }
                              }
                              else
                              {
                                 §§push(b2Manifold.§&!>§);
                                 if(!_loc19_)
                                 {
                                    §§goto(addr1880);
                                 }
                              }
                              §§goto(addr1887);
                           }
                           §§goto(addr1880);
                        }
                     }
                     §§goto(addr1895);
                  }
                  §§goto(addr1880);
               }
               §§goto(addr1895);
            }
            §§goto(addr1890);
         }
         §§goto(addr1896);
      }
   }
}
