package §5!_§
{
   import §1%§.b2Body;
   import §1%§.b2TimeStep;
   import §8!H§.b2Settings;
   import §8!H§.b2internal;
   import §?!&§.b2Mat22;
   import §?!&§.b2Vec2;
   
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
      
      private var §-!$§:b2Jacobian;
      
      private var §>i§:Number;
      
      private var §[f§:Number;
      
      private var §;!3§:Number;
      
      private var §>!C§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc6_ && _loc3_))
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  addr62:
                  if(_loc7_ || _loc2_)
                  {
                     if(_loc7_)
                     {
                        while(true)
                        {
                           this.§-!$§ = new b2Jacobian();
                           do
                           {
                              super(param1);
                           }
                           while(_loc6_);
                           
                           if(!(_loc7_ || _loc2_))
                           {
                              break;
                           }
                           if(false)
                           {
                              continue;
                           }
                           §§push(param1.joint1.§@!D§);
                           if(!_loc6_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           §§push(param1.joint2.§@!D§);
                           if(!_loc6_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           if(_loc7_ || _loc3_)
                           {
                              this.m_revolute1 = null;
                              loop6:
                              while(true)
                              {
                                 this.m_prismatic1 = null;
                                 addr334:
                                 if(_loc6_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§push(this.m_localAnchor2);
                                 loop31:
                                 while(true)
                                 {
                                    §§pop().SetV(this.m_revolute2.m_localAnchor2);
                                    loop32:
                                    while(true)
                                    {
                                       if(_loc7_ || param1)
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(this.m_revolute2.§^T§());
                                             loop25:
                                             for(; !(_loc6_ && this); §§goto(addr318))
                                             {
                                                §§push(Number(§§pop()));
                                                loop30:
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                   loop35:
                                                   while(_loc7_)
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         loop27:
                                                         while(true)
                                                         {
                                                            this.§[f§ = param1.§"b§;
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  addr173:
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop32;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(_loc4_);
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§push(this.§[f§);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§§pop() * _loc5_);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§pop().§>i§ = §§pop();
                                                                        continue;
                                                                     }
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_ || _loc2_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop() == b2Joint.e_revoluteJoint)
                                                                           {
                                                                              loop36:
                                                                              while(_loc7_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
                                                                                    loop37:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.m_groundAnchor2);
                                                                                       addr322:
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().SetV(this.m_revolute2.m_localAnchor1);
                                                                                          addr327:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_ && this)
                                                                                             {
                                                                                                continue loop37;
                                                                                             }
                                                                                             §§goto(addr334);
                                                                                             continue loop34;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       addr376:
                                                                                       while(true)
                                                                                       {
                                                                                          this.m_ground2 = param1.joint2.§;!B§();
                                                                                          break loop36;
                                                                                       }
                                                                                    }
                                                                                    addr396:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 § X§ = param1.joint2.§ for§();
                                                                                 continue loop21;
                                                                              }
                                                                              addr350:
                                                                           }
                                                                           else
                                                                           {
                                                                              this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc7_ || _loc3_))
                                                                                 {
                                                                                    continue loop35;
                                                                                 }
                                                                                 §§push(this.m_groundAnchor2);
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    §§pop().SetV(this.m_prismatic2.m_localAnchor1);
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(this.m_localAnchor2);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop31;
                                                                                          }
                                                                                          §§pop().SetV(this.m_prismatic2.m_localAnchor2);
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.m_prismatic2.§>t§());
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr201:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc7_ || this))
                                                                                                      {
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         continue loop22;
                                                                                                         addr211:
                                                                                                      }
                                                                                                      addr387:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            break loop25;
                                                                                                         }
                                                                                                         addr455:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            break loop24;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                             §§goto(addr201);
                                                                                             §§goto(addr173);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             addr457:
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr376);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr327);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr322);
                                                                           addr375:
                                                                        }
                                                                        addr423:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              §§push(this.m_localAnchor1);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr387);
                                                                                    continue loop32;
                                                                                 }
                                                                                 addr407:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.m_localAnchor1);
                                                                              }
                                                                              addr475:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop().SetV(this.m_revolute1.m_localAnchor2);
                                                                              break loop27;
                                                                           }
                                                                           continue loop21;
                                                                        }
                                                                     }
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() != b2Joint.e_revoluteJoint)
                                                                        {
                                                                           this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                                                           break loop35;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
                                                                           addr489:
                                                                           while(!(_loc6_ && this))
                                                                           {
                                                                              §§push(this.m_groundAnchor1);
                                                                              while(true)
                                                                              {
                                                                                 §§pop().SetV(this.m_revolute1.m_localAnchor1);
                                                                                 §§goto(addr475);
                                                                              }
                                                                           }
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              this.m_prismatic2 = null;
                                                                              addr525:
                                                                              addr537:
                                                                              while(!_loc6_)
                                                                              {
                                                                                 this.m_ground1 = param1.joint1.§;!B§();
                                                                                 while(true)
                                                                                 {
                                                                                    §,^§ = param1.joint1.§ for§();
                                                                                    addr513:
                                                                                    addr123:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.m_revolute2 = null;
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr231);
                                                               }
                                                               §§goto(addr211);
                                                            }
                                                            continue loop32;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr455);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this.m_groundAnchor1);
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                                               §§goto(addr423);
                                                            }
                                                            §§goto(addr470);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr457);
                                                   }
                                                   §§goto(addr525);
                                                }
                                             }
                                             addr318:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                §§goto(addr396);
                                                §§goto(addr282);
                                             }
                                             addr282:
                                          }
                                          §§goto(addr489);
                                       }
                                       §§goto(addr407);
                                    }
                                 }
                              }
                           }
                           §§goto(addr537);
                        }
                        loop3:
                        while(true)
                        {
                           if(!(_loc6_ && param1))
                           {
                              §§goto(addr62);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.m_localAnchor2 = new b2Vec2();
                                 continue loop3;
                              }
                              addr77:
                           }
                        }
                        addr44:
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §,^§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return § X§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || _loc2_)
         {
            §§push(this.§>!C§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || _loc2_)
               {
                  §§push(this.§-!$§.§8!R§.x);
                  if(_loc2_ || this)
                  {
                     addr69:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_)
                     {
                        addr72:
                        §§push(this.§>!C§);
                        if(_loc2_)
                        {
                           §§goto(addr89);
                        }
                        addr89:
                        §§push(§§pop() * §§pop());
                        if(_loc2_ || param1)
                        {
                           addr84:
                           §§push(this.§-!$§.§8!R§.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr72);
               }
               §§goto(addr69);
            }
            §§goto(addr89);
         }
         §§goto(addr69);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Mat22 = § X§.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc9_ && _loc3_))
         {
            §§push(§§pop() - § X§.m_sweep.localCenter.x);
            if(_loc8_)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!(_loc9_ && this))
            {
               §§push(§§pop() - § X§.m_sweep.localCenter.y);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(!_loc9_)
            {
               §§push(_loc3_);
               if(!_loc9_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc8_ || this)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc8_ || this)
                     {
                        addr88:
                        §§push(§§pop() * _loc4_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc8_ || param1)
                     {
                        addr98:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     if(_loc8_ || _loc2_)
                     {
                        §§push(_loc2_.col1.y);
                        if(!(_loc9_ && param1))
                        {
                           §§push(_loc3_);
                           if(!(_loc9_ && _loc2_))
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc9_)
                              {
                                 addr138:
                                 §§push(_loc2_.col2.y);
                                 if(_loc8_ || _loc3_)
                                 {
                                    §§push(§§pop() * _loc4_);
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc8_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc9_ && param1))
                                          {
                                             addr168:
                                             _loc4_ = §§pop();
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                §§push(_loc5_);
                                                if(!_loc9_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc8_)
                                                   {
                                                   }
                                                   addr192:
                                                   §§push(§§pop() * this.§-!$§.§8!R§.x);
                                                   if(!_loc9_)
                                                   {
                                                      addr199:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc6_:* = §§pop();
                                                   §§push(this.§>!C§);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop() * this.§-!$§.§8!R§.y);
                                                      if(_loc8_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc7_:* = §§pop();
                                                   §§push(param1);
                                                   if(_loc8_)
                                                   {
                                                      §§push(this.§>!C§);
                                                      if(_loc8_ || this)
                                                      {
                                                         §§push(this.§-!$§.§<!2§);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc8_)
                                                            {
                                                               addr244:
                                                               §§push(_loc3_);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc8_)
                                                                     {
                                                                        addr253:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!_loc8_)
                                                                           {
                                                                           }
                                                                           addr268:
                                                                           return §§pop() * (§§pop() + §§pop());
                                                                           addr267:
                                                                        }
                                                                        §§goto(addr267);
                                                                     }
                                                                     §§push(_loc6_);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                            }
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   §§goto(addr268);
                                                }
                                                _loc3_ = §§pop();
                                                addr183:
                                                §§push(this.§>!C§);
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   §§goto(addr192);
                                                }
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr168);
                                    }
                                 }
                              }
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr98);
               }
               §§goto(addr88);
            }
            §§goto(addr98);
         }
         §§goto(addr40);
      }
      
      public function §,!3§() : Number
      {
         return this.§[f§;
      }
      
      public function §>!1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§[f§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
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
         _loc4_ = §,^§;
         var _loc5_:b2Body = § X§;
         §§push(0);
         if(_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(!(_loc16_ && param1))
         {
            §§push(this.§-!$§);
            loop0:
            while(true)
            {
               §§pop().§@l§();
               if(!(_loc16_ && param1))
               {
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(this.m_revolute1));
                     if(!_loc16_)
                     {
                        if(§§pop())
                        {
                           if(!_loc16_)
                           {
                              loop126:
                              while(true)
                              {
                                 §§push(this.§-!$§);
                                 if(!(_loc16_ && this))
                                 {
                                    if(_loc16_)
                                    {
                                       continue loop0;
                                    }
                                    §§pop().§9D§ = -1;
                                    if(!_loc16_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc14_);
                                          if(_loc15_)
                                          {
                                             §§push(_loc4_.§[!F§);
                                             if(!_loc16_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc16_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc16_ && this))
                                                   {
                                                      _loc14_ = §§pop();
                                                      if(!_loc16_)
                                                      {
                                                         if(true)
                                                         {
                                                            §§push(Boolean(this.m_revolute2));
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc15_ || _loc3_)
                                                                  {
                                                                     §§push(this.§-!$§);
                                                                     break loop126;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr682:
                                                                  _loc10_ = _loc3_.m_xf.R;
                                                                  _loc11_ = this.m_prismatic2.§!!D§;
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(_loc10_.col1);
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!(_loc16_ && this))
                                                                        {
                                                                           §§push(_loc11_.x);
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(_loc10_.col2);
                                                                                 if(_loc15_ || param1)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!(_loc16_ && param1))
                                                                                    {
                                                                                       addr727:
                                                                                       §§push(_loc11_.y);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      addr745:
                                                                                                      §§push(_loc10_.col1.y);
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         addr748:
                                                                                                         §§push(_loc11_.x);
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            addr752:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc16_ && param1))
                                                                                                            {
                                                                                                               addr760:
                                                                                                               §§push(_loc10_.col2.y);
                                                                                                               if(!(_loc16_ && _loc2_))
                                                                                                               {
                                                                                                                  addr773:
                                                                                                                  addr772:
                                                                                                                  §§push(§§pop() + §§pop() * _loc11_.y);
                                                                                                                  if(_loc15_ || this)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr792:
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  _loc10_ = _loc5_.m_xf.R;
                                                                                                                  if(!(_loc16_ && param1))
                                                                                                                  {
                                                                                                                     §§push(this.m_localAnchor2);
                                                                                                                     loop35:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr1189:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.m_sweep);
                                                                                                                           addr1191:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().localCenter);
                                                                                                                              addr1192:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 addr1193:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    addr1194:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr1195:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          continue loop35;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1148);
                                                                                                               }
                                                                                                               §§goto(addr773);
                                                                                                            }
                                                                                                            §§goto(addr792);
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         §§goto(addr773);
                                                                                                      }
                                                                                                      §§goto(addr760);
                                                                                                   }
                                                                                                   §§goto(addr773);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr773);
                                                                                          }
                                                                                          §§goto(addr752);
                                                                                       }
                                                                                       §§goto(addr772);
                                                                                    }
                                                                                    §§goto(addr752);
                                                                                 }
                                                                                 §§goto(addr760);
                                                                              }
                                                                              §§goto(addr748);
                                                                           }
                                                                           §§goto(addr727);
                                                                        }
                                                                        §§goto(addr760);
                                                                     }
                                                                  }
                                                                  §§goto(addr745);
                                                               }
                                                               §§goto(addr1515);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr606:
                                                         }
                                                         continue loop1;
                                                         break loop1;
                                                      }
                                                      §§goto(addr1590);
                                                   }
                                                   addr675:
                                                   _loc14_ = Number(§§pop());
                                                   addr674:
                                                   if(!_loc16_)
                                                   {
                                                      §§goto(addr1197);
                                                   }
                                                   §§goto(addr1275);
                                                }
                                                break;
                                             }
                                             addr651:
                                             §§push(this.§[f§);
                                             if(!(_loc16_ && this))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc15_)
                                                {
                                                   addr665:
                                                   §§push(§§pop() * _loc5_.§[!F§);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc15_ || _loc3_)
                                                {
                                                   §§goto(addr674);
                                                }
                                                §§goto(addr675);
                                             }
                                             §§goto(addr665);
                                          }
                                          break;
                                       }
                                       addr647:
                                       §§push(this.§[f§);
                                       if(!_loc16_)
                                       {
                                          §§goto(addr651);
                                       }
                                       §§goto(addr665);
                                       addr114:
                                    }
                                    §§goto(addr1232);
                                 }
                                 break;
                              }
                              §§push(this.§[f§);
                              if(!(_loc16_ && _loc3_))
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().§<!2§ = §§pop();
                              if(_loc15_ || _loc3_)
                              {
                                 §§push(_loc14_);
                                 if(_loc15_)
                                 {
                                    §§goto(addr647);
                                 }
                                 §§goto(addr675);
                              }
                              §§goto(addr1292);
                              addr99:
                           }
                           §§goto(addr114);
                        }
                        else
                        {
                           §§push(_loc2_.m_xf);
                           if(_loc15_)
                           {
                              §§push(§§pop().R);
                              if(_loc15_ || _loc3_)
                              {
                                 _loc10_ = §§pop();
                                 _loc11_ = this.m_prismatic1.§!!D§;
                                 if(_loc15_)
                                 {
                                    §§push(_loc10_.col1);
                                    if(_loc15_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc15_ || _loc3_)
                                       {
                                          §§push(_loc11_.x);
                                          if(_loc15_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc16_ && _loc2_))
                                             {
                                                §§push(_loc10_.col2);
                                                if(_loc15_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc15_ || _loc3_)
                                                   {
                                                      §§push(_loc11_.y);
                                                      if(_loc15_ || _loc2_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc16_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc16_)
                                                            {
                                                               addr200:
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc16_ && _loc2_))
                                                               {
                                                                  addr208:
                                                                  _loc6_ = §§pop();
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr213:
                                                                     addr211:
                                                                     §§push(_loc10_.col1.y);
                                                                     if(_loc15_)
                                                                     {
                                                                        addr216:
                                                                        §§push(_loc11_.x);
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc15_ || this)
                                                                           {
                                                                           }
                                                                           addr245:
                                                                           _loc7_ = §§pop();
                                                                           _loc10_ = _loc4_.m_xf.R;
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§push(this.m_localAnchor1);
                                                                              loop81:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr598:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_.m_sweep);
                                                                                    addr600:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       addr601:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr602:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr603:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr604:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   continue loop81;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr566);
                                                                        }
                                                                        addr241:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§goto(addr245);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr245);
                                                                     }
                                                                     addr230:
                                                                     §§push(_loc10_.col2.y);
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        addr238:
                                                                        §§goto(addr241);
                                                                        §§push(§§pop() * _loc11_.y);
                                                                     }
                                                                     §§goto(addr241);
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr216);
                                       }
                                       §§goto(addr200);
                                    }
                                    §§goto(addr213);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr682);
                           }
                        }
                        §§goto(addr682);
                     }
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc15_ || _loc2_)
                     {
                        §§goto(addr1575);
                        §§push(_loc4_.§69§);
                     }
                  }
                  else
                  {
                     this.§>!C§ = 0;
                     if(_loc15_)
                     {
                        if(!_loc16_)
                        {
                           §§goto(addr675);
                        }
                        else
                        {
                           §§goto(addr1429);
                        }
                     }
                     §§goto(addr1276);
                  }
                  §§goto(addr1590);
               }
               break;
            }
            while(true)
            {
               §§push(_loc4_);
               §§push(_loc4_.m_angularVelocity);
               if(!_loc16_)
               {
                  §§push(_loc4_.§[!F§);
                  if(!_loc16_)
                  {
                     §§push(this.§>!C§);
                     if(!_loc16_)
                     {
                        addr1514:
                        §§push(§§pop() * §§pop());
                        if(_loc15_ || _loc3_)
                        {
                           addr1512:
                           §§push(§§pop() * this.§-!$§.§9D§);
                        }
                        §§pop().m_angularVelocity = §§pop() + §§pop();
                        §§goto(addr1515);
                     }
                  }
                  §§goto(addr1512);
               }
               §§goto(addr1514);
               §§goto(addr1551);
            }
         }
         §§goto(addr99);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = §,^§;
         var _loc3_:b2Body = § X§;
         §§push(this.§-!$§.§;7§(_loc2_.§69§,_loc2_.m_angularVelocity,_loc3_.§69§,_loc3_.m_angularVelocity));
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§;!3§);
         if(_loc7_ || param1)
         {
            §§push(-§§pop());
            if(!_loc6_)
            {
               §§push(§§pop() * _loc4_);
               if(!_loc6_)
               {
                  addr56:
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && this))
            {
               §§push(this);
               §§push(this.§>!C§);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§>!C§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(_loc2_.§69§);
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_.§69§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().x);
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_.§4s§);
                           loop4:
                           while(true)
                           {
                              §§push(_loc5_);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§-!$§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop().§;!e§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§69§);
                                                      loop13:
                                                      while(_loc7_)
                                                      {
                                                         §§push(_loc2_.§69§);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc7_)
                                                            {
                                                               §§push(_loc2_.§4s§);
                                                               loop15:
                                                               for(; !(_loc6_ && this); while(_loc7_ || this)
                                                               {
                                                                  if(!(_loc7_ || param1))
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  §§goto(addr312);
                                                                  §§push(§§pop() + §§pop());
                                                               })
                                                               {
                                                                  §§push(_loc5_);
                                                                  loop16:
                                                                  for(; !_loc6_; if(_loc6_ && this)
                                                                  {
                                                                     continue;
                                                                  },§§push(§§pop() * §§pop()),if(_loc7_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        §§push(this.§-!$§);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§goto(addr198);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     §§goto(addr269);
                                                                  },§§goto(addr220))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§-!$§);
                                                                        addr371:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§;!e§);
                                                                           if(_loc6_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop().y);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              addr381:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                           }
                                                                        }
                                                                        addr220:
                                                                        continue loop8;
                                                                        addr220:
                                                                        if(!(_loc7_ || param1))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr228:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           loop35:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 §§push(_loc3_.m_angularVelocity);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(_loc3_.§[!F§);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr94:
                                                                                          §§push(§§pop() * this.§-!$§.§<!2§);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr94);
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop34:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(_loc3_.§69§);
                                                                                          if(_loc7_ || this)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             §§push(_loc3_.§69§);
                                                                                             if(_loc7_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   continue loop14;
                                                                                                }
                                                                                                if(!(_loc7_ || param1))
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc7_ || this)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(_loc7_ || this)
                                                                                                      {
                                                                                                         if(_loc6_ && this)
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         §§push(_loc3_.§4s§);
                                                                                                         if(_loc7_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  §§goto(addr380);
                                                                                                               }
                                                                                                               while(!_loc6_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                               addr294:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr212:
                                                                                                               if(_loc7_ || _loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr220);
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                               }
                                                                                                               loop27:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr269:
                                                                                                                  while(_loc7_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(this.§-!$§);
                                                                                                                     while(_loc7_ || this)
                                                                                                                     {
                                                                                                                        if(_loc6_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        §§push(§§pop().§8!R§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr294);
                                                                                                                           addr198:
                                                                                                                           §§push(§§pop().x.§8!R§);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr371);
                                                                                                                  }
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               addr268:
                                                                                                            }
                                                                                                            §§goto(addr380);
                                                                                                         }
                                                                                                         §§goto(addr220);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         addr383:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            §§push(_loc2_.m_angularVelocity);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§push(_loc2_.§[!F§);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(_loc7_ || this)
                                                                                                                  {
                                                                                                                     addr344:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        addr342:
                                                                                                                        §§push(§§pop() * this.§-!$§.§9D§);
                                                                                                                     }
                                                                                                                     §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                     break loop35;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr342);
                                                                                                            }
                                                                                                            §§goto(addr344);
                                                                                                         }
                                                                                                      }
                                                                                                      addr382:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         continue loop34;
                                                                                                      }
                                                                                                      addr312:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr228);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr249:
                                                                                                while(_loc7_ || param1)
                                                                                                {
                                                                                                   §§push(_loc3_.§4s§);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   if(_loc7_ || _loc2_)
                                                                                                   {
                                                                                                      §§goto(addr268);
                                                                                                      §§push(_loc5_);
                                                                                                   }
                                                                                                   §§goto(addr381);
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                          addr317:
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr383);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr248);
                                                                                    §§goto(addr317);
                                                                                 }
                                                                                 addr246:
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr246);
                                                                           }
                                                                        }
                                                                        §§goto(addr249);
                                                                     }
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop6;
                                                            }
                                                            §§goto(addr382);
                                                         }
                                                      }
                                                      continue loop1;
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
            §§goto(addr383);
         }
         §§goto(addr56);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(_loc10_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = §,^§;
         var _loc4_:b2Body = § X§;
         if(_loc10_ || param1)
         {
            §§push(this.m_revolute1);
            if(_loc10_ || this)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(this.m_prismatic1.§>t§());
                     if(_loc10_)
                     {
                        §§push(Number(§§pop()));
                        while(true)
                        {
                           _loc5_ = §§pop();
                           loop2:
                           while(true)
                           {
                              if(_loc10_)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.m_revolute2);
                                    if(_loc10_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc9_)
                                       {
                                          continue loop0;
                                       }
                                       if(!§§pop())
                                       {
                                          §§push(this.m_prismatic2.§>t§());
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             if(_loc10_ || _loc3_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc9_)
                                                {
                                                   _loc6_ = §§pop();
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         addr88:
                                                         §§push(this.m_revolute2.§^T§());
                                                         if(!_loc9_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc10_)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  _loc6_ = §§pop();
                                                                  addr101:
                                                                  if(_loc9_ && param1)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr139);
                                                               }
                                                               §§goto(addr148);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      if(_loc10_)
                                                      {
                                                         while(false)
                                                         {
                                                            continue loop3;
                                                         }
                                                         addr139:
                                                         §§push(this.§>i§);
                                                         if(_loc10_ || param1)
                                                         {
                                                            addr148:
                                                            §§push(_loc5_);
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               §§push(this.§[f§);
                                                               if(_loc10_)
                                                               {
                                                                  §§push(§§pop() * _loc6_);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc10_ || param1)
                                                            {
                                                            }
                                                            break;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         break;
                                                         addr77:
                                                      }
                                                      addr133:
                                                      while(true)
                                                      {
                                                         §§push(this.m_revolute1);
                                                         addr135:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§^T§());
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr137:
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            addr138:
                                                            while(true)
                                                            {
                                                               continue loop3;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr101);
                                                }
                                                break;
                                             }
                                             §§goto(addr137);
                                          }
                                          break;
                                       }
                                    }
                                    §§goto(addr88);
                                 }
                                 addr172:
                                 var _loc7_:* = §§pop();
                                 §§push(this.§;!3§);
                                 if(_loc10_)
                                 {
                                    §§push(-§§pop());
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() * _loc7_);
                                       if(!_loc10_)
                                       {
                                       }
                                       addr185:
                                       var _loc8_:* = §§pop();
                                       if(!_loc9_)
                                       {
                                          §§push(_loc3_.m_sweep);
                                          while(true)
                                          {
                                             §§push(§§pop().c);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(_loc3_.m_sweep);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop().c);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.§4s§);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(_loc8_);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(this.§-!$§);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§;!e§);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_.m_sweep);
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       loop25:
                                                                                       while(_loc10_)
                                                                                       {
                                                                                          §§push(_loc3_.m_sweep);
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().c);
                                                                                             loop27:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.§4s§);
                                                                                                   loop29:
                                                                                                   while(_loc10_)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§-!$§);
                                                                                                            addr576:
                                                                                                            while(_loc10_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(§§pop().§;!e§);
                                                                                                               if(_loc9_ && this)
                                                                                                               {
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               §§push(§§pop().y);
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                            addr380:
                                                                                                            if(!(_loc10_ || param1))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc10_ || _loc3_)
                                                                                                            {
                                                                                                               addr395:
                                                                                                               if(_loc10_ || _loc2_)
                                                                                                               {
                                                                                                                  if(_loc9_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc10_ || param1)
                                                                                                                  {
                                                                                                                     addr417:
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        continue loop29;
                                                                                                                     }
                                                                                                                     §§push(this.§-!$§);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        addr423:
                                                                                                                        §§push(§§pop().§8!R§);
                                                                                                                        if(_loc10_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr432:
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 if(_loc9_ && this)
                                                                                                                                 {
                                                                                                                                    continue loop16;
                                                                                                                                 }
                                                                                                                                 addr445:
                                                                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                 if(_loc10_ || param1)
                                                                                                                                 {
                                                                                                                                    if(_loc10_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop14;
                                                                                                                                       }
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       loop59:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ && _loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop23;
                                                                                                                                             }
                                                                                                                                             addr471:
                                                                                                                                             §§push(_loc4_.m_sweep);
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   continue loop24;
                                                                                                                                                }
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_.m_sweep);
                                                                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().a);
                                                                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.§[!F§);
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(!(_loc9_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           addr285:
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§-!$§);
                                                                                                                                                                              if(!(_loc10_ || _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              addr297:
                                                                                                                                                                              §§push(§§pop() * §§pop().§<!2§);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§-!$§);
                                                                                                                                                                                 break loop59;
                                                                                                                                                                              }
                                                                                                                                                                              addr549:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr299:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        addr554:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().a = §§pop();
                                                                                                                                                                           addr555:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_.m_sweep);
                                                                                                                                                                              continue loop24;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr554:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr548:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr549);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     addr553:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr554);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr552:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr297);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr553);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr285);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr299);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().a);
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.§[!F§);
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr548);
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr553);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr540:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr554);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr538:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr538:
                                                                                                                                                }
                                                                                                                                                §§goto(addr540);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                loop58:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   if(_loc10_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc10_ || _loc2_))
                                                                                                                                                      {
                                                                                                                                                         continue loop25;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                                                                      if(!(_loc10_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue loop26;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         continue loop12;
                                                                                                                                                      }
                                                                                                                                                      addr347:
                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                      if(_loc10_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc10_ || param1))
                                                                                                                                                         {
                                                                                                                                                            continue loop27;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            continue loop13;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_.§4s§);
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  addr373:
                                                                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr380);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     addr501:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc10_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(this.§-!$§);
                                                                                                                                                                           while(_loc10_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().§8!R§);
                                                                                                                                                                              break loop58;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr576);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop21;
                                                                                                                                                                     §§goto(addr373);
                                                                                                                                                                  }
                                                                                                                                                                  addr500:
                                                                                                                                                               }
                                                                                                                                                               while(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  while(!(_loc9_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop58;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr445);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop28;
                                                                                                                                                               }
                                                                                                                                                               while(!(_loc9_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  while(_loc10_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr538);
                                                                                                                                                                        addr220:
                                                                                                                                                                        §§push(_loc3_.m_sweep);
                                                                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                                                                                           addr227:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop22;
                                                                                                                                                               }
                                                                                                                                                               continue loop17;
                                                                                                                                                               addr523:
                                                                                                                                                               addr593:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr417);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr445);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            addr496:
                                                                                                                                                            while(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr500);
                                                                                                                                                               §§push(_loc4_.§4s§);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr611);
                                                                                                                                                            §§goto(addr347);
                                                                                                                                                         }
                                                                                                                                                         addr495:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr496);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.m_sweep);
                                                                                                                                                         continue loop26;
                                                                                                                                                      }
                                                                                                                                                      addr485:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   addr522:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr523);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr423);
                                                                                                                                                }
                                                                                                                                                addr521:
                                                                                                                                             }
                                                                                                                                             §§goto(addr538);
                                                                                                                                          }
                                                                                                                                          §§goto(addr534);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr552);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr496);
                                                                                                                                 }
                                                                                                                                 §§goto(addr526);
                                                                                                                              }
                                                                                                                              §§goto(addr501);
                                                                                                                           }
                                                                                                                           §§goto(addr522);
                                                                                                                        }
                                                                                                                        §§goto(addr521);
                                                                                                                     }
                                                                                                                     §§goto(addr513);
                                                                                                                  }
                                                                                                                  §§goto(addr445);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr593);
                                                                                                                  §§goto(addr395);
                                                                                                               }
                                                                                                               addr592:
                                                                                                            }
                                                                                                            §§goto(addr432);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr592);
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop11;
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
                                       §§goto(addr227);
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr138);
                           }
                        }
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr133);
               }
            }
            §§goto(addr135);
         }
         §§goto(addr77);
      }
   }
}
