package §=;§
{
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2GearJoint extends b2Joint
   {
       
      
      private var m_ground1:b2Body;
      
      private var m_ground2:b2Body;
      
      private var m_revolute1:b2RevoluteJoint;
      
      private var m_prismatic1:b2PrismaticJoint;
      
      private var m_revolute2:b2RevoluteJoint;
      
      private var m_prismatic2:b2PrismaticJoint;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §,H§:b2Jacobian;
      
      private var §,!U§:Number;
      
      private var §2Z§:Number;
      
      private var §@U§:Number;
      
      private var §;D§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(_loc7_)
         {
            this.m_groundAnchor1 = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.m_groundAnchor2 = new b2Vec2();
            loop1:
            while(true)
            {
               this.m_localAnchor1 = new b2Vec2();
               loop2:
               while(true)
               {
                  this.m_localAnchor2 = new b2Vec2();
                  while(!_loc6_)
                  {
                     while(true)
                     {
                        this.§,H§ = new b2Jacobian();
                        continue loop2;
                     }
                     if(_loc7_ || _loc3_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §-;§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §`x§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§;D§);
            if(_loc2_ || this)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && _loc3_))
               {
                  addr52:
                  §§push(this.§,H§.§=!-§.x);
                  if(!(_loc3_ && _loc2_))
                  {
                     addr74:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_ || _loc2_)
                     {
                        addr82:
                        §§push(this.§;D§);
                        if(_loc2_ || this)
                        {
                           §§goto(addr99);
                        }
                        addr99:
                        §§push(§§pop() * §§pop());
                        if(_loc2_)
                        {
                           addr94:
                           §§push(this.§,H§.§=!-§.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr99);
               }
               §§goto(addr74);
            }
            §§goto(addr82);
         }
         §§goto(addr52);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = §`x§.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc9_)
         {
            §§push(§§pop() - §`x§.m_sweep.localCenter.x);
            if(!(_loc8_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc9_)
         {
            §§push(§§pop() - §`x§.m_sweep.localCenter.y);
            if(!_loc8_)
            {
               addr56:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(!(_loc8_ && _loc2_))
            {
               §§push(_loc3_);
               if(!_loc8_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc9_ || _loc2_)
                  {
                     addr79:
                     §§push(_loc2_.col2.x);
                     if(_loc9_)
                     {
                        addr86:
                        §§push(§§pop() + §§pop() * _loc4_);
                        if(_loc9_ || param1)
                        {
                           addr94:
                           §§push(Number(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        if(_loc9_)
                        {
                           §§push(_loc2_.col1.y);
                           if(_loc9_)
                           {
                              §§push(_loc3_);
                              if(_loc9_ || _loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc8_)
                                 {
                                    §§push(_loc2_.col2.y);
                                    if(!(_loc8_ && this))
                                    {
                                       §§goto(addr134);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr150);
                              }
                              addr134:
                              §§push(§§pop() * _loc4_);
                              if(!_loc8_)
                              {
                                 addr138:
                                 §§push(§§pop() + §§pop());
                                 if(_loc9_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc8_)
                                    {
                                       _loc4_ = §§pop();
                                       if(!_loc8_)
                                       {
                                          addr147:
                                          §§push(_loc5_);
                                          if(!_loc8_)
                                          {
                                             addr150:
                                             §§push(Number(§§pop()));
                                             if(!(_loc8_ && this))
                                             {
                                                addr158:
                                                _loc3_ = §§pop();
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr170);
                                       }
                                       §§push(this.§;D§);
                                       if(!_loc9_)
                                       {
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr170);
                              }
                              addr163:
                              §§push(§§pop() * this.§,H§.§=!-§.x);
                              if(_loc9_)
                              {
                                 addr170:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(this.§;D§);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() * this.§,H§.§=!-§.y);
                                 if(!_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc7_:* = §§pop();
                              §§push(param1);
                              if(!(_loc8_ && param1))
                              {
                                 §§push(this.§;D§);
                                 if(_loc9_)
                                 {
                                    §§push(this.§,H§.§9@§);
                                    if(_loc9_ || param1)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc9_ || this)
                                       {
                                          §§push(_loc3_);
                                          if(_loc9_ || _loc2_)
                                          {
                                             addr233:
                                             §§push(_loc7_);
                                             if(_loc9_ || _loc2_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc8_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr258);
                                             }
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                       §§goto(addr258);
                                    }
                                    §§goto(addr233);
                                 }
                                 §§goto(addr258);
                              }
                              addr258:
                              §§push(_loc4_);
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§push(_loc6_);
                              }
                              return §§pop() * (§§pop() + §§pop());
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr94);
               }
               §§goto(addr86);
            }
            §§goto(addr79);
         }
         §§goto(addr56);
      }
      
      public function §`8§() : Number
      {
         return this.§2Z§;
      }
      
      public function §3!9§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§2Z§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc4_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = §-;§;
         var _loc5_:b2Body = §`x§;
         §§push(0);
         if(_loc16_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(_loc16_ || this)
         {
            §§push(this.§,H§);
            if(_loc16_ || _loc3_)
            {
               §§pop().§@!;§();
               loop0:
               while(true)
               {
                  addr111:
                  while(true)
                  {
                     §§push(Boolean(this.m_revolute1));
                     if(_loc16_)
                     {
                        if(§§pop())
                        {
                           if(_loc16_)
                           {
                              continue loop0;
                           }
                           loop72:
                           while(true)
                           {
                              §§push(_loc4_.§4!h§);
                              addr1568:
                              addr1564:
                              loop57:
                              while(true)
                              {
                                 if(!(_loc15_ && _loc3_))
                                 {
                                    addr1590:
                                    §§push(_loc4_.§4!h§.y);
                                    §§push(_loc4_.§=n§);
                                    if(_loc16_ || param1)
                                    {
                                       addr1589:
                                       §§push(§§pop() * this.§;D§);
                                    }
                                    if(!_loc15_)
                                    {
                                       §§push(this.§,H§);
                                       while(true)
                                       {
                                          §§push(§§pop().§-P§);
                                          if(_loc16_ || param1)
                                          {
                                             §§push(§§pop().y);
                                             loop60:
                                             while(_loc16_ || param1)
                                             {
                                                §§push(§§pop() * §§pop());
                                                while(!(_loc15_ && param1))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   while(true)
                                                   {
                                                      §§pop().y = §§pop();
                                                      addr1630:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         §§push(_loc4_.m_angularVelocity);
                                                         if(!(_loc15_ && _loc3_))
                                                         {
                                                            §§push(_loc4_.§1&§);
                                                            if(!(_loc15_ && param1))
                                                            {
                                                               §§push(this.§;D§);
                                                               if(!_loc15_)
                                                               {
                                                                  addr1561:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc16_ || this)
                                                                  {
                                                                     addr1559:
                                                                     §§push(§§pop() * this.§,H§.§2>§);
                                                                  }
                                                                  §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc16_)
                                                                     {
                                                                        break loop57;
                                                                     }
                                                                     continue loop72;
                                                                  }
                                                                  addr1562:
                                                               }
                                                            }
                                                            §§goto(addr1559);
                                                         }
                                                         §§goto(addr1561);
                                                      }
                                                      continue loop72;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§;D§);
                                                   addr1643:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr1644:
                                                      while(true)
                                                      {
                                                         §§push(this.§,H§);
                                                         addr1646:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§-P§);
                                                            addr1647:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               break loop60;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr1649:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr1650:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      continue loop72;
                                                   }
                                                }
                                             }
                                             addr1603:
                                          }
                                          §§goto(addr1647);
                                       }
                                       addr1594:
                                    }
                                    §§goto(addr1649);
                                 }
                                 addr1636:
                                 while(true)
                                 {
                                    §§push(_loc4_.§4!h§);
                                    addr1638:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr1639:
                                       while(true)
                                       {
                                          §§goto(addr1641);
                                       }
                                    }
                                 }
                                 continue loop72;
                              }
                              while(true)
                              {
                                 §§push(_loc5_.§4!h§);
                                 addr1454:
                                 loop47:
                                 while(_loc16_)
                                 {
                                    §§push(_loc5_.§4!h§);
                                    while(_loc16_ || this)
                                    {
                                       §§push(§§pop().x);
                                       while(_loc16_ || this)
                                       {
                                          if(_loc16_ || param1)
                                          {
                                             §§push(_loc5_.§=n§);
                                             while(true)
                                             {
                                                §§push(this.§;D§);
                                                loop51:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            if(!(_loc15_ && _loc3_))
                                                            {
                                                               §§push(this.§,H§);
                                                               while(true)
                                                               {
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(§§pop().§=!-§);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr1509:
                                                                        while(!_loc15_)
                                                                        {
                                                                           if(_loc16_ || _loc2_)
                                                                           {
                                                                              addr1519:
                                                                              §§push(§§pop() * §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 addr1520:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr1521:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          continue loop47;
                                                                                       }
                                                                                       §§goto(addr1630);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr1519:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1589);
                                                                           }
                                                                        }
                                                                        §§goto(addr1603);
                                                                     }
                                                                     addr1508:
                                                                  }
                                                                  §§push(this.§,H§);
                                                                  addr1391:
                                                                  break;
                                                                  if(!(_loc16_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc16_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop().§=!-§);
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr1411:
                                                                        §§push(§§pop().y);
                                                                        if(!(_loc16_ || this))
                                                                        {
                                                                           continue loop51;
                                                                        }
                                                                        if(_loc16_ || this)
                                                                        {
                                                                           addr1426:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr1429:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc16_)
                                                                              {
                                                                                 if(_loc16_ || param1)
                                                                                 {
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc16_ || param1)
                                                                                          {
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                §§push(_loc5_.m_angularVelocity);
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   §§push(_loc5_.§1&§);
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      §§push(this.§;D§);
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         addr1332:
                                                                                                         addr1333:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            §§push(this.§,H§.§9@§);
                                                                                                         }
                                                                                                         §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                         return;
                                                                                                         addr1334:
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                   §§goto(addr1332);
                                                                                                }
                                                                                                §§goto(addr1333);
                                                                                                addr1450:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr1636);
                                                                                                }
                                                                                                addr1634:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr1562);
                                                                                          }
                                                                                       }
                                                                                       addr1441:
                                                                                    }
                                                                                    §§goto(addr1639);
                                                                                 }
                                                                                 §§goto(addr1650);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr1520);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1519);
                                                                           }
                                                                           §§goto(addr1520);
                                                                        }
                                                                        §§goto(addr1643);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr1508);
                                                                     }
                                                                  }
                                                                  §§goto(addr1594);
                                                               }
                                                               §§goto(addr1646);
                                                            }
                                                            §§goto(addr1644);
                                                         }
                                                         §§goto(addr1590);
                                                      }
                                                      §§goto(addr1611);
                                                   }
                                                   §§goto(addr1519);
                                                }
                                                addr1384:
                                                if(!(_loc16_ || this))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr1391);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr1590);
                                          }
                                          §§goto(addr1590);
                                       }
                                       §§goto(addr1629);
                                    }
                                    §§goto(addr1590);
                                 }
                                 §§goto(addr1568);
                              }
                           }
                        }
                        else
                        {
                           §§push(_loc2_.m_xf);
                           if(_loc16_ || _loc2_)
                           {
                              §§push(§§pop().R);
                              if(_loc16_ || _loc2_)
                              {
                                 _loc10_ = §§pop();
                                 _loc11_ = this.m_prismatic1.§!-§;
                                 if(!(_loc15_ && _loc2_))
                                 {
                                    §§push(_loc10_.col1);
                                    if(!(_loc15_ && param1))
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc15_ && param1))
                                       {
                                          §§push(_loc11_.x);
                                          if(_loc16_ || _loc3_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc15_ && param1))
                                             {
                                                §§push(_loc10_.col2);
                                                if(!(_loc15_ && _loc2_))
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc15_ && _loc2_))
                                                   {
                                                      §§push(_loc11_.y);
                                                      if(_loc16_ || this)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc15_ && param1))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc16_ || _loc2_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc15_)
                                                               {
                                                                  addr264:
                                                                  _loc6_ = §§pop();
                                                                  if(_loc16_ || _loc3_)
                                                                  {
                                                                     addr274:
                                                                     §§push(_loc10_.col1.y);
                                                                     if(!(_loc15_ && _loc2_))
                                                                     {
                                                                        §§push(_loc11_.x);
                                                                        if(!(_loc15_ && param1))
                                                                        {
                                                                           addr291:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc15_ && _loc2_))
                                                                           {
                                                                              addr299:
                                                                              §§push(_loc10_.col2.y);
                                                                              if(_loc16_ || param1)
                                                                              {
                                                                                 addr312:
                                                                                 §§push(§§pop() + §§pop() * _loc11_.y);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    addr315:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              §§goto(addr312);
                                                                           }
                                                                           _loc7_ = §§pop();
                                                                           addr317:
                                                                           _loc10_ = _loc4_.m_xf.R;
                                                                           if(_loc16_ || _loc3_)
                                                                           {
                                                                              §§push(this.m_localAnchor1);
                                                                              loop80:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr654:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_.m_sweep);
                                                                                    addr656:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       addr657:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr658:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr659:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr660:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   continue loop80;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr650);
                                                                        }
                                                                        §§goto(addr312);
                                                                     }
                                                                  }
                                                                  §§goto(addr317);
                                                               }
                                                               §§goto(addr299);
                                                            }
                                                            §§goto(addr264);
                                                         }
                                                         §§goto(addr291);
                                                      }
                                                      §§goto(addr312);
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr299);
                                             }
                                             §§goto(addr315);
                                          }
                                          §§goto(addr312);
                                       }
                                       §§goto(addr264);
                                    }
                                    §§goto(addr274);
                                 }
                                 §§goto(addr291);
                              }
                           }
                           §§goto(addr733);
                        }
                        §§goto(addr1523);
                     }
                     break;
                  }
                  if(!§§pop())
                  {
                     this.§;D§ = 0;
                     if(_loc16_ || this)
                     {
                        if(_loc16_ || this)
                        {
                           if(!_loc15_)
                           {
                              §§goto(addr1310);
                           }
                           else
                           {
                              §§goto(addr1521);
                           }
                        }
                        §§goto(addr1441);
                     }
                     §§goto(addr1334);
                  }
                  §§goto(addr1634);
               }
            }
            §§goto(addr677);
         }
         §§goto(addr1243);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = §-;§;
         var _loc3_:b2Body = §`x§;
         §§push(this.§,H§.§5!i§(_loc2_.§4!h§,_loc2_.m_angularVelocity,_loc3_.§4!h§,_loc3_.m_angularVelocity));
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§@U§);
         if(_loc7_)
         {
            §§push(-§§pop());
            if(_loc7_)
            {
               §§push(§§pop() * _loc4_);
               if(!_loc7_)
               {
               }
               addr52:
               var _loc5_:* = §§pop();
               if(!_loc6_)
               {
                  §§push(this);
                  §§push(this.§;D§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§;D§ = §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_.§4!h§);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.§4!h§);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc7_)
                           {
                              §§push(_loc2_.§=n§);
                              loop3:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(_loc7_ || this)
                                 {
                                    §§push(§§pop() * §§pop());
                                    while(true)
                                    {
                                       §§push(this.§,H§);
                                       addr416:
                                       while(true)
                                       {
                                          §§push(§§pop().§-P§);
                                          addr417:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                          }
                                       }
                                       loop27:
                                       while(_loc7_ || param1)
                                       {
                                          §§push(this.§,H§);
                                          loop28:
                                          while(_loc7_ || _loc3_)
                                          {
                                             §§push(§§pop().§=!-§);
                                             loop29:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                loop30:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop31:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop32:
                                                      while(!(_loc6_ && param1))
                                                      {
                                                         §§pop().x = §§pop();
                                                         loop33:
                                                         for(; _loc7_; while(!(_loc6_ && param1))
                                                         {
                                                            continue loop0;
                                                            §§pop().m_angularVelocity = §§pop();
                                                            if(_loc6_ && param1)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr99);
                                                         })
                                                         {
                                                            addr304:
                                                            §§push(_loc3_.§4!h§);
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               addr117:
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(_loc3_.§4!h§);
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!(_loc7_ || param1))
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§push(§§pop().y);
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop32;
                                                                        }
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(_loc3_.§=n§);
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              if(!(_loc7_ || _loc3_))
                                                                              {
                                                                                 continue loop27;
                                                                              }
                                                                              §§push(_loc5_);
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 if(_loc6_ && this)
                                                                                 {
                                                                                    continue loop30;
                                                                                 }
                                                                                 addr180:
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    addr187:
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       addr194:
                                                                                       if(_loc7_ || _loc2_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                §§push(this.§,H§);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   continue loop28;
                                                                                                }
                                                                                                §§push(§§pop().§=!-§);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   continue loop29;
                                                                                                }
                                                                                                addr230:
                                                                                                §§push(§§pop() * §§pop().y);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   continue loop31;
                                                                                                }
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr366:
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr237:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         continue;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_.§=n§);
                                                                                                         addr270:
                                                                                                         addr357:
                                                                                                         while(!_loc6_)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop27;
                                                                                                               §§goto(addr180);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§,H§);
                                                                                                            break loop28;
                                                                                                         }
                                                                                                      }
                                                                                                      addr268:
                                                                                                   }
                                                                                                   while(_loc7_ || param1)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      while(_loc7_ || _loc3_)
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            §§push(_loc2_.m_angularVelocity);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(_loc2_.§1&§);
                                                                                                               if(_loc7_ || this)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     addr335:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc6_ && this))
                                                                                                                     {
                                                                                                                        §§push(this.§,H§.§2>§);
                                                                                                                     }
                                                                                                                     §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                     while(!_loc6_)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.§4!h§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.§4!h§);
                                                                                                                           addr260:
                                                                                                                           addr345:
                                                                                                                           while(_loc7_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr268);
                                                                                                                              §§push(§§pop().x);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              break loop32;
                                                                                                                           }
                                                                                                                           §§goto(addr304);
                                                                                                                        }
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           return;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr335);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         break loop33;
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr420);
                                                                                                   }
                                                                                                   addr419:
                                                                                                   addr366:
                                                                                                }
                                                                                                §§goto(addr270);
                                                                                             }
                                                                                             §§goto(addr230);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr419);
                                                                                          }
                                                                                          addr418:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr357);
                                                                                          §§goto(addr194);
                                                                                       }
                                                                                       addr356:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr366);
                                                                                       §§goto(addr187);
                                                                                    }
                                                                                    addr365:
                                                                                 }
                                                                                 §§goto(addr273);
                                                                              }
                                                                           }
                                                                           §§goto(addr230);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§goto(addr237);
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr345);
                                                                  §§goto(addr117);
                                                               }
                                                               addr343:
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr343);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§=n§);
                                                         if(_loc7_ || _loc2_)
                                                         {
                                                            §§goto(addr356);
                                                            §§push(_loc5_);
                                                         }
                                                         §§goto(addr366);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(_loc7_)
                                          {
                                             §§push(§§pop().§-P§);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr365);
                                                §§push(§§pop().y);
                                             }
                                             else
                                             {
                                                §§goto(addr417);
                                             }
                                             §§goto(addr366);
                                          }
                                          §§goto(addr416);
                                       }
                                    }
                                 }
                                 §§goto(addr418);
                              }
                           }
                           §§goto(addr420);
                        }
                     }
                     if(!(_loc7_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(_loc3_);
                     §§push(_loc3_.m_angularVelocity);
                     if(_loc7_ || param1)
                     {
                        §§push(_loc3_.§1&§);
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           if(!(_loc6_ && this))
                           {
                              addr90:
                              §§push(§§pop() * §§pop());
                              if(_loc7_)
                              {
                                 §§push(this.§,H§.§9@§);
                              }
                              §§goto(addr91);
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr384);
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr52);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         §§push(0);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = §-;§;
         var _loc4_:b2Body = §`x§;
         if(_loc10_)
         {
            §§push(this.m_revolute1);
            if(_loc10_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(this.m_prismatic1.§]f§());
                     if(!(_loc9_ && _loc2_))
                     {
                        §§push(Number(§§pop()));
                        if(_loc10_ || _loc2_)
                        {
                           _loc5_ = §§pop();
                           while(true)
                           {
                              if(_loc10_ || _loc3_)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.m_revolute2);
                                    if(_loc9_ && _loc2_)
                                    {
                                       §§push(§§pop().§4X§());
                                       if(_loc10_)
                                       {
                                          addr99:
                                          _loc6_ = §§pop();
                                          addr100:
                                          if(_loc10_ || param1)
                                          {
                                             addr164:
                                             §§push(this.§,!U§);
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                continue loop2;
                                             }
                                             addr163:
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr95:
                                    }
                                    continue loop0;
                                 }
                                 addr173:
                                 §§push(_loc5_);
                                 if(!_loc9_)
                                 {
                                    §§push(this.§2Z§);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(!_loc9_)
                                 {
                                    addr186:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 §§push(this.§@U§);
                                 if(!_loc9_)
                                 {
                                    §§push(-§§pop());
                                    if(_loc10_ || _loc3_)
                                    {
                                       addr200:
                                       §§push(§§pop() * _loc7_);
                                       if(!_loc9_)
                                       {
                                          addr204:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc8_:* = §§pop();
                                       if(!_loc9_)
                                       {
                                          addr672:
                                          _loc3_.m_sweep.c.x += _loc3_.§=n§ * _loc8_ * this.§,H§.§-P§.x;
                                          addr670:
                                          addr661:
                                          addr660:
                                          addr662:
                                          addr668:
                                          addr666:
                                          addr665:
                                          addr658:
                                          addr657:
                                          addr673:
                                          addr671:
                                          addr669:
                                          addr664:
                                          §§push(_loc3_.m_sweep.c);
                                          §§push(_loc3_.m_sweep.c.y);
                                          if(!_loc9_)
                                          {
                                             addr609:
                                             §§push(_loc3_.§=n§ * _loc8_);
                                             if(_loc10_ || param1)
                                             {
                                                addr618:
                                                §§push(this.§,H§.§-P§);
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   addr628:
                                                   §§push(§§pop() * §§pop().y);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      addr646:
                                                      §§pop().y = §§pop() + §§pop();
                                                      if(_loc10_ || this)
                                                      {
                                                         addr561:
                                                         §§push(_loc3_.m_sweep);
                                                         if(!_loc9_)
                                                         {
                                                            addr566:
                                                            §§push(_loc3_.m_sweep.a);
                                                            §§push(_loc3_.§1&§);
                                                            if(_loc10_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc10_ || param1)
                                                               {
                                                                  addr591:
                                                                  addr590:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                     addr589:
                                                                     §§push(§§pop() * this.§,H§.§2>§);
                                                                  }
                                                                  §§pop().a = §§pop() + §§pop();
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr470:
                                                                     §§push(_loc4_.m_sweep);
                                                                     if(_loc10_)
                                                                     {
                                                                        addr473:
                                                                        §§push(§§pop().c);
                                                                        if(_loc10_ || _loc2_)
                                                                        {
                                                                           addr482:
                                                                           §§push(_loc4_.m_sweep);
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              addr490:
                                                                              §§push(§§pop().c);
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr493:
                                                                                 §§push(§§pop().x);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr498:
                                                                                    §§push(_loc4_.§=n§);
                                                                                    §§push(_loc8_);
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       if(!(_loc9_ && _loc2_))
                                                                                       {
                                                                                          addr513:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             addr522:
                                                                                             §§push(this.§,H§);
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   addr538:
                                                                                                   §§push(§§pop() + §§pop() * §§pop().§=!-§.x);
                                                                                                   if(_loc10_ || this)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         addr550:
                                                                                                         if(_loc10_ || _loc3_)
                                                                                                         {
                                                                                                            addr345:
                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§push(§§pop().c);
                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc10_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(_loc4_.m_sweep);
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        if(_loc10_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(!(_loc9_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_.§=n§);
                                                                                                                                       if(!(_loc9_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             if(_loc10_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               addr423:
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc10_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§,H§);
                                                                                                                                                                     if(!(_loc9_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().§=!-§);
                                                                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr450:
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           if(_loc10_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr460:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr463:
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                       addr466:
                                                                                                                                                                                       §§push(_loc4_.m_sweep);
                                                                                                                                                                                       if(!(_loc9_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_.m_sweep);
                                                                                                                                                                                             if(!(_loc9_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().a);
                                                                                                                                                                                                if(_loc10_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_.§1&§);
                                                                                                                                                                                                      if(_loc10_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                         if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!(_loc9_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr312:
                                                                                                                                                                                                               §§push(this.§,H§);
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr317:
                                                                                                                                                                                                                  §§push(§§pop().§9@§);
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr320:
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(_loc10_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr338:
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().a = §§pop();
                                                                                                                                                                                                                           _loc3_.§"!_§();
                                                                                                                                                                                                                           addr241:
                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc4_.§"!_§();
                                                                                                                                                                                                                                 if(_loc10_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc10_ || _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr550);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr241);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr466);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr341:
                                                                                                                                                                                                                           §§goto(addr341);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr591);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr590);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr589);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr320);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr317);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr312);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr566);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr338);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr566);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr561);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr345);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr493);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr628);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr498);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr538);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr522);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr609);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr498);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr460);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr670);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr609);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr450);
                                                                                                                                                }
                                                                                                                                                §§goto(addr609);
                                                                                                                                             }
                                                                                                                                             §§goto(addr513);
                                                                                                                                          }
                                                                                                                                          §§goto(addr538);
                                                                                                                                       }
                                                                                                                                       §§goto(addr423);
                                                                                                                                    }
                                                                                                                                    §§goto(addr538);
                                                                                                                                 }
                                                                                                                                 §§goto(addr463);
                                                                                                                              }
                                                                                                                              §§goto(addr661);
                                                                                                                           }
                                                                                                                           §§goto(addr490);
                                                                                                                        }
                                                                                                                        §§goto(addr660);
                                                                                                                     }
                                                                                                                     §§goto(addr482);
                                                                                                                  }
                                                                                                                  §§goto(addr670);
                                                                                                               }
                                                                                                               §§goto(addr473);
                                                                                                            }
                                                                                                            §§goto(addr470);
                                                                                                         }
                                                                                                         §§goto(addr591);
                                                                                                      }
                                                                                                      §§goto(addr662);
                                                                                                   }
                                                                                                   §§goto(addr672);
                                                                                                }
                                                                                                §§goto(addr668);
                                                                                             }
                                                                                             §§goto(addr618);
                                                                                          }
                                                                                          §§goto(addr666);
                                                                                       }
                                                                                       §§goto(addr665);
                                                                                    }
                                                                                    §§goto(addr628);
                                                                                 }
                                                                                 §§goto(addr646);
                                                                              }
                                                                           }
                                                                           §§goto(addr672);
                                                                        }
                                                                        §§goto(addr658);
                                                                     }
                                                                     §§goto(addr672);
                                                                     addr594:
                                                                  }
                                                                  §§goto(addr646);
                                                               }
                                                            }
                                                            §§goto(addr589);
                                                         }
                                                         §§goto(addr657);
                                                      }
                                                      §§goto(addr673);
                                                   }
                                                   §§goto(addr671);
                                                }
                                                §§goto(addr669);
                                             }
                                             §§goto(addr664);
                                          }
                                          §§goto(addr646);
                                       }
                                       §§goto(addr594);
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr200);
                                 addr72:
                              }
                              else
                              {
                                 addr144:
                                 while(true)
                                 {
                                    §§push(this.m_revolute1);
                                    addr146:
                                    while(true)
                                    {
                                       §§push(§§pop().§4X§());
                                       if(_loc10_ || _loc2_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc9_ && param1))
                                          {
                                             _loc5_ = §§pop();
                                             §§goto(addr163);
                                          }
                                       }
                                       §§goto(addr173);
                                    }
                                 }
                                 addr144:
                              }
                              §§goto(addr173);
                           }
                           addr130:
                        }
                        §§goto(addr186);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr144);
               }
            }
            §§goto(addr146);
         }
         §§goto(addr144);
      }
   }
}
