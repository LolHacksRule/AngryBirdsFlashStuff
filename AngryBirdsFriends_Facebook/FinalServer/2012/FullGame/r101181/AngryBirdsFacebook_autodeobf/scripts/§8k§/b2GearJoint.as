package §8k§
{
   import §#]§.b2Mat22;
   import §#]§.b2Vec2;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2TimeStep;
   
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
      
      private var §?6§:b2Jacobian;
      
      private var §3!A§:Number;
      
      private var §9!+§:Number;
      
      private var §+J§:Number;
      
      private var §0!y§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         if(!(_loc7_ && _loc2_))
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  loop2:
                  for(; !(_loc7_ && this); while(_loc6_ || this)
                  {
                     super(param1);
                     if(_loc7_ && _loc3_)
                     {
                        continue;
                     }
                     if(!_loc7_)
                     {
                        continue loop0;
                     }
                     §§goto(addr68);
                  })
                  {
                     while(true)
                     {
                        this.m_localAnchor2 = new b2Vec2();
                        addr68:
                        while(true)
                        {
                           addr50:
                           while(true)
                           {
                              this.§?6§ = new b2Jacobian();
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               if(!(_loc6_ || param1))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr50);
               }
               §§push(param1.joint1.§<";§);
               if(_loc6_ || _loc2_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(param1.joint2.§<";§);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(int(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(_loc6_ || this)
               {
                  this.m_revolute1 = null;
                  this.m_prismatic1 = null;
                  this.m_revolute2 = null;
                  this.m_prismatic2 = null;
                  this.m_ground1 = param1.joint1.§6p§();
                  §8!Z§ = param1.joint1.§]%§();
                  addr542:
                  addr530:
                  addr556:
                  addr537:
                  addr552:
                  addr547:
                  if(_loc2_ == b2Joint.e_revoluteJoint)
                  {
                     addr507:
                     this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
                     addr497:
                     this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
                     addr482:
                     this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
                     addr501:
                     addr523:
                     if(_loc6_ || _loc3_)
                     {
                        addr477:
                        _loc4_ = this.m_revolute1.§'r§();
                        addr375:
                        this.m_ground2 = param1.joint2.§6p§();
                        addr478:
                        addr476:
                        if(_loc6_)
                        {
                           §4"0§ = param1.joint2.§]%§();
                           addr374:
                           §§push(_loc3_);
                           if(_loc6_ || this)
                           {
                              if(§§pop() == b2Joint.e_revoluteJoint)
                              {
                                 addr359:
                                 this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
                                 addr365:
                                 if(!_loc7_)
                                 {
                                    addr340:
                                    this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
                                    addr344:
                                    if(!_loc7_)
                                    {
                                       addr321:
                                       this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
                                       if(_loc6_)
                                       {
                                          if(_loc6_ || _loc3_)
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(this.m_revolute2.§'r§());
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         addr309:
                                                         _loc5_ = Number(§§pop());
                                                         addr310:
                                                         if(!(_loc7_ && this))
                                                         {
                                                            addr184:
                                                            this.§9!+§ = param1.§""3§;
                                                            if(_loc6_)
                                                            {
                                                               §§push(this);
                                                               §§push(_loc4_);
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  §§push(this.§9!+§);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§pop() * _loc5_);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§pop().§3!A§ = §§pop();
                                                               addr158:
                                                               if(_loc6_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              this.§0!y§ = 0;
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr428:
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(this.m_prismatic1.§`z§());
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   addr398:
                                                                                                   _loc4_ = §§pop();
                                                                                                   addr399:
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      if(_loc6_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr375);
                                                                                                      }
                                                                                                      §§goto(addr501);
                                                                                                   }
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      if(_loc6_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(this.m_groundAnchor1);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                                                                                            §§push(this.m_localAnchor1);
                                                                                                            if(!(_loc7_ && _loc2_))
                                                                                                            {
                                                                                                               §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                                                                                                               §§goto(addr428);
                                                                                                            }
                                                                                                            §§goto(addr482);
                                                                                                            addr447:
                                                                                                         }
                                                                                                         §§goto(addr497);
                                                                                                      }
                                                                                                      §§goto(addr542);
                                                                                                   }
                                                                                                   §§goto(addr530);
                                                                                                }
                                                                                                §§goto(addr477);
                                                                                             }
                                                                                             §§goto(addr398);
                                                                                          }
                                                                                          §§goto(addr556);
                                                                                       }
                                                                                       §§goto(addr537);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr310);
                                                                              }
                                                                              §§goto(addr158);
                                                                           }
                                                                           §§goto(addr447);
                                                                        }
                                                                        §§goto(addr399);
                                                                     }
                                                                     §§goto(addr344);
                                                                  }
                                                                  addr207:
                                                                  if(!(_loc7_ && _loc2_))
                                                                  {
                                                                     §§goto(addr184);
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(this.m_groundAnchor2);
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        §§pop().SetV(this.m_prismatic2.m_localAnchor1);
                                                                        addr246:
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 §§pop().SetV(this.m_prismatic2.m_localAnchor2);
                                                                                 addr229:
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(this.m_prismatic2.§`z§());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§goto(addr309);
                                                                                    }
                                                                                    _loc5_ = §§pop();
                                                                                    §§goto(addr207);
                                                                                 }
                                                                                 §§goto(addr246);
                                                                              }
                                                                              §§goto(addr321);
                                                                           }
                                                                           §§goto(addr507);
                                                                        }
                                                                        §§goto(addr321);
                                                                     }
                                                                     §§goto(addr340);
                                                                  }
                                                                  §§goto(addr365);
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         §§goto(addr478);
                                                      }
                                                      §§goto(addr476);
                                                   }
                                                   §§goto(addr398);
                                                }
                                                §§goto(addr309);
                                             }
                                             §§goto(addr552);
                                          }
                                          §§goto(addr523);
                                       }
                                       §§goto(addr374);
                                    }
                                    §§goto(addr359);
                                    addr367:
                                 }
                                 §§goto(addr477);
                              }
                              this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
                              §§goto(addr207);
                           }
                           §§goto(addr542);
                        }
                        §§goto(addr507);
                     }
                     §§goto(addr547);
                  }
                  this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                  §§goto(addr398);
               }
               §§goto(addr367);
            }
         }
         §§goto(addr81);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::8!Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4"0.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || _loc3_)
         {
            §§push(this.§0!y§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(this.§?6§.§`O§.x);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr64);
                  }
                  §§goto(addr72);
               }
               §§goto(addr64);
            }
            §§goto(addr84);
         }
         addr64:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc3_ && this))
         {
            addr72:
            §§push(this.§0!y§);
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr89);
            }
            §§push(§§pop() * §§pop());
         }
         addr89:
         §§push(§§pop() * §§pop());
         if(!_loc3_)
         {
            addr84:
            §§push(this.§?6§.§`O§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal::4"0.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc9_ || _loc2_)
         {
            §§push(§§pop() - b2internal::4"0.m_sweep.localCenter.x);
            if(_loc9_)
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc9_ || this)
            {
               §§push(§§pop() - b2internal::4"0.m_sweep.localCenter.y);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc9_ || _loc3_)
            {
               §§push(_loc3_);
               if(!_loc8_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc9_ || param1)
                  {
                     addr81:
                     §§push(_loc2_.col2.x);
                     if(_loc9_)
                     {
                        addr86:
                        §§push(§§pop() * _loc4_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc9_ || _loc2_)
                     {
                        addr96:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     if(_loc9_)
                     {
                        §§push(_loc2_.col1.y);
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(_loc3_);
                           if(_loc9_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc8_)
                              {
                                 §§push(_loc2_.col2.y);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() * _loc4_);
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       addr140:
                                       §§push(§§pop() + §§pop());
                                       if(_loc9_)
                                       {
                                          addr143:
                                          §§push(Number(§§pop()));
                                          if(_loc9_ || _loc3_)
                                          {
                                             addr151:
                                             _loc4_ = §§pop();
                                             if(!_loc8_)
                                             {
                                                addr154:
                                                §§push(_loc5_);
                                                if(!_loc8_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc8_)
                                                   {
                                                      _loc3_ = §§pop();
                                                   }
                                                   addr165:
                                                   §§push(§§pop() * this.§?6§.§`O§.x);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      addr177:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc6_:* = §§pop();
                                                   §§push(this.§0!y§);
                                                   if(_loc9_ || param1)
                                                   {
                                                      §§push(§§pop() * this.§?6§.§`O§.y);
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         addr200:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc7_:* = §§pop();
                                                      §§push(param1);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         §§push(this.§0!y§);
                                                         if(!(_loc8_ && this))
                                                         {
                                                            §§push(this.§?6§.§package§);
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc9_ || _loc2_)
                                                               {
                                                                  addr237:
                                                                  §§push(_loc3_);
                                                                  if(!(_loc8_ && _loc2_))
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc8_ && _loc3_)
                                                                           {
                                                                           }
                                                                           §§goto(addr285);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr282);
                                                               }
                                                               §§goto(addr285);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         §§goto(addr237);
                                                      }
                                                      addr285:
                                                      §§push(_loc4_);
                                                      if(_loc9_ || this)
                                                      {
                                                         addr282:
                                                         §§push(§§pop() * _loc6_);
                                                      }
                                                      return §§pop() * (§§pop() + §§pop());
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr177);
                                             }
                                             §§push(this.§0!y§);
                                             if(_loc8_)
                                             {
                                             }
                                             §§goto(addr165);
                                          }
                                          §§goto(addr177);
                                       }
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr96);
               }
               §§goto(addr86);
            }
            §§goto(addr81);
         }
         §§goto(addr39);
      }
      
      public function §`A§() : Number
      {
         return this.§9!+§;
      }
      
      public function §#L§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§9!+§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc4_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::8!Z;
         var _loc5_:b2Body = b2internal::4"0;
         §§push(0);
         if(_loc16_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(!_loc15_)
         {
            §§push(this.§?6§);
            loop0:
            while(true)
            {
               §§pop().§;v§();
               if(!(_loc15_ && _loc3_))
               {
                  loop1:
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(!_loc15_)
                        {
                           §§push(§§pop().R);
                           if(!(_loc15_ && param1))
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§5!n§;
                              if(!(_loc15_ && _loc3_))
                              {
                                 §§push(_loc10_.col1);
                                 if(_loc16_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc16_)
                                    {
                                       §§push(_loc11_.x);
                                       if(!(_loc15_ && this))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc15_)
                                          {
                                             addr178:
                                             §§push(_loc10_.col2);
                                             if(_loc16_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc16_ || param1)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(!(_loc15_ && _loc3_))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc16_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc16_ || this)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc16_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(_loc16_)
                                                               {
                                                                  addr218:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     addr226:
                                                                     §§push(_loc11_.x);
                                                                     if(!(_loc15_ && this))
                                                                     {
                                                                        addr235:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           addr245:
                                                                           addr243:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(_loc16_ || _loc3_)
                                                                           {
                                                                           }
                                                                           addr256:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc16_)
                                                                           {
                                                                              addr260:
                                                                              _loc7_ = §§pop();
                                                                              _loc10_ = _loc4_.m_xf.R;
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §§push(this.m_localAnchor1);
                                                                                 loop79:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr625:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_.m_sweep);
                                                                                       addr627:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().localCenter);
                                                                                          addr628:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr629:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                addr630:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr631:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                      continue loop79;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr624:
                                                                              }
                                                                              loop86:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.m_localAnchor1);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc15_ && this))
                                                                                    {
                                                                                       §§push(_loc4_.m_sweep);
                                                                                       if(!(_loc15_ && param1))
                                                                                       {
                                                                                          §§push(§§pop().localCenter);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             loop87:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                addr619:
                                                                                                loop88:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr620:
                                                                                                   loop89:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc9_ = §§pop();
                                                                                                      loop90:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc10_.col1);
                                                                                                         loop91:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               if(_loc15_ && _loc2_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(_loc8_);
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  loop92:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc10_.col2);
                                                                                                                     addr585:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr586:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           addr587:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     loop104:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc15_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop92;
                                                                                                                        }
                                                                                                                        _loc9_ = §§pop();
                                                                                                                        loop105:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc13_);
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              if(!(_loc15_ && this))
                                                                                                                              {
                                                                                                                                 if(!(_loc15_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop106:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       loop107:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc16_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             _loc8_ = §§pop();
                                                                                                                                             loop108:
                                                                                                                                             for(; !_loc15_; if(!(_loc15_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                continue loop106;
                                                                                                                                             })
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc15_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr508:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr586);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr304:
                                                                                                                                                               if(_loc15_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               if(!(_loc15_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        addr326:
                                                                                                                                                                        §§push(§§pop() * _loc12_);
                                                                                                                                                                        if(_loc16_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr334:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc16_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc15_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc15_ && _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr380:
                                                                                                                                                                                    if(!(_loc15_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr387:
                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                       if(_loc16_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr395:
                                                                                                                                                                                          if(_loc15_ && _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop105;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc15_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr409:
                                                                                                                                                                                             if(_loc15_ && _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop90;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§?6§);
                                                                                                                                                                                                   if(_loc16_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr588:
                                                                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().§&L§ = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                         if(!_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc16_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr589:
                                                                                                                                                                                                               if(!(_loc15_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_.§["A§);
                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc16_ || _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop107;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!(_loc16_ || param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop87;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(_loc4_.§"g§);
                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr304);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr326);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr334);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr589:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc13_ = §§pop();
                                                                                                                                                                                                               continue loop91;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr380);
                                                                                                                                                                                                         §§goto(addr387);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr589);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr433:
                                                                                                                                                                                                      addr588:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr437:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().§+"'§);
                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                      if(_loc16_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                      if(_loc16_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().Set(§§pop(),§§pop());
                                                                                                                                                                                                      continue loop105;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr409);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop90;
                                                                                                                                                                                                addr418:
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!this.m_revolute2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_.m_xf);
                                                                                                                                                                                                break loop1;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop0;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1505);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop91;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc16_ || this))
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr437);
                                                                                                                                                                                             §§push(this.§?6§);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop86;
                                                                                                                                                                                          addr515:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr433);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                                                                       §§goto(addr515);
                                                                                                                                                                                       §§goto(addr380);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr514:
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop108;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop88;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr514);
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 addr511:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr588);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr508);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           continue loop87;
                                                                                                                                                                           §§goto(addr326);
                                                                                                                                                                        }
                                                                                                                                                                        addr545:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr587);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr326);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr508);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr625);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr511);
                                                                                                                                                }
                                                                                                                                                §§goto(addr508);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc10_.col2);
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      continue loop87;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr545);
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                }
                                                                                                                                                continue loop107;
                                                                                                                                             }
                                                                                                                                             §§goto(addr585);
                                                                                                                                             addr534:
                                                                                                                                          }
                                                                                                                                          addr556:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop104;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       if(_loc15_ && this)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc16_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr380);
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       §§goto(addr631);
                                                                                                                                    }
                                                                                                                                    addr479:
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop104;
                                                                                                                           }
                                                                                                                           §§goto(addr479);
                                                                                                                        }
                                                                                                                        §§goto(addr630);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr588);
                                                                                                            }
                                                                                                            §§goto(addr589);
                                                                                                         }
                                                                                                         continue loop89;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr628);
                                                                                       }
                                                                                       §§goto(addr627);
                                                                                    }
                                                                                    §§goto(addr620);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr624);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr260);
                                                                     }
                                                                     §§goto(addr256);
                                                                     §§push(§§pop() * _loc11_.y);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                §§goto(addr256);
                                             }
                                             §§goto(addr245);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr178);
                                 }
                              }
                              §§goto(addr218);
                           }
                           addr686:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§5!n§;
                           if(_loc16_)
                           {
                              §§push(_loc10_.col1);
                              if(_loc16_)
                              {
                                 §§push(§§pop().x);
                                 if(!_loc15_)
                                 {
                                    §§push(_loc11_.x);
                                    if(_loc16_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc16_ || param1)
                                       {
                                          §§push(_loc10_.col2);
                                          if(_loc16_)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc15_)
                                             {
                                                §§push(_loc11_.y);
                                                if(!(_loc15_ && param1))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc16_ || _loc3_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc15_)
                                                         {
                                                            addr749:
                                                            _loc6_ = §§pop();
                                                            if(!(_loc15_ && this))
                                                            {
                                                               addr759:
                                                               §§push(_loc10_.col1.y);
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  §§push(_loc11_.x);
                                                                  if(_loc16_ || _loc2_)
                                                                  {
                                                                     addr776:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc16_ || this)
                                                                     {
                                                                        addr784:
                                                                        addr786:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(_loc16_ || param1)
                                                                        {
                                                                        }
                                                                        addr807:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc15_ && _loc3_))
                                                                        {
                                                                           addr816:
                                                                           _loc7_ = §§pop();
                                                                           _loc10_ = _loc5_.m_xf.R;
                                                                           if(!_loc15_)
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              loop37:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr1205:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.m_sweep);
                                                                                    addr1207:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       addr1208:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr1209:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr1210:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr1211:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   continue loop37;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1201);
                                                                           addr815:
                                                                        }
                                                                     }
                                                                     §§goto(addr816);
                                                                  }
                                                                  addr806:
                                                                  §§goto(addr807);
                                                                  §§push(§§pop() * _loc11_.y);
                                                               }
                                                               §§goto(addr815);
                                                            }
                                                            §§goto(addr816);
                                                         }
                                                         §§goto(addr784);
                                                      }
                                                      §§goto(addr749);
                                                   }
                                                   §§goto(addr776);
                                                }
                                                §§goto(addr806);
                                             }
                                             §§goto(addr784);
                                          }
                                          §§goto(addr786);
                                       }
                                       §§goto(addr816);
                                    }
                                    §§goto(addr776);
                                 }
                                 §§goto(addr816);
                              }
                              §§goto(addr759);
                           }
                           §§goto(addr816);
                        }
                        break;
                     }
                     if(!_loc15_)
                     {
                        §§push(this.§?6§);
                        if(!(_loc15_ && param1))
                        {
                           continue loop0;
                        }
                        addr640:
                        §§push(this.§9!+§);
                        if(!_loc15_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§package§ = §§pop();
                        if(_loc16_)
                        {
                           §§push(_loc14_);
                           if(_loc16_)
                           {
                              §§push(this.§9!+§);
                              if(_loc16_ || this)
                              {
                                 §§push(this.§9!+§);
                                 if(!_loc15_)
                                 {
                                    addr670:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc15_)
                                    {
                                       addr667:
                                       §§push(_loc5_.§"g§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc16_)
                                    {
                                       addr674:
                                       _loc14_ = Number(§§pop());
                                       if(!(_loc15_ && param1))
                                       {
                                          addr1213:
                                          §§push(this);
                                          if(_loc16_ || _loc3_)
                                          {
                                             §§push(_loc14_);
                                             if(!_loc15_)
                                             {
                                                if(§§pop() > 0)
                                                {
                                                   addr1227:
                                                   §§push(1 / _loc14_);
                                                   if(!(_loc15_ && this))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!_loc16_)
                                                      {
                                                         addr1244:
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(!_loc15_)
                                                   {
                                                      §§goto(addr1244);
                                                   }
                                                }
                                                §§pop().§+J§ = §§pop();
                                                if(_loc16_)
                                                {
                                                   if(!param1.§'i§)
                                                   {
                                                      this.§0!y§ = 0;
                                                      if(_loc16_ || _loc2_)
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            loop2:
                                                            while(true)
                                                            {
                                                               if(_loc16_ || this)
                                                               {
                                                                  if(_loc16_ || this)
                                                                  {
                                                                     if(_loc16_)
                                                                     {
                                                                        if(_loc16_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr1594:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_.§="8§);
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.§="8§);
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_.§["A§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§0!y§);
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§?6§);
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().§+"'§);
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            addr1611:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_.§="8§);
                                                                                                               loop14:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_.§="8§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                     §§push(§§pop().y);
                                                                                                                     loop35:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc15_ && this)
                                                                                                                        {
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                        §§push(_loc4_.§["A§);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           §§push(this.§0!y§);
                                                                                                                           if(!(_loc15_ && param1))
                                                                                                                           {
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                              addr1571:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§?6§);
                                                                                                                                 addr1583:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§+"'§);
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       break loop14;
                                                                                                                                    }
                                                                                                                                    continue loop25;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1571:
                                                                                                                           }
                                                                                                                           loop32:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              loop33:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 loop34:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    loop16:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       §§push(_loc4_.m_angularVelocity);
                                                                                                                                       if(_loc16_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_.§"g§);
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§0!y§);
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                addr1538:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc15_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§?6§.§&L§);
                                                                                                                                                }
                                                                                                                                                §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_.§="8§);
                                                                                                                                                   loop4:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc15_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop14;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         continue loop18;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc5_.§="8§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         addr1443:
                                                                                                                                                         loop6:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc15_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.§["A§);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc15_ && this)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop23;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(this.§0!y§);
                                                                                                                                                                     loop8:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§?6§);
                                                                                                                                                                           while(_loc16_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop24;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop().§`O§);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 addr1479:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc15_ && param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop32;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop26;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1358:
                                                                                                                                                                                 §§push(§§pop().§`O§);
                                                                                                                                                                                 continue loop32;
                                                                                                                                                                                 if(!(_loc16_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                 if(_loc16_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop8;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1479);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1583);
                                                                                                                                                                           addr1468:
                                                                                                                                                                        }
                                                                                                                                                                        addr1489:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc15_ && _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop33;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              addr1498:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc15_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop16;
                                                                                                                                                                              }
                                                                                                                                                                              addr1392:
                                                                                                                                                                              if(_loc16_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc15_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop6;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop33;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop23;
                                                                                                                                                               }
                                                                                                                                                               continue loop28;
                                                                                                                                                            }
                                                                                                                                                            continue loop34;
                                                                                                                                                         }
                                                                                                                                                         continue loop34;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop14;
                                                                                                                                                   §§goto(addr1538);
                                                                                                                                                }
                                                                                                                                                addr1539:
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1538);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr1587:
                                                                                                                        }
                                                                                                                        §§goto(addr1571);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1587);
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
                                                                     §§goto(addr1611);
                                                                  }
                                                                  §§goto(addr1539);
                                                               }
                                                               §§goto(addr1498);
                                                            }
                                                            §§push(_loc5_);
                                                            §§push(_loc5_.m_angularVelocity);
                                                            if(!(_loc15_ && _loc3_))
                                                            {
                                                               §§push(_loc5_.§"g§);
                                                               if(_loc16_ || this)
                                                               {
                                                                  §§push(this.§0!y§);
                                                                  if(_loc16_)
                                                                  {
                                                                     addr1300:
                                                                     addr1301:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(this.§?6§.§package§);
                                                                     }
                                                                     §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                     return;
                                                                     addr1302:
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               §§goto(addr1300);
                                                            }
                                                            §§goto(addr1301);
                                                         }
                                                         §§goto(addr1300);
                                                      }
                                                      §§goto(addr1302);
                                                   }
                                                }
                                                §§goto(addr1594);
                                             }
                                             §§goto(addr1244);
                                          }
                                          §§goto(addr1227);
                                       }
                                       §§goto(addr1505);
                                    }
                                    §§goto(addr674);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§goto(addr670);
                           }
                           §§goto(addr674);
                        }
                        §§goto(addr1594);
                     }
                     §§goto(addr1505);
                     §§goto(addr1213);
                  }
                  §§goto(addr686);
                  §§push(§§pop().R);
                  addr94:
               }
               break;
            }
            §§goto(addr640);
            §§push(this.§?6§);
         }
         §§goto(addr1611);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = b2internal::8!Z;
         var _loc3_:b2Body = b2internal::4"0;
         §§push(this.§?6§.§,u§(_loc2_.§="8§,_loc2_.m_angularVelocity,_loc3_.§="8§,_loc3_.m_angularVelocity));
         if(_loc7_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§+J§);
         if(_loc7_ || _loc3_)
         {
            §§push(-§§pop());
            if(!(_loc6_ && this))
            {
               §§push(§§pop() * _loc4_);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc5_:* = §§pop();
         if(!(_loc6_ && _loc2_))
         {
            §§push(this);
            §§push(this.§0!y§);
            if(!_loc6_)
            {
               §§push(§§pop() + _loc5_);
            }
            §§pop().§0!y§ = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc2_.§="8§);
               while(true)
               {
                  §§push(_loc2_.§="8§);
                  addr390:
                  while(true)
                  {
                     §§push(§§pop().x);
                     addr391:
                     while(true)
                     {
                        §§push(_loc2_.§["A§);
                        addr393:
                        while(true)
                        {
                           §§push(_loc5_);
                           addr394:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr395:
                              while(true)
                              {
                                 §§push(this.§?6§);
                                 addr397:
                                 while(true)
                                 {
                                    §§push(§§pop().§+"'§);
                                    addr398:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr399:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr400:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             addr401:
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
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
                  addr252:
                  if(_loc6_ && _loc2_)
                  {
                     continue;
                  }
                  §§push(_loc3_.§="8§);
                  loop27:
                  while(true)
                  {
                     §§push(§§pop().x);
                     loop28:
                     while(true)
                     {
                        §§push(_loc3_.§["A§);
                        loop29:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              §§push(_loc5_);
                              if(!_loc6_)
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    if(_loc7_ || this)
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop30:
                                       while(true)
                                       {
                                          §§push(this.§?6§);
                                          addr286:
                                          loop31:
                                          while(!_loc6_)
                                          {
                                             §§push(§§pop().§`O§);
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr290:
                                                loop33:
                                                while(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop34:
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop35:
                                                            for(; _loc7_ || _loc2_; if(_loc6_ && param1)
                                                            {
                                                               continue;
                                                            },if(!(_loc6_ && _loc2_))
                                                            {
                                                               §§push(_loc3_.§["A§);
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_ || _loc2_)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc7_)
                                                                     {
                                                                        addr177:
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc7_ || _loc3_))
                                                                           {
                                                                              addr227:
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop29;
                                                                              }
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 §§goto(addr237);
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr371);
                                                                              }
                                                                              addr370:
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop30;
                                                                           }
                                                                           continue loop34;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr370);
                                                                           §§goto(addr177);
                                                                        }
                                                                        addr369:
                                                                     }
                                                                     addr224:
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop33;
                                                                     }
                                                                     §§goto(addr227);
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§goto(addr395);
                                                               }
                                                               §§goto(addr227);
                                                            },§§goto(addr401))
                                                            {
                                                               §§pop().x = §§pop();
                                                               loop36:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.§="8§);
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     §§push(_loc3_.§="8§);
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop27;
                                                                     }
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           continue loop35;
                                                                        }
                                                                        addr237:
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop28;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 §§push(_loc3_.m_angularVelocity);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(_loc3_.§"g§);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr108:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          §§push(this.§?6§.§package§);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       continue;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 §§goto(addr108);
                                                                              }
                                                                              addr344:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.§="8§);
                                                                                 addr250:
                                                                                 addr348:
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    §§goto(addr252);
                                                                                    continue loop36;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.§="8§);
                                                                                    addr350:
                                                                                    while(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       break loop35;
                                                                                    }
                                                                                    §§goto(addr390);
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(_loc7_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              §§push(_loc2_.m_angularVelocity);
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(_loc2_.§"g§);
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       addr342:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(this.§?6§.§&L§);
                                                                                       }
                                                                                       §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                       §§goto(addr344);
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                           continue loop0;
                                                                           addr372:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           §§goto(addr372);
                                                                        }
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                                  §§goto(addr250);
                                                               }
                                                               §§goto(addr401);
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§push(_loc2_.§["A§);
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     break loop33;
                                                                  }
                                                                  addr357:
                                                               }
                                                               break;
                                                               §§goto(addr303);
                                                            }
                                                            addr303:
                                                            §§goto(addr391);
                                                         }
                                                         break;
                                                      }
                                                      addr359:
                                                      while(!_loc6_)
                                                      {
                                                         §§push(this.§?6§);
                                                         break loop31;
                                                      }
                                                      §§goto(addr393);
                                                   }
                                                   §§goto(addr400);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr359);
                                                }
                                                addr215:
                                                §§push(§§pop().§`O§);
                                                if(_loc6_ && this)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr224);
                                                §§push(§§pop().y);
                                             }
                                          }
                                          while(_loc7_)
                                          {
                                             §§push(§§pop().§+"'§);
                                             if(_loc7_)
                                             {
                                                §§goto(addr369);
                                                §§push(§§pop().y);
                                             }
                                             §§goto(addr398);
                                          }
                                          §§goto(addr397);
                                          if(_loc6_)
                                          {
                                             continue;
                                          }
                                          §§push(this.§?6§);
                                          if(!(_loc6_ && this))
                                          {
                                             §§goto(addr215);
                                          }
                                          §§goto(addr286);
                                       }
                                    }
                                    §§goto(addr394);
                                 }
                                 break;
                              }
                              §§goto(addr290);
                           }
                           §§goto(addr357);
                        }
                        §§goto(addr399);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr348);
         }
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::8!Z;
         var _loc4_:b2Body = b2internal::4"0;
         if(_loc10_)
         {
            §§push(this.m_revolute1);
            if(!(_loc9_ && this))
            {
               if(!§§pop())
               {
                  §§push(this.m_prismatic1.§`z§());
                  if(_loc10_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc9_ && _loc2_))
                     {
                        _loc5_ = §§pop();
                        loop59:
                        while(true)
                        {
                           loop58:
                           while(true)
                           {
                              §§push(this.m_revolute2);
                              if(_loc10_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       if(_loc9_)
                                       {
                                          continue loop59;
                                       }
                                       if(_loc10_)
                                       {
                                          addr80:
                                          if(_loc10_ || param1)
                                          {
                                             §§push(this.m_revolute2);
                                             break;
                                          }
                                          addr135:
                                          loop54:
                                          while(true)
                                          {
                                             §§push(this.m_revolute1);
                                             addr137:
                                             while(true)
                                             {
                                                §§push(§§pop().§'r§());
                                                if(_loc10_ || param1)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                do
                                                {
                                                   _loc5_ = §§pop();
                                                }
                                                while(_loc9_);
                                                
                                                §§push(Number(§§pop()));
                                                if(_loc10_ || this)
                                                {
                                                   _loc6_ = §§pop();
                                                   addr101:
                                                   §§push(this.§3!A§);
                                                   if(_loc10_ || param1)
                                                   {
                                                      addr157:
                                                      §§push(_loc5_);
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         §§push(this.§9!+§);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() * _loc6_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc10_ || this)
                                                      {
                                                         addr181:
                                                         var _loc7_:Number = §§pop();
                                                         §§push(this.§+J§);
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            §§push(-§§pop());
                                                            if(!_loc9_)
                                                            {
                                                               addr194:
                                                               §§push(§§pop() * _loc7_);
                                                               if(_loc10_)
                                                               {
                                                                  addr198:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc8_:* = §§pop();
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(_loc3_.m_sweep);
                                                                  loop0:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().c);
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_.m_sweep);
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().c);
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.§["A§);
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§?6§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§+"'§);
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                loop10:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop12:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         loop13:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_.m_sweep);
                                                                                                            loop14:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().c);
                                                                                                               loop15:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_.m_sweep);
                                                                                                                  loop16:
                                                                                                                  while(!(_loc9_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop().c);
                                                                                                                     loop17:
                                                                                                                     for(; _loc10_; while(!(_loc9_ && param1))
                                                                                                                     {
                                                                                                                        §§goto(addr486);
                                                                                                                        §§push(§§pop().x);
                                                                                                                     })
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(_loc10_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                           §§push(_loc3_.§["A§);
                                                                                                                           loop18:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              loop19:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 loop20:
                                                                                                                                 while(_loc10_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(this.§?6§);
                                                                                                                                    loop21:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§+"'§);
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       while(_loc10_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          addr433:
                                                                                                                                          if(!(_loc10_ || param1))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(_loc9_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop19;
                                                                                                                                          }
                                                                                                                                          addr448:
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             addr450:
                                                                                                                                             if(!(_loc9_ && param1))
                                                                                                                                             {
                                                                                                                                                addr458:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                   loop50:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                                                                      if(_loc10_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop14;
                                                                                                                                                            }
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                            if(_loc10_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().a);
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_.§"g§);
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                           if(_loc10_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc10_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!(_loc9_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr299:
                                                                                                                                                                                    §§push(this.§?6§);
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr304:
                                                                                                                                                                                       §§push(§§pop().§package§);
                                                                                                                                                                                       if(!(_loc9_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr322:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc10_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr330:
                                                                                                                                                                                             §§pop().a = §§pop() + §§pop();
                                                                                                                                                                                             loop51:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc3_.§,6§();
                                                                                                                                                                                                         continue loop50;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                                                                                                                      addr223:
                                                                                                                                                                                                      addr335:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                loop48:
                                                                                                                                                                                                while(_loc10_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc4_.m_sweep);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().c);
                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc9_ && _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr351:
                                                                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                                                                            if(_loc10_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop17;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr366:
                                                                                                                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc4_.§["A§);
                                                                                                                                                                                                                        if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr492:
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(_loc10_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr399:
                                                                                                                                                                                                                                       if(!(_loc9_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop18;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr488:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr448);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(_loc10_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§?6§);
                                                                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                                                                       §§goto(addr450);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop5;
                                                                                                                                                                                                                                    addr492:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr492);
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop10;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr512:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 addr513:
                                                                                                                                                                                                                                 while(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                       continue loop48;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr616);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr513);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr433);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr399);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr486:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr366);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr488);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr458);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                                                                               continue loop17;
                                                                                                                                                                                                               §§goto(addr351);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop16;
                                                                                                                                                                                                            addr475:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(_loc10_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr475);
                                                                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop15;
                                                                                                                                                                                                         addr466:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr465:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr466);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop50;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                      break loop48;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop12;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc3_.m_sweep);
                                                                                                                                                                                                   addr530:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc3_.m_sweep);
                                                                                                                                                                                                      addr532:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().a);
                                                                                                                                                                                                         if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc3_.§"g§);
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  §§goto(addr304);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr545:
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr551:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().a = §§pop();
                                                                                                                                                                                                            break loop51;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr519);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr519:
                                                                                                                                                                                                addr216:
                                                                                                                                                                                                if(!(_loc10_ || param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr223);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr465);
                                                                                                                                                                                                §§push(_loc4_.m_sweep);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§?6§);
                                                                                                                                                                                             break loop50;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr545);
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr322);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 addr550:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr551);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr549:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr304);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr550);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr299);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr551);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr330);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr532);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr530);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr339);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr549);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr518);
                                                                                                                                             }
                                                                                                                                             §§goto(addr492);
                                                                                                                                          }
                                                                                                                                          §§goto(addr513);
                                                                                                                                       }
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    continue loop9;
                                                                                                                                 }
                                                                                                                                 continue loop7;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr617);
                                                                                                                     }
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  continue loop2;
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
                                                               §§goto(addr335);
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                   }
                                                   §§goto(addr181);
                                                   addr101:
                                                }
                                                §§goto(addr181);
                                                continue loop54;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop58;
                                       }
                                    }
                                    §§goto(addr101);
                                 }
                                 else
                                 {
                                    §§push(this.m_prismatic2.§`z§());
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       if(_loc10_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc10_)
                                          {
                                             _loc6_ = §§pop();
                                             if(_loc10_ || _loc3_)
                                             {
                                                if(false)
                                                {
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr101);
                                             }
                                             §§goto(addr101);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr90);
                                       }
                                       §§goto(addr181);
                                    }
                                 }
                                 §§goto(addr181);
                              }
                              break;
                           }
                           §§goto(addr90);
                        }
                        addr124:
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr181);
               }
               §§goto(addr135);
            }
            §§goto(addr137);
         }
         §§goto(addr124);
      }
   }
}
