package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   
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
      
      private var §_-Ib§:b2Jacobian;
      
      private var §_-67§:Number;
      
      private var §_-5R§:Number;
      
      private var §_-jI§:Number;
      
      private var §_-tN§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         if(_loc6_ || _loc3_)
         {
            this.m_groundAnchor2 = new b2Vec2();
            this.m_localAnchor1 = new b2Vec2();
         }
         this.m_localAnchor2 = new b2Vec2();
         this.§_-Ib§ = new b2Jacobian();
         super(param1);
         §§push(param1.joint1.§_-Sj§);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.joint2.§_-Sj§);
         if(!(_loc7_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_ || _loc2_)
         {
            this.m_revolute1 = null;
            this.m_prismatic1 = null;
            if(!_loc7_)
            {
               this.m_revolute2 = null;
               if(!_loc7_)
               {
                  this.m_prismatic2 = null;
                  this.m_ground1 = param1.joint1.§_-kE§();
                  addr94:
                  §_-93§ = param1.joint1.§_-Pl§();
                  §§push(_loc2_);
                  if(!_loc7_)
                  {
                     if(§§pop() == b2Joint.e_revoluteJoint)
                     {
                        this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
                        §§push(this.m_groundAnchor1);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§pop().SetV(this.m_revolute1.m_localAnchor1);
                           if(_loc6_ || _loc2_)
                           {
                              §§push(this.m_localAnchor1);
                              if(!_loc7_)
                              {
                                 §§pop().SetV(this.m_revolute1.m_localAnchor2);
                                 _loc4_ = Number(this.m_revolute1.§_-sv§());
                                 if(_loc6_)
                                 {
                                    addr181:
                                    this.m_ground2 = param1.joint2.§_-kE§();
                                    §_-9K§ = param1.joint2.§_-Pl§();
                                    if(_loc3_ == b2Joint.e_revoluteJoint)
                                    {
                                       this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
                                       if(_loc6_)
                                       {
                                          addr203:
                                          §§push(this.m_groundAnchor2);
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             §§pop().SetV(this.m_revolute2.m_localAnchor1);
                                             addr216:
                                             §§push(this.m_localAnchor2);
                                             if(!_loc7_)
                                             {
                                                §§pop().SetV(this.m_revolute2.m_localAnchor2);
                                                if(!(_loc7_ && param1))
                                                {
                                                   _loc5_ = this.m_revolute2.§_-sv§();
                                                   if(!_loc6_)
                                                   {
                                                   }
                                                   §§goto(addr288);
                                                }
                                                else
                                                {
                                                   addr247:
                                                   this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
                                                   addr253:
                                                   this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
                                                   _loc5_ = this.m_prismatic2.§_-ke§();
                                                }
                                                this.§_-5R§ = param1.§_-Qg§;
                                                §§goto(addr266);
                                             }
                                             §§goto(addr253);
                                          }
                                          §§goto(addr247);
                                       }
                                       addr266:
                                       §§push(this);
                                       §§push(_loc4_);
                                       if(!_loc7_)
                                       {
                                          §§push(this.§_-5R§);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() * _loc5_);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().§_-67§ = §§pop();
                                       this.§_-tN§ = 0;
                                       §§goto(addr288);
                                    }
                                    else
                                    {
                                       this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
                                    }
                                    §§goto(addr247);
                                    addr153:
                                 }
                                 §§goto(addr216);
                              }
                              else
                              {
                                 addr168:
                                 §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                                 if(_loc6_)
                                 {
                                    §§push(Number(this.m_prismatic1.§_-ke§()));
                                    if(_loc6_)
                                    {
                                       _loc4_ = §§pop();
                                       §§goto(addr181);
                                    }
                                    §§goto(addr247);
                                 }
                              }
                              addr288:
                              return;
                           }
                           §§goto(addr153);
                        }
                        else
                        {
                           addr162:
                           §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                           §§push(this.m_localAnchor1);
                        }
                        §§goto(addr168);
                     }
                     else
                     {
                        this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                        §§push(this.m_groundAnchor1);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr181);
               }
               §§goto(addr203);
            }
            §§goto(addr216);
         }
         §§goto(addr94);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-93.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-9K.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || _loc3_)
         {
            §§push(this.§_-tN§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  addr29:
                  §§push(this.§_-Ib§.§_-Jk§.x);
                  if(_loc2_ || param1)
                  {
                     §§goto(addr48);
                  }
                  §§goto(addr75);
               }
               addr48:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc2_ || _loc3_)
               {
                  addr56:
                  §§push(this.§_-tN§);
                  if(!_loc3_)
                  {
                     §§goto(addr80);
                  }
                  §§push(§§pop() * §§pop());
               }
               addr80:
               §§push(§§pop() * §§pop());
               if(_loc2_ || this)
               {
                  addr75:
                  §§push(this.§_-Ib§.§_-Jk§.y);
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
            §§goto(addr56);
         }
         §§goto(addr29);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal::_-9K.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc9_ || _loc2_)
         {
            §§push(§§pop() - b2internal::_-9K.m_sweep.localCenter.x);
            if(!(_loc8_ && this))
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc9_ || this)
            {
               §§push(§§pop() - b2internal::_-9K.m_sweep.localCenter.y);
               if(_loc9_ || _loc2_)
               {
                  addr65:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc2_.col1.x);
               if(_loc9_ || _loc3_)
               {
                  §§push(_loc3_);
                  if(!(_loc8_ && _loc2_))
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc8_)
                     {
                        §§push(_loc2_.col2.x);
                        if(_loc9_)
                        {
                           addr93:
                           §§push(§§pop() * _loc4_);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc8_)
                        {
                           addr98:
                           §§push(Number(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        if(!(_loc8_ && _loc2_))
                        {
                           §§push(_loc2_.col1.y);
                           if(_loc9_ || _loc2_)
                           {
                              §§push(_loc3_);
                              if(_loc9_ || _loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc9_)
                                 {
                                    §§push(_loc2_.col2.y);
                                    if(_loc9_ || this)
                                    {
                                       §§push(§§pop() * _loc4_);
                                       if(!_loc9_)
                                       {
                                       }
                                       addr172:
                                       var _loc6_:Number = §§pop() * §§pop();
                                       addr170:
                                       §§push(this.§_-tN§);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() * this.§_-Ib§.§_-Jk§.y);
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(param1);
                                       if(_loc9_ || _loc2_)
                                       {
                                          §§push(this.§_-tN§);
                                          if(_loc9_ || _loc2_)
                                          {
                                             §§push(this.§_-Ib§.§_-IH§);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc9_ || this)
                                                   {
                                                      addr229:
                                                      §§push(_loc7_);
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               §§push(_loc4_);
                                                               if(!_loc9_)
                                                               {
                                                               }
                                                               addr262:
                                                               return §§pop() * (§§pop() + §§pop());
                                                               addr261:
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         §§push(_loc6_);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                §§goto(addr261);
                                             }
                                             §§goto(addr229);
                                          }
                                          §§goto(addr261);
                                       }
                                       §§goto(addr262);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       _loc4_ = Number(§§pop());
                                       addr164:
                                       if(_loc9_)
                                       {
                                          §§push(_loc5_);
                                       }
                                       §§goto(addr170);
                                       §§push(this.§_-tN§);
                                       §§push(this.§_-Ib§.§_-Jk§.x);
                                    }
                                    _loc3_ = Number(§§pop());
                                    §§goto(addr164);
                                 }
                              }
                              §§goto(addr172);
                           }
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr93);
               }
               §§goto(addr98);
            }
            §§goto(addr65);
         }
         §§goto(addr41);
      }
      
      public function §_-dY§() : Number
      {
         return this.§_-5R§;
      }
      
      public function §_-wI§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-5R§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc4_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::_-93;
         var _loc5_:b2Body = b2internal::_-9K;
         §§push(0);
         if(_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         §§push(this.§_-Ib§);
         if(_loc16_)
         {
            §§pop().§_-0a§();
            if(this.m_revolute1)
            {
               if(_loc16_)
               {
                  §§push(this.§_-Ib§);
                  if(!(_loc15_ && _loc3_))
                  {
                     addr73:
                     §§pop().§_-lS§ = -1;
                     §§push(_loc14_);
                     if(_loc16_)
                     {
                        §§push(_loc4_.§_-DZ§);
                        if(!_loc15_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc16_ || _loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc15_)
                              {
                                 _loc14_ = §§pop();
                                 addr450:
                                 if(this.m_revolute2)
                                 {
                                    addr455:
                                    §§push(this.§_-Ib§);
                                    §§push(this.§_-5R§);
                                    if(!_loc15_)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().§_-IH§ = §§pop();
                                    §§push(_loc14_);
                                    if(_loc16_)
                                    {
                                       §§push(this.§_-5R§);
                                       if(!_loc15_)
                                       {
                                          §§push(this.§_-5R§);
                                          if(_loc16_ || param1)
                                          {
                                             addr483:
                                             §§push(§§pop() * §§pop());
                                             if(_loc16_)
                                             {
                                                §§push(_loc5_.§_-DZ§);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc15_ && _loc3_))
                                             {
                                                addr492:
                                                _loc14_ = Number(§§pop());
                                                §§push(this);
                                                if(_loc16_)
                                                {
                                                   §§push(_loc14_);
                                                   if(_loc16_ || this)
                                                   {
                                                      if(§§pop() > 0)
                                                      {
                                                         addr866:
                                                         §§push(1 / _loc14_);
                                                         if(_loc16_)
                                                         {
                                                            addr871:
                                                            §§push(Number(§§pop()));
                                                            if(_loc15_ && _loc2_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr888:
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(0);
                                                         if(!(_loc15_ && this))
                                                         {
                                                            §§goto(addr888);
                                                         }
                                                      }
                                                      §§pop().§_-jI§ = §§pop();
                                                      if(!(_loc15_ && this))
                                                      {
                                                         if(param1.§_-o-§)
                                                         {
                                                            addr900:
                                                            §§push(_loc4_.§_-ZZ§);
                                                            if(!_loc15_)
                                                            {
                                                               §§push(_loc4_.§_-ZZ§);
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(_loc4_.§_-eZ§ * this.§_-tN§);
                                                                     §§push(this.§_-Ib§);
                                                                     if(_loc16_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop().§_-kX§);
                                                                        if(!(_loc15_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() + §§pop() * §§pop().x);
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              §§push(_loc4_.§_-ZZ§);
                                                                              if(_loc16_)
                                                                              {
                                                                                 §§push(_loc4_.§_-ZZ§);
                                                                                 if(_loc16_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc16_ || _loc2_)
                                                                                    {
                                                                                       §§push(_loc4_.§_-eZ§);
                                                                                       if(!(_loc15_ && _loc3_))
                                                                                       {
                                                                                          §§push(this.§_-tN§);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc15_ && _loc2_))
                                                                                             {
                                                                                                §§push(this.§_-Ib§);
                                                                                                if(!(_loc15_ && this))
                                                                                                {
                                                                                                   addr997:
                                                                                                   §§pop().y = §§pop() + §§pop() * §§pop().§_-kX§.y;
                                                                                                   §§push(_loc4_);
                                                                                                   §§push(_loc4_.m_angularVelocity);
                                                                                                   if(_loc16_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(_loc4_.§_-DZ§);
                                                                                                      if(_loc16_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(this.§_-tN§);
                                                                                                         if(_loc16_ || param1)
                                                                                                         {
                                                                                                            addr1040:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc16_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(this.§_-Ib§.§_-lS§);
                                                                                                            }
                                                                                                            §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                            §§push(_loc5_.§_-ZZ§);
                                                                                                            if(!(_loc15_ && param1))
                                                                                                            {
                                                                                                               §§push(_loc5_.§_-ZZ§);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  addr1056:
                                                                                                                  §§push(§§pop().x);
                                                                                                                  §§push(_loc5_.§_-eZ§);
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     §§push(this.§_-tN§);
                                                                                                                     if(_loc16_ || param1)
                                                                                                                     {
                                                                                                                        addr1070:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        §§push(this.§_-Ib§);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           addr1074:
                                                                                                                           §§push(§§pop().§_-Jk§);
                                                                                                                           if(_loc16_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop().x);
                                                                                                                              if(_loc16_ || this)
                                                                                                                              {
                                                                                                                                 addr1091:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       addr1101:
                                                                                                                                       addr1099:
                                                                                                                                       §§push(_loc5_.§_-ZZ§);
                                                                                                                                       §§push(_loc5_.§_-ZZ§.y);
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr1119:
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          §§push(_loc5_.m_angularVelocity);
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_.§_-DZ§);
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§_-tN§);
                                                                                                                                                if(!(_loc15_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr1160:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc16_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr1158:
                                                                                                                                                      §§push(§§pop() * this.§_-Ib§.§_-IH§);
                                                                                                                                                   }
                                                                                                                                                   §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      addr1167:
                                                                                                                                                      return;
                                                                                                                                                      addr1163:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1167);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1158);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1160);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1163);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1167);
                                                                                                                                 }
                                                                                                                                 addr1116:
                                                                                                                                 §§push(_loc5_.§_-eZ§);
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    addr1108:
                                                                                                                                    §§push(§§pop() * this.§_-tN§);
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr1118:
                                                                                                                                    §§goto(addr1119);
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 §§goto(addr1118);
                                                                                                                                 §§push(§§pop() * this.§_-Ib§.§_-Jk§.y);
                                                                                                                              }
                                                                                                                              §§goto(addr1108);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1116);
                                                                                                                  }
                                                                                                                  §§goto(addr1091);
                                                                                                               }
                                                                                                               §§goto(addr1101);
                                                                                                            }
                                                                                                            §§goto(addr1099);
                                                                                                         }
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1040);
                                                                                                   addr996:
                                                                                                   addr995:
                                                                                                }
                                                                                                §§goto(addr1074);
                                                                                             }
                                                                                             §§goto(addr1070);
                                                                                          }
                                                                                          §§goto(addr997);
                                                                                       }
                                                                                       §§goto(addr1108);
                                                                                    }
                                                                                    §§goto(addr1056);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1101);
                                                                           }
                                                                           §§goto(addr1056);
                                                                        }
                                                                        §§goto(addr996);
                                                                     }
                                                                     §§goto(addr995);
                                                                  }
                                                                  §§goto(addr1101);
                                                               }
                                                               §§goto(addr1056);
                                                            }
                                                            §§goto(addr1101);
                                                         }
                                                         else
                                                         {
                                                            this.§_-tN§ = 0;
                                                         }
                                                         §§goto(addr1167);
                                                      }
                                                      §§goto(addr900);
                                                   }
                                                   §§goto(addr871);
                                                }
                                                §§goto(addr866);
                                                addr491:
                                             }
                                             §§goto(addr492);
                                          }
                                          §§goto(addr483);
                                          §§push(§§pop() * §§pop());
                                       }
                                       §§goto(addr483);
                                    }
                                    §§goto(addr491);
                                 }
                                 else
                                 {
                                    addr497:
                                    _loc10_ = _loc3_.m_xf.R;
                                    _loc11_ = this.m_prismatic2.§_-jM§;
                                    if(!_loc15_)
                                    {
                                       §§push(_loc10_.col1);
                                       if(!_loc15_)
                                       {
                                          §§push(§§pop().x);
                                          §§push(_loc11_.x);
                                          if(_loc16_ || _loc3_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc16_)
                                             {
                                                §§push(_loc10_.col2);
                                                if(_loc16_ || _loc3_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc16_ || param1)
                                                   {
                                                      §§push(_loc11_.y);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc16_)
                                                         {
                                                            addr547:
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc15_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  addr561:
                                                                  §§push(_loc10_.col1.y);
                                                                  §§push(_loc11_.x);
                                                                  if(_loc16_ || _loc2_)
                                                                  {
                                                                     addr571:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc16_)
                                                                     {
                                                                        addr574:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(_loc16_ || _loc2_)
                                                                        {
                                                                           addr594:
                                                                           §§push(§§pop() + §§pop() * _loc11_.y);
                                                                           if(_loc16_ || _loc2_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr594);
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     addr604:
                                                                     _loc10_ = _loc5_.m_xf.R;
                                                                     §§push(this.m_localAnchor2);
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§push(_loc5_.m_sweep);
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              §§push(§§pop().localCenter);
                                                                              if(_loc16_)
                                                                              {
                                                                                 _loc8_ = Number(§§pop() - §§pop().x);
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    addr640:
                                                                                    §§push(Number(this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y));
                                                                                    if(_loc16_ || param1)
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       §§push(_loc10_.col1);
                                                                                       if(!(_loc15_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc15_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop() * _loc8_);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                §§push(_loc10_.col2);
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   §§push(_loc9_);
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                      if(!(_loc15_ && _loc3_))
                                                                                                      {
                                                                                                         addr689:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc15_ && this))
                                                                                                         {
                                                                                                            addr697:
                                                                                                            _loc13_ = §§pop();
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               addr702:
                                                                                                               §§push(_loc10_.col1.y);
                                                                                                               §§push(_loc8_);
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc15_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr716:
                                                                                                                     §§push(_loc10_.col2.y);
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        addr720:
                                                                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           addr725:
                                                                                                                           _loc9_ = Number(§§pop());
                                                                                                                           §§push(_loc13_);
                                                                                                                           if(_loc16_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr734:
                                                                                                                              §§push(_loc8_ = Number(§§pop()));
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 addr739:
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    addr743:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          addr751:
                                                                                                                                          _loc12_ = §§pop();
                                                                                                                                          §§push(this.§_-Ib§);
                                                                                                                                          if(!(_loc15_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().§_-Jk§);
                                                                                                                                             §§push(this.§_-5R§);
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                §§push(-§§pop());
                                                                                                                                                if(_loc16_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   if(_loc16_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr784:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      §§push(this.§_-5R§);
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            addr791:
                                                                                                                                                            §§push(§§pop() * _loc7_);
                                                                                                                                                         }
                                                                                                                                                         §§pop().Set(§§pop(),§§pop());
                                                                                                                                                         addr796:
                                                                                                                                                         addr794:
                                                                                                                                                         §§push(this.§_-Ib§);
                                                                                                                                                         §§push(this.§_-5R§);
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§push(-§§pop());
                                                                                                                                                            if(!(_loc15_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * _loc12_);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§pop().§_-IH§ = §§pop();
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         §§push(this.§_-5R§);
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            addr816:
                                                                                                                                                            §§push(this.§_-5R§);
                                                                                                                                                            if(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               addr821:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               §§push(_loc5_.§_-eZ§);
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.§_-DZ§);
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                     if(_loc16_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr848:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc16_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr846:
                                                                                                                                                                           §§push(§§pop() * _loc12_);
                                                                                                                                                                        }
                                                                                                                                                                        _loc14_ = Number(§§pop() + §§pop() * (§§pop() + §§pop()));
                                                                                                                                                                        §§goto(addr492);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr846);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr848);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr821);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr791);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr784);
                                                                                                                                          }
                                                                                                                                          §§goto(addr796);
                                                                                                                                       }
                                                                                                                                       §§goto(addr848);
                                                                                                                                    }
                                                                                                                                    §§goto(addr821);
                                                                                                                                 }
                                                                                                                                 §§goto(addr816);
                                                                                                                              }
                                                                                                                              §§goto(addr848);
                                                                                                                           }
                                                                                                                           §§goto(addr739);
                                                                                                                        }
                                                                                                                        §§goto(addr743);
                                                                                                                     }
                                                                                                                     §§goto(addr821);
                                                                                                                  }
                                                                                                                  §§goto(addr725);
                                                                                                               }
                                                                                                               §§goto(addr848);
                                                                                                            }
                                                                                                            §§goto(addr796);
                                                                                                         }
                                                                                                         §§goto(addr743);
                                                                                                      }
                                                                                                      §§goto(addr697);
                                                                                                   }
                                                                                                   §§goto(addr720);
                                                                                                }
                                                                                                §§goto(addr716);
                                                                                             }
                                                                                             §§goto(addr689);
                                                                                          }
                                                                                          §§goto(addr734);
                                                                                       }
                                                                                       §§goto(addr702);
                                                                                    }
                                                                                    §§goto(addr751);
                                                                                 }
                                                                                 §§goto(addr794);
                                                                              }
                                                                           }
                                                                           §§goto(addr640);
                                                                        }
                                                                        §§goto(addr697);
                                                                     }
                                                                     §§goto(addr640);
                                                                  }
                                                                  §§goto(addr594);
                                                               }
                                                               §§goto(addr604);
                                                            }
                                                            §§goto(addr574);
                                                         }
                                                         §§goto(addr571);
                                                      }
                                                      §§goto(addr594);
                                                   }
                                                   §§goto(addr547);
                                                }
                                             }
                                             §§goto(addr574);
                                          }
                                          §§goto(addr594);
                                       }
                                    }
                                    §§goto(addr561);
                                 }
                              }
                           }
                           §§goto(addr492);
                        }
                        §§goto(addr483);
                     }
                     §§goto(addr492);
                  }
                  §§goto(addr455);
               }
               §§goto(addr997);
            }
            else
            {
               §§push(_loc2_.m_xf);
               if(!_loc15_)
               {
                  §§push(§§pop().R);
                  if(!(_loc15_ && _loc2_))
                  {
                     _loc10_ = §§pop();
                     _loc11_ = this.m_prismatic1.§_-jM§;
                     if(!_loc15_)
                     {
                        §§push(_loc10_.col1);
                        if(_loc16_)
                        {
                           §§push(§§pop().x);
                           if(_loc16_)
                           {
                              §§push(_loc11_.x);
                              if(_loc16_)
                              {
                                 §§push(§§pop() * §§pop());
                                 §§push(_loc10_.col2);
                                 if(_loc16_ || _loc3_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc16_)
                                    {
                                       §§push(_loc11_.y);
                                       if(_loc16_ || param1)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc16_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc16_ || this)
                                             {
                                                _loc6_ = §§pop();
                                                if(_loc16_ || _loc3_)
                                                {
                                                   addr172:
                                                   §§push(_loc10_.col1.y);
                                                   §§push(_loc11_.x);
                                                   if(_loc16_ || this)
                                                   {
                                                      addr184:
                                                      §§push(§§pop() * §§pop());
                                                      §§push(_loc10_.col2.y);
                                                      if(!_loc15_)
                                                      {
                                                         addr190:
                                                         §§push(§§pop() + §§pop() * _loc11_.y);
                                                         if(_loc16_ || _loc2_)
                                                         {
                                                            addr199:
                                                            _loc7_ = Number(§§pop());
                                                         }
                                                         §§goto(addr199);
                                                      }
                                                   }
                                                   §§goto(addr190);
                                                }
                                                _loc10_ = _loc4_.m_xf.R;
                                                §§push(this.m_localAnchor1);
                                                if(_loc16_ || this)
                                                {
                                                   §§push(§§pop().x);
                                                   §§push(_loc4_.m_sweep);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(§§pop().localCenter);
                                                      if(!(_loc15_ && this))
                                                      {
                                                         §§push(§§pop() - §§pop().x);
                                                         if(_loc16_ || _loc2_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc16_)
                                                            {
                                                               _loc8_ = §§pop();
                                                               addr246:
                                                               _loc9_ = Number(this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y);
                                                               §§push(_loc10_.col1);
                                                               if(_loc16_)
                                                               {
                                                                  addr255:
                                                                  §§push(§§pop().x * _loc8_);
                                                                  §§push(_loc10_.col2);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc16_ || _loc2_)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(_loc16_ || _loc3_)
                                                                        {
                                                                           addr280:
                                                                           _loc13_ = Number(§§pop() + §§pop() * §§pop());
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              addr290:
                                                                              §§push(_loc10_.col1.y);
                                                                              if(_loc16_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(!(_loc15_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       addr306:
                                                                                       §§push(_loc10_.col2.y);
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(_loc16_ || _loc3_)
                                                                                          {
                                                                                             addr318:
                                                                                             §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                             if(!(_loc15_ && _loc2_))
                                                                                             {
                                                                                                _loc9_ = §§pop();
                                                                                                addr329:
                                                                                                §§push(Number(_loc13_));
                                                                                                §§push(Number(_loc13_));
                                                                                                if(_loc16_ || this)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   if(!(_loc15_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(_loc16_ || this)
                                                                                                      {
                                                                                                         addr354:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               addr360:
                                                                                                               §§push(_loc6_);
                                                                                                               if(!(_loc15_ && _loc3_))
                                                                                                               {
                                                                                                                  addr368:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc15_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr377:
                                                                                                                     _loc12_ = §§pop() - §§pop();
                                                                                                                     if(_loc16_ || this)
                                                                                                                     {
                                                                                                                        addr386:
                                                                                                                        §§push(this.§_-Ib§);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§_-kX§);
                                                                                                                           §§push(_loc6_);
                                                                                                                           if(!(_loc15_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(_loc16_ || this)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                           §§pop().Set(§§pop(),§§pop());
                                                                                                                           §§push(this.§_-Ib§);
                                                                                                                        }
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                        }
                                                                                                                        §§pop().§_-lS§ = §§pop();
                                                                                                                        if(!(_loc15_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr424:
                                                                                                                           §§push(_loc14_);
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              addr427:
                                                                                                                              §§push(_loc4_.§_-eZ§);
                                                                                                                              §§push(_loc4_.§_-DZ§);
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 addr433:
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 if(!(_loc15_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr446:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_);
                                                                                                                                    }
                                                                                                                                    _loc14_ = Number(§§pop() + (§§pop() + §§pop()));
                                                                                                                                    §§goto(addr450);
                                                                                                                                 }
                                                                                                                                 §§goto(addr446);
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr446);
                                                                                                                        }
                                                                                                                        §§goto(addr450);
                                                                                                                     }
                                                                                                                     §§goto(addr424);
                                                                                                                  }
                                                                                                                  §§goto(addr446);
                                                                                                               }
                                                                                                               §§goto(addr433);
                                                                                                            }
                                                                                                            §§goto(addr446);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr377);
                                                                                                   }
                                                                                                   §§goto(addr427);
                                                                                                }
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                             §§goto(addr427);
                                                                                          }
                                                                                          §§goto(addr368);
                                                                                       }
                                                                                       §§goto(addr377);
                                                                                    }
                                                                                    §§goto(addr446);
                                                                                 }
                                                                                 §§goto(addr318);
                                                                              }
                                                                              §§goto(addr329);
                                                                           }
                                                                           §§goto(addr386);
                                                                        }
                                                                        §§goto(addr446);
                                                                     }
                                                                     §§goto(addr354);
                                                                  }
                                                                  §§goto(addr306);
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                   }
                                                }
                                                §§goto(addr246);
                                             }
                                             §§goto(addr172);
                                          }
                                       }
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr199);
                        }
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr497);
               }
            }
            §§goto(addr497);
         }
         §§goto(addr73);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = b2internal::_-93;
         var _loc3_:b2Body = b2internal::_-9K;
         §§push(this.§_-Ib§.§_-yB§(_loc2_.§_-ZZ§,_loc2_.m_angularVelocity,_loc3_.§_-ZZ§,_loc3_.m_angularVelocity));
         if(!(_loc7_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§_-jI§);
         if(_loc6_)
         {
            §§push(-§§pop());
            if(!_loc7_)
            {
               addr46:
               §§push(§§pop() * _loc4_);
               if(_loc6_)
               {
                  addr50:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(this);
               §§push(this.§_-tN§);
               if(!_loc7_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§_-tN§ = §§pop();
               if(!_loc7_)
               {
                  §§push(_loc2_.§_-ZZ§);
                  if(_loc6_)
                  {
                     §§push(_loc2_.§_-ZZ§);
                     if(!_loc7_)
                     {
                        §§push(§§pop().x);
                        §§push(_loc2_.§_-eZ§);
                        §§push(_loc5_);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc7_ && this))
                           {
                              §§push(this.§_-Ib§);
                              if(!_loc7_)
                              {
                                 §§push(§§pop().§_-kX§);
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§pop().x = §§pop() + §§pop() * §§pop().x;
                                    §§push(_loc2_.§_-ZZ§);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(_loc2_.§_-ZZ§);
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(§§pop().y);
                                          §§push(_loc2_.§_-eZ§ * _loc5_);
                                          §§push(this.§_-Ib§);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             addr133:
                                             §§push(§§pop().§_-kX§.y);
                                             if(_loc6_)
                                             {
                                                §§pop().y = §§pop() + §§pop() * §§pop();
                                                §§push(_loc2_);
                                                §§push(_loc2_.m_angularVelocity);
                                                if(_loc6_ || this)
                                                {
                                                   §§push(_loc2_.§_-DZ§);
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc6_)
                                                      {
                                                         addr175:
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            §§push(this.§_-Ib§.§_-lS§);
                                                         }
                                                         §§pop().m_angularVelocity = §§pop() + §§pop();
                                                         §§push(_loc3_.§_-ZZ§);
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            §§push(_loc3_.§_-ZZ§);
                                                            if(_loc6_)
                                                            {
                                                               addr190:
                                                               §§push(§§pop().x);
                                                               §§push(_loc3_.§_-eZ§);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop() * _loc5_);
                                                                  §§push(this.§_-Ib§);
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     addr206:
                                                                     §§push(§§pop().§_-Jk§);
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!(_loc7_ && _loc2_))
                                                                        {
                                                                           addr222:
                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 addr254:
                                                                                 _loc3_.§_-ZZ§.y += _loc3_.§_-eZ§ * _loc5_ * this.§_-Ib§.§_-Jk§.y;
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    §§push(_loc3_.m_angularVelocity);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(_loc3_.§_-DZ§);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§goto(addr289);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                    §§goto(addr289);
                                                                                 }
                                                                              }
                                                                              addr289:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr287:
                                                                                 §§push(§§pop() * this.§_-Ib§.§_-IH§);
                                                                              }
                                                                              §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                              return;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                §§goto(addr175);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr206);
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr254);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr254);
                           }
                           §§goto(addr222);
                        }
                     }
                  }
               }
               §§goto(addr254);
            }
            §§goto(addr50);
         }
         §§goto(addr46);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         §§push(0);
         if(_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::_-93;
         var _loc4_:b2Body = b2internal::_-9K;
         §§push(this.m_revolute1);
         if(!_loc9_)
         {
            if(§§pop())
            {
               if(!(_loc9_ && this))
               {
                  addr43:
                  §§push(this.m_revolute1.§_-sv§());
                  if(!_loc9_)
                  {
                     _loc5_ = §§pop();
                     if(!_loc9_)
                     {
                        addr65:
                        §§push(this.m_revolute2);
                        if(!_loc9_)
                        {
                           if(§§pop())
                           {
                              addr74:
                              _loc6_ = this.m_revolute2.§_-sv§();
                              addr72:
                              if(!_loc10_)
                              {
                              }
                           }
                           else
                           {
                              _loc6_ = this.m_prismatic2.§_-ke§();
                           }
                           §§push(this.§_-67§);
                           if(!(_loc9_ && _loc3_))
                           {
                              §§push(_loc5_);
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§push(this.§_-5R§);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() - §§pop());
                              if(!(_loc9_ && _loc3_))
                              {
                                 addr115:
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              §§push(this.§_-jI§);
                              if(_loc10_)
                              {
                                 §§push(-§§pop());
                                 if(!(_loc9_ && this))
                                 {
                                    addr129:
                                    §§push(§§pop() * _loc7_);
                                    if(_loc10_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc8_:* = §§pop();
                                 §§push(_loc3_.m_sweep);
                                 if(_loc10_ || param1)
                                 {
                                    §§push(§§pop().c);
                                    if(!_loc9_)
                                    {
                                       §§push(_loc3_.m_sweep);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop().c);
                                          if(_loc10_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc10_)
                                             {
                                                §§push(_loc3_.§_-eZ§);
                                                §§push(_loc8_);
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc10_)
                                                   {
                                                      §§push(this.§_-Ib§);
                                                      if(_loc10_ || param1)
                                                      {
                                                         §§push(§§pop().§_-kX§);
                                                         if(!_loc9_)
                                                         {
                                                            §§pop().x = §§pop() + §§pop() * §§pop().x;
                                                            if(_loc10_)
                                                            {
                                                               §§push(_loc3_.m_sweep);
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  §§push(§§pop().c);
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     addr200:
                                                                     §§push(_loc3_.m_sweep);
                                                                     if(_loc10_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop().c);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           §§push(_loc3_.§_-eZ§);
                                                                           §§push(_loc8_);
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              §§push(this.§_-Ib§);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr237:
                                                                                 §§push(§§pop() * §§pop().§_-kX§.y);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§pop().y = §§pop() + §§pop();
                                                                                    §§push(_loc3_.m_sweep);
                                                                                    if(!(_loc9_ && _loc3_))
                                                                                    {
                                                                                       §§push(_loc3_.m_sweep);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(§§pop().a);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(_loc3_.§_-DZ§);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§push(this.§_-Ib§);
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop().§_-lS§);
                                                                                                         if(_loc10_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               addr298:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  §§pop().a = §§pop();
                                                                                                                  §§push(_loc4_.m_sweep);
                                                                                                                  if(_loc10_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr311:
                                                                                                                     §§push(§§pop().c);
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§push(_loc4_.m_sweep);
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           addr318:
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              §§push(_loc4_.§_-eZ§);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 addr331:
                                                                                                                                 §§push(§§pop() * _loc8_);
                                                                                                                                 §§push(this.§_-Ib§);
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§_-Jk§);
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(!(_loc9_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr349);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr382);
                                                                                                                              }
                                                                                                                              addr349:
                                                                                                                              §§push(§§pop() + §§pop() * §§pop());
                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 §§push(_loc4_.m_sweep);
                                                                                                                                 if(!(_loc9_ && param1))
                                                                                                                                 {
                                                                                                                                    §§goto(addr372);
                                                                                                                                 }
                                                                                                                                 §§goto(addr399);
                                                                                                                              }
                                                                                                                              addr372:
                                                                                                                              §§goto(addr371);
                                                                                                                           }
                                                                                                                           addr371:
                                                                                                                           §§goto(addr370);
                                                                                                                        }
                                                                                                                        addr370:
                                                                                                                        §§goto(addr368);
                                                                                                                     }
                                                                                                                     addr368:
                                                                                                                     §§goto(addr367);
                                                                                                                  }
                                                                                                                  addr367:
                                                                                                                  §§push(§§pop().c);
                                                                                                                  §§push(_loc4_.m_sweep.c.y);
                                                                                                                  §§push(_loc4_.§_-eZ§);
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(_loc10_ || param1)
                                                                                                                  {
                                                                                                                     addr382:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     §§push(this.§_-Ib§.§_-Jk§.y);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                  {
                                                                                                                     addr399:
                                                                                                                     addr401:
                                                                                                                     §§push(_loc4_.m_sweep);
                                                                                                                     §§push(_loc4_.m_sweep.a);
                                                                                                                     if(!(_loc9_ && this))
                                                                                                                     {
                                                                                                                        addr409:
                                                                                                                        §§push(_loc4_.§_-DZ§);
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 addr423:
                                                                                                                                 §§push(§§pop() + §§pop() * this.§_-Ib§.§_-IH§);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr423);
                                                                                                                     }
                                                                                                                     §§pop().a = §§pop();
                                                                                                                     _loc3_.§_-Z9§();
                                                                                                                     if(_loc10_ || param1)
                                                                                                                     {
                                                                                                                        addr441:
                                                                                                                        _loc4_.§_-Z9§();
                                                                                                                     }
                                                                                                                  }
                                                                                                                  return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                               }
                                                                                                               §§goto(addr409);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr423);
                                                                                                   }
                                                                                                   §§goto(addr298);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr423);
                                                                                          }
                                                                                          §§goto(addr409);
                                                                                       }
                                                                                       §§goto(addr401);
                                                                                    }
                                                                                    §§goto(addr372);
                                                                                 }
                                                                                 §§goto(addr331);
                                                                              }
                                                                              §§goto(addr382);
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                        §§goto(addr372);
                                                                     }
                                                                     §§goto(addr318);
                                                                  }
                                                               }
                                                               §§goto(addr372);
                                                            }
                                                            §§goto(addr441);
                                                         }
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                   §§goto(addr382);
                                                }
                                                §§goto(addr331);
                                             }
                                          }
                                          §§goto(addr372);
                                       }
                                       §§goto(addr318);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr311);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr115);
                        }
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr74);
               }
               §§goto(addr65);
            }
            else
            {
               §§push(this.m_prismatic1.§_-ke§());
               if(!_loc9_)
               {
                  _loc5_ = §§pop();
                  if(_loc10_ || param1)
                  {
                     §§goto(addr65);
                  }
                  §§goto(addr74);
               }
            }
            §§goto(addr115);
         }
         §§goto(addr43);
      }
   }
}
