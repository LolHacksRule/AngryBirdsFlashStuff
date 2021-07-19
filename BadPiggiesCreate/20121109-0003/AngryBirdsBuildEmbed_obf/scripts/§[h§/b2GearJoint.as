package §[h§
{
   import § !t§.b2Body;
   import § !t§.b2TimeStep;
   import §<!B§.b2Mat22;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
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
      
      private var § !1§:b2Jacobian;
      
      private var §8U§:Number;
      
      private var §>!P§:Number;
      
      private var §+!U§:Number;
      
      private var §7!a§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         if(!_loc7_)
         {
            this.m_localAnchor1 = new b2Vec2();
            this.m_localAnchor2 = new b2Vec2();
            this.§ !1§ = new b2Jacobian();
            if(!(_loc7_ && _loc3_))
            {
               super(param1);
            }
         }
         §§push(param1.joint1.§5!Z§);
         if(_loc6_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.joint2.§5!Z§);
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_ || _loc2_)
         {
            this.m_revolute1 = null;
            if(_loc6_ || _loc2_)
            {
               this.m_prismatic1 = null;
               if(!_loc7_)
               {
                  this.m_revolute2 = null;
                  this.m_prismatic2 = null;
                  if(_loc6_)
                  {
                     this.m_ground1 = param1.joint1.§<!W§();
                     if(!(_loc7_ && _loc2_))
                     {
                        §2+§ = param1.joint1.§?!=§();
                        if(!(_loc7_ && param1))
                        {
                           §§push(_loc2_);
                           if(!(_loc7_ && this))
                           {
                              if(§§pop() == b2Joint.e_revoluteJoint)
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
                                 }
                                 §§goto(addr154);
                              }
                              else
                              {
                                 this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                 §§push(this.m_groundAnchor1);
                              }
                              §§goto(addr222);
                           }
                        }
                        §§goto(addr272);
                     }
                     §§goto(addr233);
                  }
                  §§goto(addr322);
               }
               addr154:
               §§push(this.m_groundAnchor1);
               if(!_loc7_)
               {
                  §§pop().SetV(this.m_revolute1.m_localAnchor1);
                  if(!(_loc7_ && param1))
                  {
                     §§push(this.m_localAnchor1);
                     if(_loc6_ || _loc2_)
                     {
                        §§pop().SetV(this.m_revolute1.m_localAnchor2);
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(Number(this.m_revolute1.§ !b§()));
                           if(!(_loc7_ && _loc3_))
                           {
                              _loc4_ = §§pop();
                              if(_loc6_)
                              {
                                 addr253:
                                 this.m_ground2 = param1.joint2.§<!W§();
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§goto(addr265);
                                 }
                                 §§goto(addr349);
                              }
                              §§goto(addr265);
                           }
                           §§goto(addr326);
                        }
                        §§goto(addr283);
                     }
                     else
                     {
                        addr235:
                        §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                        if(!_loc7_)
                        {
                           §§push(Number(this.m_prismatic1.§"!5§()));
                           if(_loc6_ || param1)
                           {
                              _loc4_ = §§pop();
                              §§goto(addr253);
                           }
                           §§goto(addr326);
                        }
                     }
                     §§goto(addr326);
                  }
                  §§goto(addr272);
               }
               else
               {
                  addr222:
                  §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                  if(!(_loc7_ && _loc3_))
                  {
                     addr233:
                     §§goto(addr235);
                     §§push(this.m_localAnchor1);
                  }
               }
               addr265:
               §4P§ = param1.joint2.§?!=§();
               if(_loc6_)
               {
                  addr272:
                  if(_loc3_ == b2Joint.e_revoluteJoint)
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        addr283:
                        this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
                        §§push(this.m_groundAnchor2);
                        if(_loc6_ || _loc3_)
                        {
                           §§pop().SetV(this.m_revolute2.m_localAnchor1);
                           §§goto(addr302);
                        }
                        else
                        {
                           addr343:
                           §§pop().SetV(this.m_prismatic2.m_localAnchor1);
                           §§push(this.m_localAnchor2);
                        }
                        §§goto(addr349);
                     }
                     else
                     {
                        addr341:
                        §§push(this.m_groundAnchor2);
                     }
                     §§goto(addr343);
                  }
                  else
                  {
                     this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
                     if(_loc6_ || _loc3_)
                     {
                        §§goto(addr341);
                     }
                  }
                  §§goto(addr382);
               }
               addr302:
               §§push(this.m_localAnchor2);
               if(_loc6_ || param1)
               {
                  §§pop().SetV(this.m_revolute2.m_localAnchor2);
                  if(!(_loc7_ && param1))
                  {
                     addr326:
                     _loc5_ = Number(this.m_revolute2.§ !b§());
                     addr382:
                     this.§>!P§ = param1.§6?§;
                     addr327:
                     addr322:
                  }
                  §§goto(addr327);
               }
               else
               {
                  addr349:
                  §§pop().SetV(this.m_prismatic2.m_localAnchor2);
                  §§push(this.m_prismatic2.§"!5§());
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc5_ = §§pop();
                  if(!(_loc7_ && param1))
                  {
                     §§goto(addr382);
                  }
               }
               §§push(this);
               §§push(_loc4_);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(this.§>!P§);
                  if(_loc6_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§8U§ = §§pop();
               if(!_loc7_)
               {
                  this.§7!a§ = 0;
               }
               §§goto(addr408);
            }
            §§goto(addr326);
         }
         addr408:
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2+.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4P.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§7!a§);
            if(_loc3_ || this)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && this))
               {
                  §§push(this.§ !1§.§<!&§.x);
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr70);
                  }
                  §§goto(addr78);
               }
               §§goto(addr70);
            }
            §§goto(addr85);
         }
         addr70:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc3_ || _loc2_)
         {
            addr78:
            §§push(this.§7!a§);
            if(_loc3_)
            {
               §§goto(addr90);
            }
            §§push(§§pop() * §§pop());
         }
         addr90:
         §§push(§§pop() * §§pop());
         if(_loc3_)
         {
            addr85:
            §§push(this.§ !1§.§<!&§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal::4P.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc8_)
         {
            §§push(§§pop() - b2internal::4P.m_sweep.localCenter.x);
            if(_loc9_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc8_ && this))
         {
            §§push(§§pop() - b2internal::4P.m_sweep.localCenter.y);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(!(_loc8_ && _loc2_))
         {
            §§push(_loc3_);
            if(!(_loc8_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(_loc9_ || _loc2_)
               {
                  §§push(_loc2_.col2.x);
                  if(_loc9_)
                  {
                     addr91:
                     §§push(§§pop() * _loc4_);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc8_)
                  {
                     addr97:
                     var _loc5_:Number = §§pop();
                     if(!_loc8_)
                     {
                        §§push(_loc2_.col1.y);
                        §§push(_loc3_);
                        if(!(_loc8_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc8_)
                           {
                              §§push(_loc2_.col2.y);
                              if(_loc9_ || param1)
                              {
                                 §§push(§§pop() * _loc4_);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc8_)
                                    {
                                       addr146:
                                       §§push(Number(§§pop()));
                                       if(!_loc8_)
                                       {
                                          _loc4_ = §§pop();
                                          if(_loc9_ || _loc2_)
                                          {
                                             §§push(_loc5_);
                                             if(_loc9_ || _loc2_)
                                             {
                                             }
                                             addr182:
                                             var _loc6_:Number = §§pop();
                                             addr181:
                                             §§push(this.§7!a§);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() * this.§ !1§.§<!&§.y);
                                                if(!_loc8_)
                                                {
                                                   addr194:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc7_:* = §§pop();
                                                §§push(param1);
                                                if(!_loc8_)
                                                {
                                                   §§push(this.§7!a§);
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      §§push(this.§ !1§.§!!M§);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc8_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!(_loc8_ && this))
                                                            {
                                                               §§push(_loc7_);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        addr253:
                                                                        §§push(_loc4_);
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr258:
                                                                           §§push(§§pop() + §§pop() * _loc6_);
                                                                        }
                                                                        §§goto(addr258);
                                                                     }
                                                                     §§goto(addr260);
                                                                  }
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr253);
                                                }
                                                addr260:
                                                return §§pop() * §§pop();
                                             }
                                             §§goto(addr194);
                                          }
                                          addr167:
                                          §§push(this.§7!a§ * this.§ !1§.§<!&§.x);
                                          if(_loc9_ || _loc3_)
                                          {
                                             §§goto(addr181);
                                          }
                                          §§goto(addr182);
                                       }
                                       _loc3_ = Number(§§pop());
                                       §§goto(addr167);
                                    }
                                    §§goto(addr182);
                                 }
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr146);
                        }
                     }
                     §§goto(addr167);
                  }
               }
               §§goto(addr97);
            }
            §§goto(addr91);
         }
         §§goto(addr97);
      }
      
      public function § E§() : Number
      {
         return this.§>!P§;
      }
      
      public function §&@§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>!P§ = param1;
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
         var _loc9_:* = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::2+;
         var _loc5_:b2Body = b2internal::4P;
         §§push(0);
         if(!_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(_loc15_ || this)
         {
            §§push(this.§ !1§);
            if(_loc15_ || _loc3_)
            {
               §§pop().§22§();
               if(this.m_revolute1)
               {
                  if(_loc15_)
                  {
                     §§push(this.§ !1§);
                     if(_loc15_)
                     {
                        addr82:
                        §§pop().§9!+§ = -1;
                        §§push(_loc14_);
                        if(!_loc16_)
                        {
                           §§push(_loc4_.§`d§);
                           if(_loc15_ || _loc2_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc15_ || _loc2_)
                              {
                                 addr104:
                                 §§push(Number(§§pop()));
                                 if(!(_loc16_ && this))
                                 {
                                    _loc14_ = §§pop();
                                    if(_loc15_ || _loc3_)
                                    {
                                       addr472:
                                       if(this.m_revolute2)
                                       {
                                          addr477:
                                          §§push(this.§ !1§);
                                          §§push(this.§>!P§);
                                          if(!(_loc16_ && param1))
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§!!M§ = §§pop();
                                          if(!_loc16_)
                                          {
                                             §§push(_loc14_);
                                             if(!_loc16_)
                                             {
                                                addr493:
                                                §§push(this.§>!P§);
                                                if(!(_loc16_ && _loc3_))
                                                {
                                                   addr502:
                                                   §§push(this.§>!P§);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc15_)
                                                      {
                                                         addr511:
                                                         §§push(§§pop() * _loc5_.§`d§);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc15_)
                                                      {
                                                         addr516:
                                                         _loc14_ = Number(§§pop());
                                                         §§push(this);
                                                         if(!(_loc16_ && _loc3_))
                                                         {
                                                            §§push(_loc14_);
                                                            if(!_loc16_)
                                                            {
                                                               if(§§pop() > 0)
                                                               {
                                                                  addr953:
                                                                  §§push(1 / _loc14_);
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc15_)
                                                                     {
                                                                        addr961:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr965:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(0);
                                                                  if(_loc15_)
                                                                  {
                                                                     §§goto(addr965);
                                                                  }
                                                               }
                                                               §§pop().§+!U§ = §§pop();
                                                               if(_loc15_ || this)
                                                               {
                                                                  if(param1.§ !K§)
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        addr979:
                                                                        §§push(_loc4_.§<&§);
                                                                        if(_loc15_ || _loc2_)
                                                                        {
                                                                           §§push(_loc4_.§<&§);
                                                                           if(_loc15_ || this)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              §§push(_loc4_.§7!?§);
                                                                              §§push(this.§7!a§);
                                                                              if(!(_loc16_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc16_ && this))
                                                                                 {
                                                                                    §§push(this.§ !1§);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(§§pop().§ !§);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          addr1026:
                                                                                          §§pop().x = §§pop() + §§pop() * §§pop().x;
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§push(_loc4_.§<&§);
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                §§push(_loc4_.§<&§);
                                                                                                if(_loc15_ || _loc3_)
                                                                                                {
                                                                                                   addr1043:
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      §§push(_loc4_.§7!?§);
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         §§push(this.§7!a§);
                                                                                                         if(!(_loc16_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               §§push(this.§ !1§);
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  addr1067:
                                                                                                                  §§push(§§pop().§ !§.y);
                                                                                                                  if(_loc15_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                        addr1078:
                                                                                                                        §§pop().y = §§pop() + §§pop();
                                                                                                                        §§push(_loc4_);
                                                                                                                        §§push(_loc4_.m_angularVelocity);
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_.§`d§);
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              §§push(this.§7!a§);
                                                                                                                              if(!(_loc16_ && this))
                                                                                                                              {
                                                                                                                                 addr1110:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc15_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§ !1§.§9!+§);
                                                                                                                                 }
                                                                                                                                 §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    addr1114:
                                                                                                                                    §§push(_loc5_.§<&§);
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       addr1118:
                                                                                                                                       §§push(_loc5_.§<&§);
                                                                                                                                       if(_loc15_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_.§7!?§ * this.§7!a§);
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§ !1§);
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                   addr1141:
                                                                                                                                                   §§push(§§pop().§<!&§);
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      addr1147:
                                                                                                                                                      §§pop().x = §§pop() + §§pop() * §§pop().x;
                                                                                                                                                      addr1145:
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         addr1154:
                                                                                                                                                         addr1152:
                                                                                                                                                         addr1150:
                                                                                                                                                         §§push(_loc5_.§<&§);
                                                                                                                                                         §§push(_loc5_.§<&§.y);
                                                                                                                                                         if(!(_loc16_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr1162:
                                                                                                                                                            §§push(_loc5_.§7!?§);
                                                                                                                                                            §§push(this.§7!a§);
                                                                                                                                                            if(_loc15_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  addr1180:
                                                                                                                                                                  §§push(§§pop() * this.§ !1§.§<!&§.y);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1180);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         §§push(_loc5_.m_angularVelocity);
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_.§`d§);
                                                                                                                                                            if(!(_loc16_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§7!a§);
                                                                                                                                                               if(!(_loc16_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  addr1224:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1222:
                                                                                                                                                                     §§push(§§pop() * this.§ !1§.§!!M§);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                                                  return;
                                                                                                                                                                  addr1225:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1222);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1224);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1225);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1180);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1162);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1154);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1152);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1154);
                                                                                                                              }
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1110);
                                                                                                                     }
                                                                                                                     §§goto(addr1162);
                                                                                                                  }
                                                                                                                  §§goto(addr1145);
                                                                                                               }
                                                                                                               §§goto(addr1141);
                                                                                                            }
                                                                                                            §§goto(addr1078);
                                                                                                         }
                                                                                                         §§goto(addr1145);
                                                                                                      }
                                                                                                      §§goto(addr1162);
                                                                                                   }
                                                                                                   §§goto(addr1147);
                                                                                                }
                                                                                                §§goto(addr1154);
                                                                                             }
                                                                                             §§goto(addr1118);
                                                                                          }
                                                                                          §§goto(addr1224);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1067);
                                                                                 }
                                                                                 §§goto(addr1026);
                                                                              }
                                                                              §§goto(addr1180);
                                                                           }
                                                                           §§goto(addr1043);
                                                                        }
                                                                        §§goto(addr1154);
                                                                     }
                                                                     §§goto(addr1224);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§7!a§ = 0;
                                                                  }
                                                               }
                                                               §§goto(addr1224);
                                                            }
                                                            §§goto(addr961);
                                                         }
                                                         §§goto(addr953);
                                                         addr517:
                                                      }
                                                      §§goto(addr516);
                                                   }
                                                }
                                                §§goto(addr511);
                                             }
                                             §§goto(addr516);
                                          }
                                          §§goto(addr979);
                                       }
                                       else
                                       {
                                          addr521:
                                          _loc10_ = _loc3_.m_xf.R;
                                          _loc11_ = this.m_prismatic2.§5T§;
                                          if(_loc15_)
                                          {
                                             §§push(_loc10_.col1);
                                             if(_loc15_ || this)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc16_)
                                                {
                                                   §§push(_loc11_.x);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc16_)
                                                      {
                                                         §§push(_loc10_.col2);
                                                         if(!(_loc16_ && param1))
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!(_loc16_ && this))
                                                            {
                                                               §§push(_loc11_.y);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr573:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc16_ && _loc3_))
                                                                     {
                                                                        addr581:
                                                                        _loc6_ = Number(§§pop());
                                                                        if(!_loc16_)
                                                                        {
                                                                           addr587:
                                                                           §§push(_loc10_.col1.y);
                                                                           if(!(_loc16_ && param1))
                                                                           {
                                                                              addr595:
                                                                              §§push(_loc11_.x);
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    addr614:
                                                                                    §§push(_loc10_.col2.y);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       addr620:
                                                                                       §§push(Number(§§pop() + §§pop() * _loc11_.y));
                                                                                    }
                                                                                    §§goto(addr620);
                                                                                 }
                                                                              }
                                                                              §§goto(addr620);
                                                                           }
                                                                           _loc7_ = §§pop();
                                                                           addr623:
                                                                           _loc10_ = _loc5_.m_xf.R;
                                                                           if(_loc15_)
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 §§push(_loc5_.m_sweep);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§push(§§pop().localCenter);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc15_ || _loc3_)
                                                                                       {
                                                                                          §§push(Number(§§pop() - §§pop()));
                                                                                          if(!(_loc16_ && this))
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                addr664:
                                                                                                §§push(this.m_localAnchor2.y);
                                                                                                if(!(_loc16_ && param1))
                                                                                                {
                                                                                                   addr675:
                                                                                                   _loc9_ = Number(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                                                                   if(_loc15_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(_loc10_.col1);
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         §§push(§§pop().x * _loc8_);
                                                                                                         §§push(_loc10_.col2);
                                                                                                         if(_loc15_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc15_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc16_ && this))
                                                                                                                     {
                                                                                                                        _loc13_ = §§pop();
                                                                                                                        if(!(_loc16_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr735:
                                                                                                                           §§push(_loc10_.col1.y);
                                                                                                                           if(_loc15_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 addr749:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 §§push(_loc10_.col2.y);
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 if(!(_loc16_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                       if(_loc15_ || this)
                                                                                                                                       {
                                                                                                                                          addr771:
                                                                                                                                          §§push(_loc13_);
                                                                                                                                          if(!(_loc16_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(_loc15_ || this)
                                                                                                                                             {
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr823:
                                                                                                                                                _loc12_ = §§pop();
                                                                                                                                                if(_loc15_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§ !1§);
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().§<!&§);
                                                                                                                                                      §§push(this.§>!P§);
                                                                                                                                                      if(_loc15_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            addr848:
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            if(_loc15_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr857:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               §§push(this.§>!P§);
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  addr861:
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  if(_loc15_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr869:
                                                                                                                                                                     §§push(§§pop() * _loc7_);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().Set(§§pop(),§§pop());
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     addr876:
                                                                                                                                                                     §§push(this.§ !1§);
                                                                                                                                                                     §§push(this.§>!P§);
                                                                                                                                                                     if(!(_loc16_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                        if(!(_loc16_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           addr893:
                                                                                                                                                                           §§push(§§pop() * _loc12_);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§!!M§ = §§pop();
                                                                                                                                                                        addr896:
                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                        if(_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           addr899:
                                                                                                                                                                           §§push(this.§>!P§);
                                                                                                                                                                           §§push(this.§>!P§);
                                                                                                                                                                           if(!(_loc16_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr913:
                                                                                                                                                                                 §§push(_loc5_.§7!?§);
                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr917:
                                                                                                                                                                                    §§push(_loc5_.§`d§);
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc12_);
                                                                                                                                                                                       if(!(_loc16_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr934:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc14_ = Number(§§pop() + §§pop() * (§§pop() + §§pop()));
                                                                                                                                                                                          §§goto(addr516);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr934);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr893);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr516);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr869);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr861);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr857);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr848);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr876);
                                                                                                                                                }
                                                                                                                                                §§goto(addr896);
                                                                                                                                             }
                                                                                                                                             addr819:
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                addr822:
                                                                                                                                                §§goto(addr823);
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             §§goto(addr899);
                                                                                                                                          }
                                                                                                                                          §§push(_loc7_);
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc16_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr803:
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                if(_loc15_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc16_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr819);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr934);
                                                                                                                                                }
                                                                                                                                                §§goto(addr917);
                                                                                                                                             }
                                                                                                                                             §§goto(addr934);
                                                                                                                                          }
                                                                                                                                          §§goto(addr913);
                                                                                                                                       }
                                                                                                                                       §§goto(addr896);
                                                                                                                                    }
                                                                                                                                    §§goto(addr899);
                                                                                                                                 }
                                                                                                                                 §§goto(addr917);
                                                                                                                              }
                                                                                                                              §§goto(addr934);
                                                                                                                           }
                                                                                                                           §§goto(addr899);
                                                                                                                        }
                                                                                                                        §§goto(addr516);
                                                                                                                     }
                                                                                                                     §§goto(addr823);
                                                                                                                  }
                                                                                                                  §§goto(addr803);
                                                                                                               }
                                                                                                               §§goto(addr934);
                                                                                                            }
                                                                                                            §§goto(addr819);
                                                                                                         }
                                                                                                         §§goto(addr749);
                                                                                                      }
                                                                                                      §§goto(addr735);
                                                                                                   }
                                                                                                   §§goto(addr771);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr516);
                                                                                          }
                                                                                          §§goto(addr822);
                                                                                       }
                                                                                       §§goto(addr819);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr675);
                                                                              }
                                                                           }
                                                                           §§goto(addr664);
                                                                        }
                                                                        §§goto(addr623);
                                                                     }
                                                                     §§goto(addr595);
                                                                  }
                                                               }
                                                               §§goto(addr620);
                                                            }
                                                            §§goto(addr573);
                                                         }
                                                         §§goto(addr614);
                                                      }
                                                   }
                                                   §§goto(addr620);
                                                }
                                                §§goto(addr581);
                                             }
                                          }
                                          §§goto(addr587);
                                       }
                                    }
                                    §§goto(addr1150);
                                 }
                                 §§goto(addr516);
                              }
                              §§goto(addr493);
                           }
                           §§goto(addr502);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr477);
                  }
                  §§goto(addr1114);
               }
               else
               {
                  §§push(_loc2_.m_xf);
                  if(!(_loc16_ && _loc2_))
                  {
                     §§push(§§pop().R);
                     if(!_loc16_)
                     {
                        _loc10_ = §§pop();
                        _loc11_ = this.m_prismatic1.§5T§;
                        if(!_loc16_)
                        {
                           §§push(_loc10_.col1);
                           if(_loc15_ || param1)
                           {
                              §§push(§§pop().x);
                              if(!_loc16_)
                              {
                                 §§push(_loc11_.x);
                                 if(_loc15_ || param1)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc15_ || param1)
                                    {
                                       addr171:
                                       §§push(_loc10_.col2);
                                       if(_loc15_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc15_ || _loc2_)
                                          {
                                             §§push(_loc11_.y);
                                             if(_loc15_ || this)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc16_ && _loc3_))
                                                {
                                                   addr200:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc15_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc15_ || param1)
                                                      {
                                                         addr211:
                                                         _loc6_ = §§pop();
                                                         if(_loc15_)
                                                         {
                                                            addr216:
                                                            addr214:
                                                            §§push(_loc10_.col1.y);
                                                            if(_loc15_)
                                                            {
                                                               addr219:
                                                               §§push(_loc11_.x);
                                                               if(_loc15_ || param1)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc16_ && _loc2_))
                                                                  {
                                                                     addr238:
                                                                     §§push(_loc10_.col2.y);
                                                                     if(!_loc16_)
                                                                     {
                                                                        addr244:
                                                                        §§push(§§pop() + §§pop() * _loc11_.y);
                                                                     }
                                                                     §§goto(addr244);
                                                                  }
                                                                  addr246:
                                                                  _loc7_ = §§pop();
                                                                  _loc10_ = _loc4_.m_xf.R;
                                                                  §§push(this.m_localAnchor1);
                                                                  if(!(_loc16_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     §§push(_loc4_.m_sweep);
                                                                     if(!(_loc16_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop().localCenter);
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(_loc15_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc16_)
                                                                              {
                                                                                 _loc8_ = Number(§§pop());
                                                                                 addr288:
                                                                                 §§push(this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       if(_loc15_ || _loc2_)
                                                                                       {
                                                                                          §§push(_loc10_.col1);
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(_loc15_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   §§push(_loc10_.col2);
                                                                                                   if(_loc15_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      §§push(_loc9_);
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         addr339:
                                                                                                         _loc13_ = §§pop() + §§pop() * §§pop();
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            addr345:
                                                                                                            §§push(_loc10_.col1.y);
                                                                                                            §§push(_loc8_);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  addr354:
                                                                                                                  §§push(_loc10_.col2.y);
                                                                                                                  if(!(_loc16_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        _loc9_ = Number(§§pop() + §§pop() * §§pop());
                                                                                                                        §§push(Number(_loc13_));
                                                                                                                        if(_loc15_ || param1)
                                                                                                                        {
                                                                                                                           addr378:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!(_loc16_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr386:
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    addr392:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       addr395:
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(_loc15_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc15_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr414:
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(_loc15_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      addr425:
                                                                                                                                                      _loc12_ = §§pop();
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§ !1§);
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            addr453:
                                                                                                                                                            §§push(§§pop().§ !§);
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            if(_loc15_)
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().Set(§§pop(),§§pop());
                                                                                                                                                            if(_loc15_)
                                                                                                                                                            {
                                                                                                                                                               addr444:
                                                                                                                                                               §§push(this.§ !1§);
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                            §§push(_loc4_.§7!?§);
                                                                                                                                                            §§push(_loc4_.§`d§);
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               addr460:
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  addr468:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     addr466:
                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                  }
                                                                                                                                                                  _loc14_ = Number(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                  §§goto(addr472);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr468);
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr468);
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                         if(_loc15_)
                                                                                                                                                         {
                                                                                                                                                            §§push(-§§pop());
                                                                                                                                                         }
                                                                                                                                                         §§pop().§9!+§ = §§pop();
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr453);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr472);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr453);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr468);
                                                                                                                                             }
                                                                                                                                             §§goto(addr453);
                                                                                                                                          }
                                                                                                                                          §§goto(addr468);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr425);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr453);
                                                                                                                           }
                                                                                                                           §§goto(addr468);
                                                                                                                        }
                                                                                                                        §§goto(addr395);
                                                                                                                     }
                                                                                                                     §§goto(addr460);
                                                                                                                  }
                                                                                                                  §§goto(addr414);
                                                                                                               }
                                                                                                               §§goto(addr468);
                                                                                                            }
                                                                                                            §§goto(addr392);
                                                                                                         }
                                                                                                         §§goto(addr444);
                                                                                                      }
                                                                                                      §§goto(addr466);
                                                                                                   }
                                                                                                   §§goto(addr354);
                                                                                                }
                                                                                                §§goto(addr414);
                                                                                             }
                                                                                             §§goto(addr378);
                                                                                          }
                                                                                          §§goto(addr345);
                                                                                       }
                                                                                       §§goto(addr444);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr425);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           §§goto(addr386);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               §§goto(addr244);
                                                            }
                                                            §§goto(addr246);
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   §§goto(addr219);
                                                }
                                             }
                                          }
                                          §§goto(addr244);
                                       }
                                       §§goto(addr238);
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr216);
                        }
                        §§goto(addr214);
                     }
                     §§goto(addr521);
                  }
               }
               §§goto(addr521);
            }
            §§goto(addr82);
         }
         §§goto(addr517);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = b2internal::2+;
         var _loc3_:b2Body = b2internal::4P;
         §§push(this.§ !1§.§7!P§(_loc2_.§<&§,_loc2_.m_angularVelocity,_loc3_.§<&§,_loc3_.m_angularVelocity));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§+!U§);
         if(_loc6_ || this)
         {
            §§push(-§§pop());
            if(_loc6_)
            {
               §§push(§§pop() * _loc4_);
               if(!_loc6_)
               {
               }
               addr54:
               var _loc5_:* = §§pop();
               if(_loc6_ || _loc3_)
               {
                  §§push(this);
                  §§push(this.§7!a§);
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§7!a§ = §§pop();
                  §§push(_loc2_.§<&§);
                  if(_loc6_)
                  {
                     §§push(_loc2_.§<&§);
                     if(!(_loc7_ && _loc2_))
                     {
                        §§push(§§pop().x);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(_loc2_.§7!?§ * _loc5_);
                           §§push(this.§ !1§);
                           if(!(_loc7_ && param1))
                           {
                              §§push(§§pop().§ !§);
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(§§pop().x);
                                 if(_loc6_ || this)
                                 {
                                    §§push(§§pop() + §§pop() * §§pop());
                                    if(_loc6_)
                                    {
                                       §§pop().x = §§pop();
                                       §§push(_loc2_.§<&§);
                                       if(_loc6_)
                                       {
                                          §§push(_loc2_.§<&§);
                                          if(_loc6_ || param1)
                                          {
                                             addr144:
                                             §§push(§§pop().y);
                                             §§push(_loc2_.§7!?§);
                                             §§push(_loc5_);
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                §§push(this.§ !1§);
                                                if(_loc6_)
                                                {
                                                   addr160:
                                                   §§push(§§pop().§ !§.y);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§pop().y = §§pop();
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§push(_loc2_);
                                                               §§push(_loc2_.m_angularVelocity);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §§push(_loc2_.§`d§);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        addr227:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           addr225:
                                                                           §§push(§§pop() * this.§ !1§.§9!+§);
                                                                        }
                                                                        §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           addr235:
                                                                           §§push(_loc3_.§<&§);
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr239:
                                                                              §§push(_loc3_.§<&§);
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr251:
                                                                                    §§push(_loc3_.§7!?§);
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       §§goto(addr306);
                                                                                    }
                                                                                    §§push(this.§ !1§);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(§§pop().§<!&§);
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          addr279:
                                                                                          §§pop().x = §§pop() + §§pop() * §§pop().x;
                                                                                          §§push(_loc3_.§<&§);
                                                                                          §§push(_loc3_.§<&§.y);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr287:
                                                                                             §§push(_loc3_.§7!?§);
                                                                                             if(!(_loc7_ && param1))
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr299:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr302:
                                                                                                      addr306:
                                                                                                      §§push(_loc5_);
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr263:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                      }
                                                                                                      §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         §§push(_loc3_.m_angularVelocity);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(_loc3_.§`d§);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  §§goto(addr351);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr349);
                                                                                                         }
                                                                                                         §§goto(addr351);
                                                                                                      }
                                                                                                      addr351:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc6_ || _loc3_)
                                                                                                      {
                                                                                                         addr349:
                                                                                                         §§push(§§pop() * this.§ !1§.§!!M§);
                                                                                                      }
                                                                                                      §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                      return;
                                                                                                      §§push(this.§ !1§.§<!&§.y);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr306);
                                                                                             }
                                                                                             §§goto(addr302);
                                                                                          }
                                                                                          §§goto(addr306);
                                                                                          addr278:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr302);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr279);
                                                                     }
                                                                  }
                                                                  §§goto(addr225);
                                                               }
                                                               §§goto(addr227);
                                                            }
                                                            §§goto(addr235);
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr302);
                                             }
                                             §§goto(addr306);
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr239);
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr299);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr302);
                        }
                        §§goto(addr287);
                     }
                     §§goto(addr144);
                  }
               }
               §§goto(addr279);
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr54);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(!(_loc9_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::2+;
         var _loc4_:b2Body = b2internal::4P;
         §§push(this.m_revolute1);
         if(!(_loc9_ && this))
         {
            if(§§pop())
            {
               addr49:
               §§push(this.m_revolute1.§ !b§());
               if(_loc10_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc9_ && this))
                  {
                     _loc5_ = §§pop();
                     addr83:
                     §§push(this.m_revolute2);
                     if(_loc10_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           §§push(this.m_revolute2);
                        }
                        else
                        {
                           §§push(this.m_prismatic2.§"!5§());
                           if(_loc10_)
                           {
                              addr109:
                              _loc6_ = Number(§§pop());
                              addr112:
                              §§push(this.§8U§);
                              §§push(_loc5_);
                              if(_loc10_ || this)
                              {
                                 §§push(this.§>!P§);
                                 if(_loc10_ || _loc3_)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() - §§pop());
                              if(!(_loc9_ && _loc3_))
                              {
                                 addr141:
                                 var _loc7_:Number = §§pop();
                                 §§push(this.§+!U§);
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    §§push(-§§pop());
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §§push(§§pop() * _loc7_);
                                       if(!_loc10_)
                                       {
                                       }
                                       addr164:
                                       var _loc8_:* = §§pop();
                                       §§push(_loc3_.m_sweep);
                                       if(_loc10_ || this)
                                       {
                                          §§push(§§pop().c);
                                          if(_loc10_)
                                          {
                                             §§push(_loc3_.m_sweep);
                                             if(_loc10_ || _loc3_)
                                             {
                                                §§push(§§pop().c);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(_loc3_.§7!?§);
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         §§push(§§pop() * _loc8_);
                                                      }
                                                      §§push(this.§ !1§);
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         §§push(§§pop().§ !§);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() * §§pop().x);
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               §§pop().x = §§pop() + §§pop();
                                                               §§push(_loc3_.m_sweep);
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  §§push(§§pop().c);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(_loc3_.m_sweep);
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        §§push(§§pop().c);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(_loc3_.§7!?§);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    §§push(this.§ !1§);
                                                                                    if(!(_loc9_ && this))
                                                                                    {
                                                                                       addr286:
                                                                                       §§pop().y = §§pop() + §§pop() * §§pop().§ !§.y;
                                                                                       §§push(_loc3_.m_sweep);
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          addr299:
                                                                                          §§push(_loc3_.m_sweep);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(§§pop().a);
                                                                                             if(_loc10_ || _loc2_)
                                                                                             {
                                                                                                §§push(_loc3_.§`d§);
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!(_loc9_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push(this.§ !1§);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(§§pop().§9!+§);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr338:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc10_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     addr349:
                                                                                                                     §§pop().a = §§pop();
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§push(_loc4_.m_sweep);
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           addr356:
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              §§push(_loc4_.m_sweep);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 addr363:
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(!(_loc9_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr376:
                                                                                                                                       §§push(_loc4_.§7!?§);
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!(_loc9_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          §§push(this.§ !1§);
                                                                                                                                          if(_loc10_ || this)
                                                                                                                                          {
                                                                                                                                             addr394:
                                                                                                                                             §§push(§§pop().§<!&§);
                                                                                                                                             if(_loc10_ || this)
                                                                                                                                             {
                                                                                                                                                addr404:
                                                                                                                                                §§push(§§pop() + §§pop() * §§pop().x);
                                                                                                                                                if(_loc10_ || this)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   §§push(_loc4_.m_sweep);
                                                                                                                                                   if(_loc10_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr427:
                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                      §§push(_loc4_.m_sweep.c.y);
                                                                                                                                                      §§push(_loc4_.§7!?§);
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(_loc10_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr444:
                                                                                                                                                         §§pop().y = §§pop() + §§pop() * §§pop() * this.§ !1§.§<!&§.y;
                                                                                                                                                         addr442:
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            addr449:
                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                            §§push(_loc4_.m_sweep.a);
                                                                                                                                                            if(!(_loc9_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.§`d§);
                                                                                                                                                               if(!(_loc9_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  addr478:
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr488);
                                                                                                                                                                  }
                                                                                                                                                                  addr488:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     addr486:
                                                                                                                                                                     §§push(this.§ !1§.§!!M§);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().a = §§pop() + §§pop();
                                                                                                                                                                  if(_loc10_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr497:
                                                                                                                                                                     _loc3_.§<=§();
                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc4_.§<=§();
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr503);
                                                                                                                                                                  }
                                                                                                                                                                  addr503:
                                                                                                                                                                  return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr488);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr497);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr442);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr449);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr444);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr427);
                                                                                                                     }
                                                                                                                     §§goto(addr503);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr488);
                                                                                                         }
                                                                                                         §§goto(addr486);
                                                                                                      }
                                                                                                      §§goto(addr478);
                                                                                                   }
                                                                                                   §§goto(addr338);
                                                                                                }
                                                                                                §§goto(addr486);
                                                                                             }
                                                                                             §§goto(addr349);
                                                                                          }
                                                                                          §§goto(addr449);
                                                                                       }
                                                                                       §§goto(addr427);
                                                                                    }
                                                                                    §§goto(addr394);
                                                                                 }
                                                                                 §§goto(addr444);
                                                                              }
                                                                              §§goto(addr404);
                                                                           }
                                                                           §§goto(addr444);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr427);
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                            §§goto(addr376);
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                      §§goto(addr394);
                                                   }
                                                   §§goto(addr376);
                                                }
                                                §§goto(addr427);
                                             }
                                             §§goto(addr363);
                                          }
                                          §§goto(addr427);
                                       }
                                       §§goto(addr299);
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr112);
                     }
                     §§push(Number(§§pop().§ !b§()));
                     if(!_loc9_)
                     {
                        addr99:
                        _loc6_ = §§pop();
                        if(_loc9_)
                        {
                        }
                     }
                     else
                     {
                        §§goto(addr109);
                     }
                     §§goto(addr109);
                  }
               }
               §§goto(addr141);
            }
            else
            {
               §§push(this.m_prismatic1.§"!5§());
               if(_loc10_ || _loc2_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc9_)
                  {
                     _loc5_ = §§pop();
                     if(_loc10_ || this)
                     {
                        §§goto(addr83);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr99);
               }
            }
            §§goto(addr109);
         }
         §§goto(addr49);
      }
   }
}
