package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Vec2;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
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
      
      private var §^!z§:b2Jacobian;
      
      private var §6s§:Number;
      
      private var §?!L§:Number;
      
      private var §@e§:Number;
      
      private var §?;§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc6_)
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               addr68:
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  loop2:
                  while(!_loc6_)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        addr39:
                        while(true)
                        {
                           this.§^!z§ = new b2Jacobian();
                           addr44:
                           while(!_loc6_)
                           {
                              if(_loc6_)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            super(param1);
            if(!(_loc6_ && this))
            {
               if(!_loc6_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr39);
               }
               §§goto(addr68);
            }
            §§goto(addr44);
         }
         §§push(param1.joint1.§="1§);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.joint2.§="1§);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc6_)
         {
            this.m_revolute1 = null;
            loop7:
            while(true)
            {
               this.m_prismatic1 = null;
               loop8:
               while(true)
               {
                  this.m_revolute2 = null;
                  loop9:
                  while(true)
                  {
                     this.m_prismatic2 = null;
                     loop10:
                     while(true)
                     {
                        this.m_ground1 = param1.joint1.§]"$§();
                        loop11:
                        while(true)
                        {
                           §0"7§ = param1.joint1.§5v§();
                           loop12:
                           while(true)
                           {
                              §§push(_loc2_);
                              while(true)
                              {
                                 if(§§pop() != b2Joint.e_revoluteJoint)
                                 {
                                    this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                    continue loop10;
                                 }
                                 loop42:
                                 while(true)
                                 {
                                    this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
                                    addr429:
                                    while(true)
                                    {
                                       §§push(this.m_groundAnchor1);
                                       addr406:
                                       loop40:
                                       while(true)
                                       {
                                          §§pop().SetV(this.m_revolute1.m_localAnchor1);
                                          addr410:
                                          while(true)
                                          {
                                             if(_loc6_ && _loc3_)
                                             {
                                                continue loop42;
                                             }
                                             §§push(this.m_localAnchor1);
                                             while(true)
                                             {
                                                §§pop().SetV(this.m_revolute1.m_localAnchor2);
                                                addr402:
                                                while(true)
                                                {
                                                   §§push(this.m_revolute1.§^!H§());
                                                   addr385:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr386:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         continue loop11;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop40;
                                          }
                                       }
                                    }
                                 }
                                 loop21:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    if(§§pop() == b2Joint.e_revoluteJoint)
                                    {
                                       continue loop7;
                                    }
                                    this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
                                    while(true)
                                    {
                                       if(_loc7_ || _loc3_)
                                       {
                                          if(_loc7_)
                                          {
                                             if(_loc7_)
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                §§push(this.m_groundAnchor2);
                                                if(!_loc6_)
                                                {
                                                   §§pop().SetV(this.m_prismatic2.m_localAnchor1);
                                                   loop23:
                                                   while(true)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.m_localAnchor2);
                                                            if(!_loc6_)
                                                            {
                                                               §§pop().SetV(this.m_prismatic2.m_localAnchor2);
                                                               loop45:
                                                               while(true)
                                                               {
                                                                  §§push(this.m_prismatic2.§9[§());
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        addr172:
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc7_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           continue loop21;
                                                                        }
                                                                        addr251:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 addr255:
                                                                                 while(_loc7_ || this)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§?!L§ = param1.§`x§;
                                                                                       loop31:
                                                                                       while(_loc7_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(_loc4_);
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                §§push(this.§?!L§);
                                                                                                if(_loc7_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() * _loc5_);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§pop().§6s§ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop45;
                                                                                                }
                                                                                                continue loop31;
                                                                                             }
                                                                                             continue loop45;
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       continue loop21;
                                                                                       addr191:
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 loop36:
                                                                                 while(true)
                                                                                 {
                                                                                    addr324:
                                                                                    while(true)
                                                                                    {
                                                                                       this.m_ground2 = param1.joint2.§]"$§();
                                                                                       addr330:
                                                                                       while(true)
                                                                                       {
                                                                                          § `§ = param1.joint2.§5v§();
                                                                                          continue loop21;
                                                                                       }
                                                                                       continue loop36;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr254:
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                        §§goto(addr385);
                                                                     }
                                                                     §§goto(addr254);
                                                                  }
                                                                  §§goto(addr172);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               loop47:
                                                               while(true)
                                                               {
                                                                  §§pop().SetV(this.m_revolute2.m_localAnchor2);
                                                                  addr270:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_ && this)
                                                                     {
                                                                        loop25:
                                                                        for(; _loc6_; while(true)
                                                                        {
                                                                           §§pop().SetV(this.m_revolute2.m_localAnchor1);
                                                                           continue loop25;
                                                                        })
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(this.m_groundAnchor2);
                                                                                    continue loop25;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§push(this.m_localAnchor2);
                                                                        continue loop47;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        break loop23;
                                                                     }
                                                                     §§goto(addr251);
                                                                     §§push(this.m_revolute2.§^!H§());
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr402);
                                                         }
                                                         addr213:
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   §§goto(addr410);
                                                }
                                                §§goto(addr285);
                                             }
                                             §§goto(addr353);
                                          }
                                          §§goto(addr330);
                                       }
                                       §§goto(addr255);
                                    }
                                    continue loop12;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr213);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0"7.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: `.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§?;§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(this.§^!z§.§<!4§.x);
                  if(_loc2_ || param1)
                  {
                     addr54:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_ || _loc3_)
                     {
                        addr62:
                        §§push(this.§?;§);
                        if(_loc2_ || param1)
                        {
                           §§goto(addr94);
                        }
                        §§push(§§pop() * §§pop());
                     }
                  }
                  addr94:
                  §§push(§§pop() * §§pop());
                  if(!(_loc3_ && param1))
                  {
                     §§push(this.§^!z§.§<!4§.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
               §§goto(addr54);
            }
            §§goto(addr62);
         }
         §§goto(addr54);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal:: `.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc8_ && this))
         {
            §§push(§§pop() - b2internal:: `.m_sweep.localCenter.x);
            if(_loc9_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!_loc8_)
         {
            §§push(§§pop() - b2internal:: `.m_sweep.localCenter.y);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(!(_loc8_ && _loc3_))
         {
            §§push(_loc3_);
            if(_loc9_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc8_ && param1))
               {
                  addr81:
                  §§push(_loc2_.col2.x);
                  if(_loc9_)
                  {
                     addr88:
                     §§push(§§pop() + §§pop() * _loc4_);
                     if(_loc9_)
                     {
                        addr91:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push(_loc2_.col1.y);
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(_loc3_);
                           if(_loc9_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc8_)
                              {
                                 §§push(_loc2_.col2.y);
                                 if(_loc9_ || param1)
                                 {
                                    addr141:
                                    §§push(§§pop() * _loc4_);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc9_)
                                       {
                                          addr148:
                                          §§push(Number(§§pop()));
                                          if(_loc9_)
                                          {
                                             _loc4_ = §§pop();
                                             if(_loc9_ || this)
                                             {
                                                §§push(_loc5_);
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr176:
                                                      §§push(this.§?;§);
                                                      if(!_loc8_)
                                                      {
                                                         addr180:
                                                         §§push(§§pop() * this.§^!z§.§<!4§.x);
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            addr192:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc6_:* = §§pop();
                                                         §§push(this.§?;§);
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            §§push(§§pop() * this.§^!z§.§<!4§.y);
                                                            if(!_loc8_)
                                                            {
                                                               addr210:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc7_:* = §§pop();
                                                            §§push(param1);
                                                            if(_loc9_)
                                                            {
                                                               §§push(this.§?;§);
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  §§push(this.§^!z§.§?!G§);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr275);
                                                                           }
                                                                           addr275:
                                                                           §§push(_loc4_);
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(_loc6_);
                                                                           }
                                                                           return §§pop() * (§§pop() + §§pop());
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                   }
                                                   §§goto(addr180);
                                                }
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr192);
                                    }
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr88);
               }
               §§goto(addr91);
            }
            §§goto(addr88);
         }
         §§goto(addr81);
      }
      
      public function §#8§() : Number
      {
         return this.§?!L§;
      }
      
      public function §-!e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!L§ = param1;
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
         var _loc9_:* = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::0"7;
         var _loc5_:b2Body = b2internal:: `;
         §§push(0);
         if(!_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(!_loc15_)
         {
            §§push(this.§^!z§);
            loop0:
            while(true)
            {
               §§pop().§@!s§();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(_loc16_)
                        {
                           §§push(§§pop().R);
                           if(_loc16_ || _loc2_)
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§@!r§;
                              if(_loc16_ || param1)
                              {
                                 §§push(_loc10_.col1);
                                 if(_loc16_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc16_)
                                    {
                                       §§push(_loc11_.x);
                                       if(!_loc15_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc15_)
                                          {
                                             §§push(_loc10_.col2);
                                             if(!_loc15_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc16_ || _loc3_)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(_loc16_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc16_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc16_ || _loc3_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc16_ || this)
                                                            {
                                                               addr208:
                                                               _loc6_ = §§pop();
                                                               if(_loc16_)
                                                               {
                                                                  addr213:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     addr221:
                                                                     §§push(_loc11_.x);
                                                                     if(_loc16_)
                                                                     {
                                                                        addr225:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc15_ && _loc3_))
                                                                        {
                                                                           addr235:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr241:
                                                                              addr238:
                                                                              addr240:
                                                                              §§push(§§pop() + §§pop() * _loc11_.y);
                                                                              if(_loc15_)
                                                                              {
                                                                              }
                                                                              addr245:
                                                                              _loc7_ = §§pop();
                                                                              _loc10_ = _loc4_.m_xf.R;
                                                                              if(_loc16_ || _loc3_)
                                                                              {
                                                                                 addr571:
                                                                                 _loc8_ = Number(this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x);
                                                                                 addr572:
                                                                                 addr569:
                                                                                 addr565:
                                                                                 addr570:
                                                                                 addr568:
                                                                                 addr567:
                                                                                 §§push(this.m_localAnchor1);
                                                                                 if(!(_loc15_ && param1))
                                                                                 {
                                                                                    addr545:
                                                                                    §§push(§§pop().y);
                                                                                    §§push(_loc4_.m_sweep);
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       if(_loc16_ || _loc2_)
                                                                                       {
                                                                                          addr560:
                                                                                          _loc9_ = Number(§§pop() - §§pop().y);
                                                                                          addr507:
                                                                                          addr561:
                                                                                          addr558:
                                                                                          addr559:
                                                                                          §§push(_loc10_.col1.x * _loc8_);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             addr515:
                                                                                             §§push(§§pop() + _loc10_.col2.x * _loc9_);
                                                                                             if(_loc16_ || param1)
                                                                                             {
                                                                                                addr523:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   if(_loc16_ || param1)
                                                                                                   {
                                                                                                      _loc13_ = §§pop();
                                                                                                      addr533:
                                                                                                      §§push(_loc10_.col1);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr484:
                                                                                                         §§push(§§pop().y * _loc8_);
                                                                                                         §§push(_loc10_.col2);
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            addr489:
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               addr492:
                                                                                                               §§push(§§pop() + §§pop() * _loc9_);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     addr499:
                                                                                                                     _loc9_ = Number(§§pop());
                                                                                                                     addr500:
                                                                                                                     §§push(_loc13_);
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              addr417:
                                                                                                                              if(_loc16_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr425:
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(_loc16_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc16_ || param1)
                                                                                                                                    {
                                                                                                                                       addr440:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(!(_loc15_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             addr451:
                                                                                                                                             §§push(§§pop() * _loc6_);
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                addr455:
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(_loc16_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr463:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         _loc12_ = §§pop();
                                                                                                                                                         addr468:
                                                                                                                                                         if(_loc16_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr393:
                                                                                                                                                            §§push(this.§^!z§.§[`§);
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().Set(§§pop(),§§pop());
                                                                                                                                                            addr403:
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               addr377:
                                                                                                                                                               §§push(this.§^!z§);
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().§"!K§ = §§pop();
                                                                                                                                                                  addr387:
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_.§;k§);
                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc16_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc15_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc16_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc15_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_.§6x§);
                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                   if(!_loc15_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr316:
                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr320:
                                                                                                                                                                                                            §§push(§§pop() * _loc12_);
                                                                                                                                                                                                            if(!(_loc15_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr328:
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!_loc15_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr333:
                                                                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr440);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc16_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc16_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc16_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc16_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr377);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr573);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr572);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr533);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr468);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr387);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr507);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr515);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr484);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr417);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr463);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr425);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr492);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr515);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr320);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr451);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr316);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr507);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr484);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr489);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr451);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr328);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr484);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr455);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr333);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr403);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr393);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr561);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr500);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr560);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr523);
                                                                                                                                                }
                                                                                                                                                §§goto(addr499);
                                                                                                                                             }
                                                                                                                                             §§goto(addr569);
                                                                                                                                          }
                                                                                                                                          §§goto(addr492);
                                                                                                                                       }
                                                                                                                                       §§goto(addr451);
                                                                                                                                    }
                                                                                                                                    §§goto(addr558);
                                                                                                                                 }
                                                                                                                                 §§goto(addr515);
                                                                                                                              }
                                                                                                                              §§goto(addr560);
                                                                                                                           }
                                                                                                                           §§goto(addr425);
                                                                                                                        }
                                                                                                                        §§goto(addr440);
                                                                                                                     }
                                                                                                                     §§goto(addr417);
                                                                                                                  }
                                                                                                                  §§goto(addr571);
                                                                                                               }
                                                                                                               §§goto(addr499);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr515);
                                                                                                      }
                                                                                                      §§goto(addr560);
                                                                                                   }
                                                                                                   §§goto(addr565);
                                                                                                }
                                                                                                §§goto(addr570);
                                                                                             }
                                                                                             §§goto(addr559);
                                                                                          }
                                                                                          §§goto(addr545);
                                                                                       }
                                                                                       §§goto(addr568);
                                                                                    }
                                                                                    §§goto(addr567);
                                                                                 }
                                                                                 addr564:
                                                                                 §§goto(addr564);
                                                                              }
                                                                              §§goto(addr560);
                                                                           }
                                                                           §§goto(addr241);
                                                                        }
                                                                        §§goto(addr245);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr241);
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr240);
                                                }
                                                §§goto(addr225);
                                             }
                                             §§goto(addr235);
                                          }
                                       }
                                       §§goto(addr241);
                                    }
                                    §§goto(addr208);
                                 }
                              }
                              §§goto(addr213);
                           }
                           addr636:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§@!r§;
                           if(_loc16_)
                           {
                              §§push(_loc10_.col1);
                              if(_loc16_)
                              {
                                 §§push(§§pop().x);
                                 if(_loc16_)
                                 {
                                    §§push(_loc11_.x);
                                    if(_loc16_ || _loc3_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc15_)
                                       {
                                          addr664:
                                          §§push(_loc10_.col2);
                                          if(_loc16_ || _loc3_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc16_)
                                             {
                                                addr676:
                                                §§push(_loc11_.y);
                                                if(!(_loc15_ && param1))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc16_ || _loc3_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc15_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc15_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(_loc16_)
                                                            {
                                                               addr704:
                                                               §§push(_loc10_.col1.y);
                                                               if(_loc16_)
                                                               {
                                                                  addr707:
                                                                  §§push(_loc11_.x);
                                                                  if(!(_loc15_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc15_ && _loc3_))
                                                                     {
                                                                        addr724:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(_loc16_ || this)
                                                                        {
                                                                           addr737:
                                                                           addr736:
                                                                           §§push(§§pop() + §§pop() * _loc11_.y);
                                                                           if(_loc15_ && _loc2_)
                                                                           {
                                                                           }
                                                                           addr746:
                                                                           _loc7_ = §§pop();
                                                                           _loc10_ = _loc5_.m_xf.R;
                                                                           if(!_loc15_)
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              loop38:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr1150:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.m_sweep);
                                                                                    addr1152:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       addr1153:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr1154:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr1155:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr1156:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   continue loop38;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr1149:
                                                                           }
                                                                           loop45:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              if(!(_loc15_ && param1))
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 loop46:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.m_sweep);
                                                                                    if(_loc16_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          loop47:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!(_loc15_ && this))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             loop48:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc9_ = §§pop();
                                                                                                loop49:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc10_.col1);
                                                                                                   loop50:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      loop51:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(!(_loc15_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            loop52:
                                                                                                            while(_loc16_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(_loc10_.col2);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        addr1103:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1102:
                                                                                                                  }
                                                                                                                  loop54:
                                                                                                                  while(!_loc15_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     loop55:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr1108:
                                                                                                                        addr901:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc13_ = §§pop();
                                                                                                                           addr1109:
                                                                                                                           while(_loc16_)
                                                                                                                           {
                                                                                                                              continue loop50;
                                                                                                                           }
                                                                                                                           continue loop49;
                                                                                                                        }
                                                                                                                        if(_loc15_ && this)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        _loc14_ = §§pop();
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           addr911:
                                                                                                                           if(!(_loc15_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr918:
                                                                                                                              if(_loc16_ || this)
                                                                                                                              {
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       loop78:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§^!z§);
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§?!L§);
                                                                                                                                             if(!(_loc15_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(-§§pop());
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * _loc12_);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§pop().§?!G§ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc16_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc15_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§?!L§);
                                                                                                                                                         if(_loc16_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc15_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  addr794:
                                                                                                                                                                  if(!(_loc16_ || _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     while(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        continue loop48;
                                                                                                                                                                        §§goto(addr794);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop54;
                                                                                                                                                                     addr1039:
                                                                                                                                                                  }
                                                                                                                                                                  §§push(this.§?!L§);
                                                                                                                                                                  if(_loc16_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc16_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr822:
                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc16_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_.§;k§);
                                                                                                                                                                                    if(!(_loc15_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr840:
                                                                                                                                                                                       §§push(_loc5_.§6x§);
                                                                                                                                                                                       if(!(_loc15_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr858:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr856:
                                                                                                                                                                                                §§push(§§pop() * _loc12_);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr861:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop47;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr871:
                                                                                                                                                                                                   if(_loc16_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop52;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr883:
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         if(_loc16_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc15_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     addr997:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr996:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1010:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                     addr1011:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        addr1012:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                           addr1013:
                                                                                                                                                                                                                           while(_loc16_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              while(_loc16_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§^!z§);
                                                                                                                                                                                                                                    addr960:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().§<!4§);
                                                                                                                                                                                                                                       §§push(this.§?!L§);
                                                                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                          if(!(_loc15_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr977:
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                §§push(this.§?!L§);
                                                                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                                                                                                                   if(!(_loc15_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * _loc7_);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().Set(§§pop(),§§pop());
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop78;
                                                                                                                                                                                                                                                §§goto(addr911);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr992:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr977);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr918);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr871);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc15_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                       addr1074:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                                                                                                                    while(_loc16_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr996);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop45;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1108);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop46;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1150);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(!(_loc15_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1010);
                                                                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop48;
                                                                                                                                                                                                            addr1002:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1013);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr995);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1016);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr883);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1011);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr856);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr858);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1058:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       addr1059:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc16_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1069);
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop51;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1155);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1058:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1069);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1010);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr861);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1103);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr1057:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1058);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr840);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr997);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1012);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr822);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1059);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr871);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1109);
                                                                                                                                             }
                                                                                                                                             continue loop55;
                                                                                                                                             addr949:
                                                                                                                                          }
                                                                                                                                          §§goto(addr960);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1158);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1074);
                                                                                                                              }
                                                                                                                              §§goto(addr1019);
                                                                                                                           }
                                                                                                                           §§goto(addr992);
                                                                                                                        }
                                                                                                                        §§goto(addr949);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1154);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1156);
                                                                                                         }
                                                                                                         §§goto(addr1102);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1153);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr1152);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr1149);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr737);
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§goto(addr737);
                                                               }
                                                               §§goto(addr746);
                                                            }
                                                            §§goto(addr737);
                                                         }
                                                         §§goto(addr707);
                                                      }
                                                      §§goto(addr724);
                                                   }
                                                   §§goto(addr737);
                                                }
                                                §§goto(addr736);
                                             }
                                             §§goto(addr737);
                                          }
                                          §§goto(addr724);
                                       }
                                       §§goto(addr707);
                                    }
                                    §§goto(addr676);
                                 }
                                 §§goto(addr664);
                              }
                              §§goto(addr704);
                           }
                           §§goto(addr737);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(this.§^!z§);
                        if(_loc15_)
                        {
                           break;
                        }
                        if(!_loc15_)
                        {
                           §§pop().§"!K§ = -1;
                           while(true)
                           {
                              if(!(_loc16_ || this))
                              {
                                 continue loop1;
                              }
                              §§push(_loc14_);
                              if(_loc16_ || param1)
                              {
                                 §§push(_loc4_.§6x§);
                                 if(_loc16_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc16_ || _loc2_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc15_ && param1))
                                       {
                                          addr89:
                                          _loc14_ = §§pop();
                                          if(!_loc15_)
                                          {
                                             continue;
                                          }
                                          loop15:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.m_angularVelocity);
                                             if(!(_loc15_ && _loc3_))
                                             {
                                                §§push(_loc4_.§6x§);
                                                if(_loc16_ || _loc2_)
                                                {
                                                   §§push(this.§?;§);
                                                   if(!(_loc15_ && _loc3_))
                                                   {
                                                      addr1517:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc16_ || this)
                                                      {
                                                         addr1515:
                                                         §§push(§§pop() * this.§^!z§.§"!K§);
                                                      }
                                                      §§pop().m_angularVelocity = §§pop() + §§pop();
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_.§,b§);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.§,b§);
                                                            addr1396:
                                                            loop18:
                                                            while(!(_loc15_ && this))
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!(_loc15_ && _loc2_))
                                                               {
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(_loc5_.§;k§);
                                                                     loop19:
                                                                     while(_loc16_ || _loc2_)
                                                                     {
                                                                        §§push(this.§?;§);
                                                                        if(_loc16_)
                                                                        {
                                                                           if(!_loc15_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§push(this.§^!z§);
                                                                                       loop21:
                                                                                       while(!(_loc15_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop().§<!4§);
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr1444:
                                                                                             addr1578:
                                                                                             while(!(_loc15_ && _loc3_))
                                                                                             {
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         if(_loc16_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  break;
                                                                                                                  addr1467:
                                                                                                               }
                                                                                                               §§pop().x = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc15_ && this))
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               addr1373:
                                                                                                               if(!(_loc16_ || _loc3_))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§pop().y = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  §§goto(addr1467);
                                                                                                               }
                                                                                                               §§push(_loc5_);
                                                                                                               §§push(_loc5_.m_angularVelocity);
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  §§push(_loc5_.§6x§);
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     §§push(this.§?;§);
                                                                                                                     if(_loc16_ || param1)
                                                                                                                     {
                                                                                                                        addr1270:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc16_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr1268:
                                                                                                                           §§push(§§pop() * this.§^!z§.§?!G§);
                                                                                                                        }
                                                                                                                        §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                        return;
                                                                                                                        addr1271:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1268);
                                                                                                               }
                                                                                                               §§goto(addr1270);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            addr1547:
                                                                                                            addr1464:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr1574:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§^!z§);
                                                                                                               break loop21;
                                                                                                            }
                                                                                                            addr1574:
                                                                                                         }
                                                                                                      }
                                                                                                      break;
                                                                                                      addr1363:
                                                                                                      if(_loc15_ && _loc2_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      §§goto(addr1373);
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr1547);
                                                                                                   }
                                                                                                   addr1546:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr1574);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                loop36:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr1580:
                                                                                                   loop37:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      addr1581:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_.§,b§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc15_ && this))
                                                                                                            {
                                                                                                               §§push(_loc4_.§,b§);
                                                                                                               break loop18;
                                                                                                            }
                                                                                                            addr1554:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_.§,b§);
                                                                                                               addr1556:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     §§push(_loc4_.§;k§);
                                                                                                                     break loop19;
                                                                                                                  }
                                                                                                                  continue loop37;
                                                                                                               }
                                                                                                            }
                                                                                                            addr1282:
                                                                                                            if(_loc15_ && this)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(_loc5_.§,b§);
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            if(!(_loc15_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc16_ || this)
                                                                                                               {
                                                                                                                  if(_loc16_ || this)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.§;k§);
                                                                                                                     if(_loc16_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(_loc15_ && _loc2_)
                                                                                                                        {
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                        §§push(this.§?;§);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           if(_loc16_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc16_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 §§push(this.§^!z§);
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    break loop20;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().§<!4§);
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                                 addr1362:
                                                                                                                                 §§goto(addr1363);
                                                                                                                                 §§push(§§pop() * §§pop().y);
                                                                                                                              }
                                                                                                                              §§goto(addr1363);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1444);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1362);
                                                                                                                     }
                                                                                                                     §§goto(addr1363);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_.§;k§);
                                                                                                                        addr1534:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§?;§);
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§^!z§);
                                                                                                                                 break loop20;
                                                                                                                              }
                                                                                                                              addr1539:
                                                                                                                           }
                                                                                                                           addr1545:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1532:
                                                                                                                  }
                                                                                                                  §§goto(addr1546);
                                                                                                               }
                                                                                                               §§goto(addr1373);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr1556);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop37;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§[`§);
                                                                                          addr1577:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr1578);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1534);
                                                                                 }
                                                                                 §§goto(addr1539);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§[`§);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                              }
                                                                              §§goto(addr1577);
                                                                           }
                                                                           §§goto(addr1545);
                                                                        }
                                                                        §§goto(addr1444);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr1573);
                                                                     }
                                                                  }
                                                                  §§goto(addr1580);
                                                               }
                                                               §§goto(addr1464);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr1532);
                                                               §§goto(addr1396);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr1515);
                                             }
                                             §§goto(addr1517);
                                          }
                                       }
                                       else
                                       {
                                          addr629:
                                          _loc14_ = Number(§§pop());
                                          addr628:
                                          if(!_loc15_)
                                          {
                                             addr1158:
                                             §§push(this);
                                             if(_loc16_)
                                             {
                                                §§push(_loc14_);
                                                if(_loc16_ || _loc3_)
                                                {
                                                   if(§§pop() > 0)
                                                   {
                                                      addr1172:
                                                      §§push(1 / _loc14_);
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc16_ || _loc2_))
                                                         {
                                                            addr1199:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         else
                                                         {
                                                            addr1190:
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(_loc16_ || _loc2_)
                                                      {
                                                         §§goto(addr1199);
                                                      }
                                                   }
                                                   §§pop().§@e§ = §§pop();
                                                   if(_loc16_ || this)
                                                   {
                                                      if(!param1.§1!w§)
                                                      {
                                                         this.§?;§ = 0;
                                                         if(_loc16_ || _loc3_)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  if(_loc15_)
                                                                  {
                                                                     addr1552:
                                                                     §§goto(addr1554);
                                                                     §§push(_loc4_.§,b§);
                                                                  }
                                                                  §§goto(addr1270);
                                                               }
                                                               §§goto(addr1581);
                                                            }
                                                            §§goto(addr1381);
                                                         }
                                                         §§goto(addr1271);
                                                      }
                                                      §§goto(addr1552);
                                                   }
                                                   §§goto(addr1270);
                                                }
                                                §§goto(addr1190);
                                             }
                                             §§goto(addr1172);
                                          }
                                       }
                                       §§goto(addr1270);
                                    }
                                 }
                                 else
                                 {
                                    addr620:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc15_ && _loc3_))
                                    {
                                       §§goto(addr628);
                                    }
                                 }
                                 §§goto(addr629);
                              }
                              §§goto(addr89);
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                     §§push(this.§?!L§);
                     if(!_loc15_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().§?!G§ = §§pop();
                     if(!_loc15_)
                     {
                        §§goto(addr593);
                     }
                     §§goto(addr1270);
                     §§goto(addr1158);
                  }
                  §§goto(addr636);
               }
            }
         }
         §§goto(addr112);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = b2internal::0"7;
         var _loc3_:b2Body = b2internal:: `;
         §§push(this.§^!z§.§6!C§(_loc2_.§,b§,_loc2_.m_angularVelocity,_loc3_.§,b§,_loc3_.m_angularVelocity));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§@e§);
         if(_loc6_ || this)
         {
            §§push(-§§pop());
            if(!_loc7_)
            {
               §§push(§§pop() * _loc4_);
               if(!_loc6_)
               {
               }
               addr54:
               var _loc5_:* = §§pop();
               if(_loc6_)
               {
                  §§push(this);
                  §§push(this.§?;§);
                  if(_loc6_ || this)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§?;§ = §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_.§,b§);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.§,b§);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc6_ || param1)
                           {
                              §§push(_loc2_.§;k§);
                              loop3:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 addr400:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr401:
                                    while(true)
                                    {
                                       §§push(this.§^!z§);
                                       addr403:
                                       while(true)
                                       {
                                          §§push(§§pop().§[`§);
                                          addr404:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr405:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr406:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 loop15:
                                 while(true)
                                 {
                                    if(_loc7_ && this)
                                    {
                                       continue loop3;
                                    }
                                    §§push(_loc5_);
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop16:
                                       while(true)
                                       {
                                          §§push(this.§^!z§);
                                          loop17:
                                          while(!(_loc7_ && this))
                                          {
                                             §§push(§§pop().§[`§);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop().y);
                                                loop18:
                                                for(; _loc6_ || _loc2_; while(!(_loc7_ && _loc3_))
                                                {
                                                   §§goto(addr289);
                                                   §§push(§§pop() * §§pop());
                                                })
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop20:
                                                      while(true)
                                                      {
                                                         §§pop().y = §§pop();
                                                         while(!_loc7_)
                                                         {
                                                            §§push(_loc2_);
                                                            §§push(_loc2_.m_angularVelocity);
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               §§push(_loc2_.§6x§);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr324:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        §§push(this.§^!z§.§"!K§);
                                                                     }
                                                                     §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                     loop22:
                                                                     while(!(_loc7_ && _loc2_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.§,b§);
                                                                           addr201:
                                                                           loop24:
                                                                           for(; _loc6_ || this; §§push(_loc3_.§,b§),if(!_loc6_)
                                                                           {
                                                                              continue;
                                                                           },§§goto(addr97))
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(_loc3_.§,b§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(_loc3_.§;k§);
                                                                                       if(!(_loc7_ && param1))
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          if(!(_loc7_ && this))
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(_loc7_ && _loc3_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                break loop15;
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                §§push(this.§^!z§);
                                                                                                while(!(_loc7_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop().§<!4§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                }
                                                                                                continue loop17;
                                                                                                addr272:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr289:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr290:
                                                                                                   addr152:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      addr291:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         addr408:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_.§,b§);
                                                                                                            break loop24;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   if(!(_loc6_ || this))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!(_loc6_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   §§push(this.§^!z§);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop().§<!4§);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr174:
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc7_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            addr190:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               while(!_loc7_)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  §§push(_loc3_);
                                                                                                                  §§push(_loc3_.m_angularVelocity);
                                                                                                                  if(!(_loc7_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(_loc3_.§6x§);
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           addr87:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              §§push(this.§^!z§.§?!G§);
                                                                                                                           }
                                                                                                                           §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              return;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr87);
                                                                                                               }
                                                                                                               §§goto(addr291);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            addr340:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr401);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr272);
                                                                                                   }
                                                                                                   §§goto(addr280);
                                                                                                }
                                                                                                addr289:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr406);
                                                                                       }
                                                                                       §§goto(addr289);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       §§goto(addr408);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr290);
                                                                                 addr97:
                                                                                 §§push(_loc3_.§,b§);
                                                                                 if(!(_loc6_ || this))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    if(_loc7_ && this)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(!(_loc7_ && this))
                                                                                       {
                                                                                          §§push(_loc3_.§;k§);
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          §§goto(addr182);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr290);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr190);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr340);
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr339);
                                                                              §§goto(addr201);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                §§goto(addr405);
                                                addr371:
                                             }
                                             §§goto(addr404);
                                          }
                                          §§goto(addr403);
                                       }
                                    }
                                    §§goto(addr371);
                                 }
                                 §§goto(addr400);
                              }
                           }
                           §§goto(addr407);
                        }
                     }
                  }
               }
               §§goto(addr333);
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr54);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(!(_loc10_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::0"7;
         var _loc4_:b2Body = b2internal:: `;
         if(!(_loc10_ && this))
         {
            §§push(this.m_revolute1);
            if(_loc9_ || param1)
            {
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     addr131:
                     §§push(this.m_revolute1.§^!H§());
                     loop59:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc10_ && this))
                        {
                           _loc5_ = §§pop();
                           loop3:
                           while(true)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(this.m_revolute2);
                                 if(_loc9_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this.m_prismatic2.§9[§());
                                       if(_loc9_ || param1)
                                       {
                                          if(!_loc10_)
                                          {
                                             addr59:
                                             if(_loc9_ || _loc3_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc9_)
                                                {
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      if(_loc9_)
                                                      {
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(false)
                                                               {
                                                                  continue;
                                                               }
                                                               addr142:
                                                               §§push(this.§6s§);
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(this.§?!L§);
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        §§push(§§pop() * _loc6_);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc9_)
                                                                  {
                                                                     addr170:
                                                                     var _loc7_:Number = §§pop();
                                                                     §§push(this.§@e§);
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() * _loc7_);
                                                                           if(!_loc9_)
                                                                           {
                                                                           }
                                                                           addr193:
                                                                           var _loc8_:* = §§pop();
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              §§push(_loc3_.m_sweep);
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().c);
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_.m_sweep);
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          loop8:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_.§;k§);
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                loop10:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   loop11:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§^!z§);
                                                                                                      loop12:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§[`§);
                                                                                                         loop13:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            loop14:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               loop15:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  loop16:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     loop17:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.m_sweep);
                                                                                                                        loop18:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           loop19:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.m_sweep);
                                                                                                                              loop20:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 loop21:
                                                                                                                                 while(_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.§;k§);
                                                                                                                                       loop22:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          loop23:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             loop24:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§^!z§);
                                                                                                                                                loop25:
                                                                                                                                                while(_loc9_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().§[`§);
                                                                                                                                                   if(_loc9_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      while(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                         }
                                                                                                                                                         addr411:
                                                                                                                                                         if(_loc10_ && _loc2_)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc10_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§^!z§);
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               addr430:
                                                                                                                                                               §§push(§§pop().§<!4§);
                                                                                                                                                               if(!(_loc10_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  addr439:
                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     addr441:
                                                                                                                                                                     if(_loc9_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        addr449:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!(_loc10_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           addr456:
                                                                                                                                                                           if(!(_loc9_ || _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop22;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              addr466:
                                                                                                                                                                              §§pop().y = §§pop() + §§pop();
                                                                                                                                                                              loop55:
                                                                                                                                                                              while(!(_loc10_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 loop56:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_.m_sweep);
                                                                                                                                                                                    if(!(_loc9_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr530:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().c);
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop5;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc4_.m_sweep);
                                                                                                                                                                                             if(!(_loc10_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop6;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr358:
                                                                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                                                                if(_loc9_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc9_ || param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop21;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                   if(_loc9_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr381:
                                                                                                                                                                                                      if(!(_loc10_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc4_.§;k§);
                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc9_ || param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop24;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc10_ && _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop15;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr411);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr439);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr449);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(!(_loc10_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc4_.§;k§);
                                                                                                                                                                                                               continue loop22;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop16;
                                                                                                                                                                                                            addr492:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(_loc9_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc10_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                            break loop55;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop8;
                                                                                                                                                                                                         §§goto(addr381);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                         §§goto(addr619);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr533:
                                                                                                                                                                                                      addr618:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr466);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr358);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr491:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr492);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                                addr488:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr491);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             addr486:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr488);
                                                                                                                                                                                          continue loop56;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(!_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr533);
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop11;
                                                                                                                                                                                       addr340:
                                                                                                                                                                                       addr530:
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc10_ && _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr258:
                                                                                                                                                                                    if(!(_loc10_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop4;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc4_.m_sweep);
                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().a);
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_.§6x§);
                                                                                                                                                                                             if(!(_loc10_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr291:
                                                                                                                                                                                                         §§push(this.§^!z§);
                                                                                                                                                                                                         if(_loc9_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr301:
                                                                                                                                                                                                            §§push(§§pop().§?!G§);
                                                                                                                                                                                                            if(_loc9_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr309:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc10_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr331:
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().a = §§pop();
                                                                                                                                                                                                                              do
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc3_.§#!k§();
                                                                                                                                                                                                                                 do
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc4_.§#!k§();
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(_loc10_);
                                                                                                                                                                                                                                 
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(!(_loc9_ || _loc3_));
                                                                                                                                                                                                                              
                                                                                                                                                                                                                              if(!(_loc9_ || _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop55;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc9_ || _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop17;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr236);
                                                                                                                                                                                                                              continue loop55;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc3_.§6x§);
                                                                                                                                                                                                                              addr564:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                 addr565:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    addr566:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§^!z§);
                                                                                                                                                                                                                                       addr568:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().§"!K§);
                                                                                                                                                                                                                                          addr569:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             addr570:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr562:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().a = §§pop();
                                                                                                                                                                                                                           addr572:
                                                                                                                                                                                                                           while(!(_loc10_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                              continue loop18;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr619:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc3_.m_sweep);
                                                                                                                                                                                                                              addr559:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc3_.m_sweep);
                                                                                                                                                                                                                                 addr561:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr562);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr258);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr564);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr566);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr570);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr569);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr568);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr309);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr565);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr301);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr291);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr331);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr561);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr559);
                                                                                                                                                                                    §§goto(addr619);
                                                                                                                                                                                 }
                                                                                                                                                                                 return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc9_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr340);
                                                                                                                                                                                    §§push(_loc4_.m_sweep);
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                                 §§goto(addr467);
                                                                                                                                                                              }
                                                                                                                                                                              addr467:
                                                                                                                                                                              §§goto(addr572);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr617);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr530);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop23;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc10_ && param1)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop14;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§^!z§);
                                                                                                                                                                              while(!_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().§<!4§);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    addr529:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr430);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop25;
                                                                                                                                                                              addr525:
                                                                                                                                                                           }
                                                                                                                                                                           continue loop9;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr530);
                                                                                                                                                                        §§goto(addr441);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop24;
                                                                                                                                                                     addr509:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr529);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr528);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr525);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr449);
                                                                                                                                                      }
                                                                                                                                                      continue loop10;
                                                                                                                                                   }
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                                continue loop12;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr618);
                                                                                                                                 }
                                                                                                                                 continue loop7;
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
                                                                              }
                                                                           }
                                                                           §§goto(addr474);
                                                                        }
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr193);
                                                                  }
                                                               }
                                                               §§goto(addr170);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               addr116:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr96:
                                                            §§push(this.m_revolute2.§^!H§());
                                                            if(_loc9_)
                                                            {
                                                               addr102:
                                                               _loc6_ = Number(§§pop());
                                                            }
                                                            §§goto(addr102);
                                                         }
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop59;
                                                }
                                                §§goto(addr170);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                   §§goto(addr59);
                                                }
                                                addr115:
                                             }
                                             §§goto(addr116);
                                          }
                                          §§goto(addr102);
                                       }
                                       §§goto(addr170);
                                    }
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr142);
                           }
                           addr141:
                        }
                        §§goto(addr170);
                     }
                  }
                  §§goto(addr141);
               }
               else
               {
                  §§push(this.m_prismatic1.§9[§());
                  if(!_loc10_)
                  {
                     §§goto(addr115);
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr170);
            }
         }
         §§goto(addr131);
      }
   }
}
