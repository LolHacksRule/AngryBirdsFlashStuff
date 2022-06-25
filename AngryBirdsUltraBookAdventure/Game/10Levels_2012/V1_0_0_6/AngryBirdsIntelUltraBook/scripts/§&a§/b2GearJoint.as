package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §;%§.b2Mat22;
   import §;%§.b2Vec2;
   
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
      
      private var §#!=§:b2Jacobian;
      
      private var §?A§:Number;
      
      private var §=G§:Number;
      
      private var § ,§:Number;
      
      private var §<<§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_ || param1)
         {
            this.m_groundAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(!_loc7_)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  while(true)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                  }
                  addr41:
                  if(!(_loc6_ || _loc3_))
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop4:
                     while(true)
                     {
                        this.§#!=§ = new b2Jacobian();
                        while(_loc6_)
                        {
                           super(param1);
                           if(!(_loc6_ || this))
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              §§goto(addr41);
                           }
                           else
                           {
                              while(true)
                              {
                                 continue loop4;
                              }
                              addr63:
                           }
                        }
                        §§goto(addr69);
                     }
                  }
                  §§push(param1.joint1.§"_§);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(param1.joint2.§"_§);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc7_)
                  {
                     this.m_revolute1 = null;
                  }
                  loop6:
                  while(true)
                  {
                     this.m_prismatic1 = null;
                     loop7:
                     while(true)
                     {
                        this.m_revolute2 = null;
                        loop8:
                        while(true)
                        {
                           this.m_prismatic2 = null;
                           while(true)
                           {
                              this.m_ground1 = param1.joint1.§>!0§();
                              loop10:
                              for(; !_loc7_; if(_loc7_ && _loc3_)
                              {
                                 continue;
                              },§§goto(addr144))
                              {
                                 if(_loc7_)
                                 {
                                    continue loop8;
                                 }
                                 §>0§ = param1.joint1.§&@§();
                                 loop11:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    loop12:
                                    while(true)
                                    {
                                       if(§§pop() == b2Joint.e_revoluteJoint)
                                       {
                                          while(true)
                                          {
                                             this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
                                             loop45:
                                             while(true)
                                             {
                                                §§push(this.m_groundAnchor1);
                                                addr473:
                                                while(true)
                                                {
                                                   §§pop().SetV(this.m_revolute1.m_localAnchor1);
                                                   addr477:
                                                   while(true)
                                                   {
                                                      §§push(this.m_localAnchor1);
                                                      addr465:
                                                      while(true)
                                                      {
                                                         §§pop().SetV(this.m_revolute1.m_localAnchor2);
                                                         addr469:
                                                         while(true)
                                                         {
                                                            §§push(this.m_revolute1.§?O§());
                                                            addr452:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr453:
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  loop38:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ && this)
                                                                     {
                                                                        continue loop45;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.m_ground2 = param1.joint2.§>!0§();
                                                                        addr375:
                                                                        while(_loc6_ || _loc3_)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §[=§ = param1.joint2.§&@§();
                                                                              continue loop12;
                                                                           }
                                                                           continue loop38;
                                                                        }
                                                                        §§goto(addr461);
                                                                     }
                                                                     addr461:
                                                                  }
                                                                  continue loop45;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr483:
                                       }
                                       else
                                       {
                                          this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                       }
                                       loop13:
                                       while(true)
                                       {
                                          §§push(this.m_groundAnchor1);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                             loop14:
                                             while(true)
                                             {
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§push(this.m_localAnchor1);
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(this.m_prismatic1.§null §());
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  continue loop15;
                                                                  addr175:
                                                                  if(_loc7_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§=G§ = param1.§ N§;
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc7_ && _loc3_)
                                                                                       {
                                                                                          break loop25;
                                                                                       }
                                                                                       §§push(this);
                                                                                       §§push(_loc4_);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(this.§=G§);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(§§pop() * _loc5_);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§pop().§?A§ = §§pop();
                                                                                       while(!_loc7_)
                                                                                       {
                                                                                          continue loop25;
                                                                                          this.§<<§ = 0;
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             return;
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr477);
                                                                                 §§goto(addr287);
                                                                              }
                                                                              addr287:
                                                                              addr144:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.m_localAnchor2);
                                                                                 addr291:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().SetV(this.m_revolute2.m_localAnchor2);
                                                                                 }
                                                                              }
                                                                              addr326:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(!(_loc7_ && _loc2_))
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 addr334:
                                                                                 while(!(_loc7_ && _loc2_))
                                                                                 {
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
                                                                                       continue loop11;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop11;
                                                                              §§goto(addr291);
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        addr285:
                                                                     }
                                                                     else
                                                                     {
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_ && _loc3_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(this.m_localAnchor2);
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    §§pop().SetV(this.m_prismatic2.m_localAnchor2);
                                                                                 }
                                                                                 continue loop24;
                                                                              }
                                                                              continue loop6;
                                                                              addr245:
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           §§push(this.m_prismatic2.§null §());
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(!(_loc7_ && _loc2_))
                                                                              {
                                                                                 addr173:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§goto(addr175);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       §§goto(addr285);
                                                                                    }
                                                                                    addr284:
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr173);
                                                                        }
                                                                        §§goto(addr452);
                                                                     }
                                                                     §§goto(addr291);
                                                                  }
                                                                  §§goto(addr483);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr453);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr465);
                                                }
                                                §§goto(addr469);
                                             }
                                          }
                                          §§goto(addr473);
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
         §§goto(addr63);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::>0.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§<<§);
            if(!_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || this)
               {
                  §§push(this.§#!=§.§2>§.x);
                  if(_loc3_ || _loc3_)
                  {
                     addr65:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!(_loc2_ && this))
                     {
                        §§push(this.§<<§);
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr90);
                        }
                        §§push(§§pop() * §§pop());
                     }
                  }
                  addr90:
                  §§push(§§pop() * §§pop());
                  if(!_loc2_)
                  {
                     addr85:
                     §§push(this.§#!=§.§2>§.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
               §§goto(addr65);
            }
            §§goto(addr85);
         }
         §§goto(addr65);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Mat22 = b2internal::[=.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc8_)
         {
            §§push(§§pop() - b2internal::[=.m_sweep.localCenter.x);
            if(!(_loc9_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc9_ && this))
         {
            §§push(§§pop() - b2internal::[=.m_sweep.localCenter.y);
            if(!_loc9_)
            {
               addr57:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc8_ || this)
            {
               §§push(_loc3_);
               if(_loc8_)
               {
                  addr90:
                  §§push(§§pop() * §§pop());
                  if(_loc8_)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc8_ || _loc2_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                  }
                  var _loc5_:Number = §§pop();
                  if(_loc8_ || param1)
                  {
                     §§push(_loc2_.col1.y);
                     if(!(_loc9_ && _loc3_))
                     {
                        §§push(_loc3_);
                        if(!(_loc9_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc8_)
                           {
                              §§push(_loc2_.col2.y);
                              if(_loc8_ || _loc2_)
                              {
                                 §§push(§§pop() * _loc4_);
                                 if(!_loc9_)
                                 {
                                    addr144:
                                    §§push(§§pop() + §§pop());
                                    if(_loc8_)
                                    {
                                       addr147:
                                       §§push(Number(§§pop()));
                                       if(_loc8_ || this)
                                       {
                                          addr155:
                                          _loc4_ = §§pop();
                                          if(_loc8_ || param1)
                                          {
                                             addr163:
                                             §§push(_loc5_);
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc8_)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr175:
                                                   §§push(this.§<<§);
                                                   if(!_loc9_)
                                                   {
                                                      addr179:
                                                      §§push(§§pop() * this.§#!=§.§2>§.x);
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         addr191:
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                }
                                                §§goto(addr191);
                                             }
                                             var _loc6_:* = §§pop();
                                             §§push(this.§<<§);
                                             if(!(_loc9_ && this))
                                             {
                                                §§push(§§pop() * this.§#!=§.§2>§.y);
                                                if(!_loc9_)
                                                {
                                                   addr209:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc7_:* = §§pop();
                                                §§push(param1);
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push(this.§<<§);
                                                   if(_loc8_)
                                                   {
                                                      §§push(this.§#!=§.§,$§);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc8_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(_loc7_);
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     §§goto(addr260);
                                                                  }
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                   §§goto(addr268);
                                                }
                                                addr260:
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc9_ && param1))
                                                {
                                                   addr268:
                                                   §§push(_loc4_);
                                                   if(_loc8_ || param1)
                                                   {
                                                      addr278:
                                                      §§push(§§pop() + §§pop() * _loc6_);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                return §§pop() * §§pop();
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr163);
               }
               §§push(§§pop() + §§pop());
               if(_loc9_)
               {
               }
            }
            §§goto(addr90);
         }
         §§goto(addr57);
      }
      
      public function §>@§() : Number
      {
         return this.§=G§;
      }
      
      public function §+!x§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§=G§ = param1;
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
         var _loc13_:Number = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::>0;
         var _loc5_:b2Body = b2internal::[=;
         §§push(0);
         if(!(_loc15_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(!_loc15_)
         {
            §§push(this.§#!=§);
            if(!(_loc15_ && _loc2_))
            {
               §§pop().§&!K§();
               if(!_loc15_)
               {
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(_loc16_)
                        {
                           §§push(§§pop().R);
                           if(!(_loc15_ && this))
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§!1§;
                              if(_loc16_)
                              {
                                 §§push(_loc10_.col1);
                                 if(!(_loc15_ && _loc3_))
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc15_)
                                    {
                                       §§push(_loc11_.x);
                                       if(_loc16_ || _loc3_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc16_)
                                          {
                                             §§push(_loc10_.col2);
                                             if(!_loc15_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc16_)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc16_)
                                                      {
                                                         addr182:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc16_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!_loc15_)
                                                            {
                                                               addr188:
                                                               _loc6_ = §§pop();
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  addr198:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(!(_loc15_ && _loc2_))
                                                                  {
                                                                     addr206:
                                                                     §§push(_loc11_.x);
                                                                     if(_loc16_)
                                                                     {
                                                                        addr229:
                                                                        addr230:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc15_)
                                                                        {
                                                                           addr213:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(!(_loc15_ && _loc2_))
                                                                           {
                                                                              addr223:
                                                                              §§push(§§pop() * _loc11_.y);
                                                                           }
                                                                        }
                                                                        _loc7_ = Number(§§pop());
                                                                        _loc10_ = _loc4_.m_xf.R;
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           §§push(this.m_localAnchor1);
                                                                           loop78:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr600:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_.m_sweep);
                                                                                 addr602:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().localCenter);
                                                                                    addr603:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr604:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          addr605:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr606:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                continue loop78;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr599:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.m_localAnchor1);
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              loop86:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_.m_sweep);
                                                                                 if(!(_loc15_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop().localCenter);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       loop87:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          loop88:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             loop89:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc10_.col1);
                                                                                                loop90:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   loop91:
                                                                                                   while(_loc16_ || this)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      loop92:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc15_ && _loc2_))
                                                                                                         {
                                                                                                            if(!(_loc15_ && this))
                                                                                                            {
                                                                                                               §§push(_loc10_.col2);
                                                                                                               loop93:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  while(!_loc15_)
                                                                                                                  {
                                                                                                                     §§push(_loc9_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr549:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr550:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc15_ && this))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 continue loop86;
                                                                                                                              }
                                                                                                                              §§goto(addr600);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        loop104:
                                                                                                                        for(; !(_loc15_ && this); if(!(_loc16_ || this))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        },§§goto(addr307),§§push(_loc12_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           loop105:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 loop107:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc16_ || this)
                                                                                                                                          {
                                                                                                                                             if(_loc15_ && param1)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop());
                                                                                                                                             while(!_loc15_)
                                                                                                                                             {
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                if(_loc16_ || this)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      if(!_loc15_)
                                                                                                                                                      {
                                                                                                                                                         addr448:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            addr449:
                                                                                                                                                            addr495:
                                                                                                                                                            while(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(!(_loc15_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               continue loop104;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr604);
                                                                                                                                                         }
                                                                                                                                                         addr448:
                                                                                                                                                      }
                                                                                                                                                      addr453:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            continue loop92;
                                                                                                                                                         }
                                                                                                                                                         addr477:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            addr478:
                                                                                                                                                            while(_loc16_ || param1)
                                                                                                                                                            {
                                                                                                                                                               continue loop93;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr606);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop92;
                                                                                                                                                   }
                                                                                                                                                   addr444:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc12_ = §§pop();
                                                                                                                                                      addr467:
                                                                                                                                                      while(!_loc15_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§#!=§);
                                                                                                                                                         loop113:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().§1E§);
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            if(!(_loc15_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().Set(§§pop(),§§pop());
                                                                                                                                                            addr413:
                                                                                                                                                            while(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               continue loop113;
                                                                                                                                                            }
                                                                                                                                                            continue loop90;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop89;
                                                                                                                                                   }
                                                                                                                                                   addr466:
                                                                                                                                                }
                                                                                                                                                §§goto(addr448);
                                                                                                                                             }
                                                                                                                                             continue loop105;
                                                                                                                                          }
                                                                                                                                          §§goto(addr444);
                                                                                                                                          if(!(_loc16_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(!(_loc15_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                continue loop86;
                                                                                                                                             }
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                if(_loc15_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop91;
                                                                                                                                                }
                                                                                                                                                _loc14_ = §§pop();
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr368);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr608);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr467);
                                                                                                                                                }
                                                                                                                                                §§goto(addr383);
                                                                                                                                             }
                                                                                                                                             §§goto(addr550);
                                                                                                                                          }
                                                                                                                                          §§goto(addr478);
                                                                                                                                       }
                                                                                                                                       continue loop107;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop87;
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr550);
                                                                                                      }
                                                                                                      §§goto(addr605);
                                                                                                   }
                                                                                                   continue loop88;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr603);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr602);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr599);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc16_)
                                                                     {
                                                                        §§goto(addr229);
                                                                     }
                                                                     §§goto(addr230);
                                                                  }
                                                                  §§goto(addr213);
                                                               }
                                                               §§goto(addr229);
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                   }
                                                   §§goto(addr223);
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr213);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr198);
                              }
                              §§goto(addr229);
                           }
                           addr671:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§!1§;
                           if(!_loc15_)
                           {
                              §§push(_loc10_.col1);
                              if(_loc16_ || param1)
                              {
                                 §§push(§§pop().x);
                                 if(_loc16_)
                                 {
                                    §§push(_loc11_.x);
                                    if(!(_loc15_ && _loc3_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc16_ || _loc2_)
                                       {
                                          §§push(_loc10_.col2);
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             §§push(§§pop().x);
                                             if(_loc16_)
                                             {
                                                §§push(_loc11_.y);
                                                if(_loc16_ || this)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc16_ || param1)
                                                      {
                                                         addr746:
                                                         §§push(Number(§§pop()));
                                                         if(_loc16_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(!(_loc15_ && _loc3_))
                                                            {
                                                               addr759:
                                                               §§push(_loc10_.col1.y);
                                                               if(!_loc15_)
                                                               {
                                                                  addr762:
                                                                  §§push(_loc11_.x);
                                                                  if(_loc16_)
                                                                  {
                                                                     addr766:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc16_)
                                                                     {
                                                                        addr769:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(_loc16_ || param1)
                                                                        {
                                                                           addr782:
                                                                           §§push(§§pop() + §§pop() * _loc11_.y);
                                                                           if(_loc16_ || param1)
                                                                           {
                                                                              addr790:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr782);
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                  }
                                                                  §§goto(addr782);
                                                               }
                                                               §§goto(addr769);
                                                            }
                                                            _loc10_ = _loc5_.m_xf.R;
                                                            if(!(_loc15_ && _loc3_))
                                                            {
                                                               §§push(this.m_localAnchor2);
                                                               loop36:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr1240:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_.m_sweep);
                                                                     addr1242:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().localCenter);
                                                                        addr1243:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr1244:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              addr1245:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr1246:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    continue loop36;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr1208);
                                                         }
                                                         §§goto(addr790);
                                                      }
                                                      §§goto(addr769);
                                                   }
                                                }
                                             }
                                             §§goto(addr782);
                                          }
                                          §§goto(addr769);
                                       }
                                       §§goto(addr746);
                                    }
                                    §§goto(addr766);
                                 }
                                 §§goto(addr762);
                              }
                           }
                           §§goto(addr759);
                        }
                        break;
                     }
                     if(_loc16_)
                     {
                        §§push(this.§#!=§);
                        if(_loc16_)
                        {
                           §§pop().§5!a§ = -1;
                           if(_loc16_ || this)
                           {
                              §§push(_loc14_);
                              if(!_loc15_)
                              {
                                 §§push(_loc4_.§,!o§);
                                 if(!_loc15_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc16_ || this)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc15_)
                                       {
                                          _loc14_ = §§pop();
                                          if(_loc16_)
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             addr608:
                                             if(!this.m_revolute2)
                                             {
                                                §§push(_loc3_.m_xf);
                                                break;
                                             }
                                             if(!_loc15_)
                                             {
                                                addr615:
                                                §§push(this.§#!=§);
                                                §§push(this.§=G§);
                                                if(!_loc15_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§,$§ = §§pop();
                                                if(!(_loc15_ && _loc2_))
                                                {
                                                   §§push(_loc14_);
                                                   if(!_loc15_)
                                                   {
                                                      addr631:
                                                      §§push(this.§=G§);
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         addr640:
                                                         §§push(this.§=G§);
                                                         if(_loc16_ || _loc3_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc16_)
                                                            {
                                                               addr654:
                                                               §§push(§§pop() * _loc5_.§,!o§);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc15_)
                                                            {
                                                               addr659:
                                                               _loc14_ = Number(§§pop());
                                                               if(_loc16_ || _loc3_)
                                                               {
                                                                  addr1248:
                                                                  §§push(this);
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(_loc14_);
                                                                     if(_loc16_)
                                                                     {
                                                                        if(§§pop() > 0)
                                                                        {
                                                                           addr1257:
                                                                           §§push(1 / _loc14_);
                                                                           if(_loc16_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!(_loc15_ && _loc3_))
                                                                              {
                                                                                 addr1280:
                                                                                 §§pop().§ ,§ = §§pop();
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    if(!param1.§#!P§)
                                                                                    {
                                                                                       this.§<<§ = 0;
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                addr1547:
                                                                                                loop35:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_.§%!V§);
                                                                                                   loop32:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc16_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(_loc5_.§%!V§);
                                                                                                         loop29:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               loop28:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.§-7§);
                                                                                                                     loop25:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§<<§);
                                                                                                                        if(!(_loc15_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              if(!(_loc15_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(this.§#!=§);
                                                                                                                                 loop27:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc15_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§2>§);
                                                                                                                                       loop26:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          addr1511:
                                                                                                                                          loop15:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                while(_loc15_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§<<§);
                                                                                                                                                      addr1628:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr1629:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§#!=§);
                                                                                                                                                            loop19:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().§1E§);
                                                                                                                                                               loop20:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  addr1633:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     addr1634:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        addr1635:
                                                                                                                                                                        loop22:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                           addr1636:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_.§%!V§);
                                                                                                                                                                              addr1551:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_.§%!V§);
                                                                                                                                                                                 addr1553:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    addr1554:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_.§-7§);
                                                                                                                                                                                       addr1556:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§<<§);
                                                                                                                                                                                          if(_loc16_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§#!=§);
                                                                                                                                                                                                addr1568:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc16_ || this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop19;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop().§1E§);
                                                                                                                                                                                                   if(!_loc16_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop20;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1566:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop22;
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
                                                                                                                                                addr1517:
                                                                                                                                                §§pop().x = §§pop() + §§pop();
                                                                                                                                                loop14:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_.§%!V§);
                                                                                                                                                   if(_loc15_ && param1)
                                                                                                                                                   {
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_.§%!V§);
                                                                                                                                                      if(!(_loc16_ || param1))
                                                                                                                                                      {
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc15_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc16_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.§-7§);
                                                                                                                                                               if(!(_loc15_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop25;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(this.§<<§);
                                                                                                                                                                  if(_loc16_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop15;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1409:
                                                                                                                                                                        if(_loc16_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§#!=§);
                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop27;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop().§2>§);
                                                                                                                                                                           if(_loc15_ && _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop26;
                                                                                                                                                                           }
                                                                                                                                                                           addr1429:
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc16_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1439:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc16_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc16_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1454:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(!_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop28;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1458:
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                §§push(_loc5_.m_angularVelocity);
                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc5_.§,!o§);
                                                                                                                                                                                                   if(!_loc15_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§<<§);
                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1328:
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(!(_loc15_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1326:
                                                                                                                                                                                                            §§push(§§pop() * this.§#!=§.§,$§);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc15_ && this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop14;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc15_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc15_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1619:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_.§%!V§);
                                                                                                                                                                                                                  addr1621:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc4_.§%!V§);
                                                                                                                                                                                                                     addr1623:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                        addr1624:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1626);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1636);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         return;
                                                                                                                                                                                                         addr1329:
                                                                                                                                                                                                         addr1345:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1326);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1328);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1461:
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1615:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                             §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_.§,!o§);
                                                                                                                                                                                                if(!_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§<<§);
                                                                                                                                                                                                   if(!(_loc15_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1545:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc16_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§#!=§.§5!a§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                                                                                      continue loop35;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1545);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1458);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1566);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(!(_loc15_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc15_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       while(!(_loc15_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                             §§goto(addr1615);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1624);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1635);
                                                                                                                                                                                       addr1595:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1629);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1634);
                                                                                                                                                                                 addr1580:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1628);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1633);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1514);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1439);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1429);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1409);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1595);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1454);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1553);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1621);
                                                                                                                                                }
                                                                                                                                                addr1514:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1580);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1568);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1556);
                                                                                                                           }
                                                                                                                           §§goto(addr1517);
                                                                                                                        }
                                                                                                                        §§goto(addr1511);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1554);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1623);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1551);
                                                                                                   }
                                                                                                }
                                                                                                addr1547:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr1300:
                                                                                             }
                                                                                             §§goto(addr1328);
                                                                                          }
                                                                                          §§goto(addr1459);
                                                                                       }
                                                                                       §§goto(addr1329);
                                                                                    }
                                                                                    §§goto(addr1619);
                                                                                 }
                                                                                 §§goto(addr1547);
                                                                              }
                                                                              §§goto(addr1280);
                                                                           }
                                                                           addr1279:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              §§goto(addr1279);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1280);
                                                                  }
                                                                  §§goto(addr1257);
                                                                  addr667:
                                                               }
                                                               §§goto(addr1547);
                                                            }
                                                            §§goto(addr659);
                                                         }
                                                      }
                                                      §§goto(addr654);
                                                   }
                                                   §§goto(addr659);
                                                }
                                                §§goto(addr1636);
                                             }
                                             §§goto(addr1300);
                                          }
                                          §§goto(addr1619);
                                       }
                                       §§goto(addr631);
                                    }
                                    §§goto(addr659);
                                 }
                                 §§goto(addr640);
                              }
                              §§goto(addr659);
                           }
                           §§goto(addr1345);
                        }
                        §§goto(addr615);
                     }
                     §§goto(addr667);
                     §§goto(addr1248);
                  }
                  §§goto(addr671);
                  §§push(§§pop().R);
               }
               §§goto(addr1300);
            }
            §§goto(addr615);
         }
         §§goto(addr1461);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = b2internal::>0;
         var _loc3_:b2Body = b2internal::[=;
         §§push(this.§#!=§.§2!<§(_loc2_.§%!V§,_loc2_.m_angularVelocity,_loc3_.§%!V§,_loc3_.m_angularVelocity));
         if(_loc6_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§ ,§);
         if(!_loc7_)
         {
            §§push(-§§pop());
            if(!_loc7_)
            {
               addr49:
               §§push(§§pop() * _loc4_);
               if(_loc6_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               §§push(this);
               §§push(this.§<<§);
               if(!_loc7_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§<<§ = §§pop();
            }
            while(true)
            {
               §§push(_loc2_.§%!V§);
               while(true)
               {
                  §§push(_loc2_.§%!V§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().x);
                     while(true)
                     {
                        §§push(_loc2_.§-7§);
                        while(true)
                        {
                           §§push(_loc5_);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              while(true)
                              {
                                 §§push(this.§#!=§);
                                 while(true)
                                 {
                                    §§push(§§pop().§1E§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc2_.§%!V§);
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§%!V§);
                                                      while(_loc6_ || _loc2_)
                                                      {
                                                         §§push(§§pop().y);
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            §§push(_loc2_.§-7§);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  addr362:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§#!=§);
                                                                     addr364:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§1E§);
                                                                        if(_loc7_ && this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop().y);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           addr374:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           addr284:
                                                                           while(!(_loc7_ && _loc3_))
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr375);
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
                  if(!(_loc6_ || _loc3_))
                  {
                     continue;
                  }
                  §§goto(addr126);
               }
            }
         }
         §§goto(addr49);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(!(_loc9_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::>0;
         var _loc4_:b2Body = b2internal::[=;
         if(_loc10_ || _loc2_)
         {
            §§push(this.m_revolute1);
            if(!(_loc9_ && _loc3_))
            {
               if(!§§pop())
               {
                  §§push(this.m_prismatic1.§null §());
                  if(!_loc9_)
                  {
                     §§push(Number(§§pop()));
                     loop0:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop1:
                        while(true)
                        {
                           if(!(_loc9_ && this))
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(this.m_revolute2);
                                 if(_loc10_ || _loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this.m_prismatic2.§null §());
                                       if(_loc10_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc10_ || this)
                                          {
                                             if(_loc9_)
                                             {
                                                continue loop0;
                                             }
                                             if(!_loc9_)
                                             {
                                                _loc6_ = §§pop();
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   if(_loc9_ && param1)
                                                   {
                                                      addr100:
                                                      if(_loc10_)
                                                      {
                                                         addr104:
                                                         §§push(this.m_revolute2.§?O§());
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      if(false)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr152:
                                                      while(true)
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr152:
                                                   }
                                                }
                                                else
                                                {
                                                   addr118:
                                                }
                                                §§push(this.§?A§);
                                                if(_loc10_ || _loc2_)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(this.§=G§);
                                                      if(_loc10_ || this)
                                                      {
                                                         §§push(§§pop() * _loc6_);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc10_ || this)
                                                   {
                                                      break;
                                                   }
                                                   addr186:
                                                   var _loc7_:* = §§pop();
                                                   §§push(this.§ ,§);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§push(§§pop() * _loc7_);
                                                         if(_loc10_)
                                                         {
                                                            addr203:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc8_:* = §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            §§push(_loc3_.m_sweep);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().c);
                                                               addr619:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.m_sweep);
                                                                  addr621:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().c);
                                                                     addr622:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr623:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.§-7§);
                                                                           addr625:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              addr626:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 addr627:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§#!=§);
                                                                                    addr629:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§1E§);
                                                                                       addr630:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr631:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr632:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                addr633:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
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
                                                            addr618:
                                                         }
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.m_sweep);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().c);
                                                               loop20:
                                                               while(!_loc9_)
                                                               {
                                                                  §§push(_loc3_.m_sweep);
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().c);
                                                                     loop22:
                                                                     while(!(_loc9_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.§-7§);
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§#!=§);
                                                                                          loop57:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(§§pop().§1E§);
                                                                                                if(_loc10_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   loop58:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         loop25:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               loop27:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_.m_sweep);
                                                                                                                  loop28:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.m_sweep);
                                                                                                                        loop29:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().a);
                                                                                                                           loop30:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.§,!o§);
                                                                                                                              loop31:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 loop32:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    loop33:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§#!=§);
                                                                                                                                       loop34:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§5!a§);
                                                                                                                                          loop35:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             loop36:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                loop37:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().a = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                                                                      loop39:
                                                                                                                                                      while(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().c);
                                                                                                                                                         loop40:
                                                                                                                                                         while(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                            loop41:
                                                                                                                                                            while(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                               loop42:
                                                                                                                                                               for(; _loc10_; §§push(§§pop().c),if(_loc9_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               },§§push(§§pop().y),if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc10_ || _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop26;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc4_.§-7§);
                                                                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr367);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr421);
                                                                                                                                                               },§§goto(addr422))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  loop43:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_ && _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc4_.§-7§);
                                                                                                                                                                        loop44:
                                                                                                                                                                        while(_loc10_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc9_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§#!=§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().§2>§);
                                                                                                                                                                                       addr498:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                          addr499:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc10_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop58;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             loop49:
                                                                                                                                                                                             for(; _loc10_; if(_loc10_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop44;
                                                                                                                                                                                             })
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc9_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_ && _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc4_.m_sweep);
                                                                                                                                                                                                         loop52:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop40;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop41;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop42;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr621);
                                                                                                                                                                                                            addr444:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc4_.m_sweep);
                                                                                                                                                                                                               if(!(_loc10_ || _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop52;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop39;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc4_.m_sweep);
                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop29;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop().a);
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc9_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop37;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop30;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc4_.§,!o§);
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc10_ || _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop36;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop31;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                     if(_loc10_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop33;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(this.§#!=§);
                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop34;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop().§,$§);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr319:
                                                                                                                                                                                                                              §§pop().a = §§pop() + §§pop();
                                                                                                                                                                                                                              addr318:
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop32;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop35;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr318);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr319);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop19;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop49;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop27;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop18;
                                                                                                                                                                                                   addr422:
                                                                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop43;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr625);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop58;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr497:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr627);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr507);
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc10_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                           if(_loc9_ && _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop24;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§#!=§);
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop57;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop().§2>§);
                                                                                                                                                                                          if(_loc10_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                             continue loop24;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr497);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr498);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr421:
                                                                                                                                                                                       §§goto(addr422);
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr510);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr626);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr480);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr499);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop25;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop23;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr633);
                                                                                                                                                               }
                                                                                                                                                               continue loop22;
                                                                                                                                                            }
                                                                                                                                                            continue loop21;
                                                                                                                                                         }
                                                                                                                                                         continue loop20;
                                                                                                                                                      }
                                                                                                                                                      continue loop28;
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
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr618);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr613:
                                                                                                      }
                                                                                                      §§goto(addr631);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr630);
                                                                                             }
                                                                                             §§goto(addr629);
                                                                                          }
                                                                                       }
                                                                                       addr582:
                                                                                    }
                                                                                    §§goto(addr613);
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr582);
                                                                        }
                                                                        §§goto(addr632);
                                                                     }
                                                                     §§goto(addr622);
                                                                  }
                                                               }
                                                               §§goto(addr619);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr203);
                                                }
                                                break;
                                             }
                                             addr150:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr151:
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                   §§goto(addr152);
                                                }
                                             }
                                             §§goto(addr152);
                                          }
                                          break;
                                       }
                                       §§goto(addr186);
                                    }
                                    §§goto(addr100);
                                 }
                                 §§goto(addr104);
                              }
                              addr185:
                              §§goto(addr186);
                              §§push(Number(§§pop()));
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this.m_revolute1);
                                 addr149:
                                 while(true)
                                 {
                                 }
                              }
                              addr147:
                           }
                           §§goto(addr150);
                        }
                     }
                  }
                  §§goto(addr186);
               }
               §§goto(addr147);
            }
            §§goto(addr149);
         }
         §§goto(addr152);
      }
   }
}
