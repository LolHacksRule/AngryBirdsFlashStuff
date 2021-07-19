package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Mat22;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
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
      
      private var §8!k§:b2Jacobian;
      
      private var §,!L§:Number;
      
      private var §;"%§:Number;
      
      private var §""$§:Number;
      
      private var §0"3§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_)
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  loop3:
                  while(!(_loc7_ && this))
                  {
                     loop4:
                     do
                     {
                        this.§8!k§ = new b2Jacobian();
                        while(true)
                        {
                           if(_loc6_)
                           {
                              addr45:
                              if(!(_loc6_ || _loc2_))
                              {
                                 break;
                              }
                              super(param1);
                              if(!(_loc7_ && _loc3_))
                              {
                                 if(_loc6_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        addr71:
                        while(true)
                        {
                           this.m_localAnchor2 = new b2Vec2();
                           continue loop3;
                           §§goto(addr45);
                        }
                     }
                     while(false);
                     
                     §§push(param1.joint1.§0w§);
                     if(_loc6_ || this)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(param1.joint2.§0w§);
                     if(!(_loc7_ && param1))
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(_loc6_)
                     {
                        this.m_revolute1 = null;
                        loop6:
                        while(true)
                        {
                           this.m_prismatic1 = null;
                           while(true)
                           {
                              this.m_revolute2 = null;
                              loop8:
                              while(true)
                              {
                                 this.m_prismatic2 = null;
                                 loop9:
                                 while(true)
                                 {
                                    this.m_ground1 = param1.joint1.§#n§();
                                    loop10:
                                    while(true)
                                    {
                                       §<!1§ = param1.joint1.§1x§();
                                       loop11:
                                       while(!_loc7_)
                                       {
                                          §§push(_loc2_);
                                          loop12:
                                          while(true)
                                          {
                                             if(§§pop() != b2Joint.e_revoluteJoint)
                                             {
                                                this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(this.m_groundAnchor1);
                                                   if(_loc6_)
                                                   {
                                                      §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                                      while(true)
                                                      {
                                                         if(_loc7_ && this)
                                                         {
                                                            loop43:
                                                            for(; _loc6_; while(true)
                                                            {
                                                               this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
                                                               continue loop43;
                                                            })
                                                            {
                                                               §§push(this.m_groundAnchor1);
                                                               while(true)
                                                               {
                                                                  §§pop().SetV(this.m_revolute1.m_localAnchor1);
                                                                  addr455:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop43;
                                                                     }
                                                                     §§push(this.m_localAnchor1);
                                                                  }
                                                                  continue loop43;
                                                               }
                                                            }
                                                            continue loop11;
                                                         }
                                                         §§push(this.m_localAnchor1);
                                                         if(_loc6_)
                                                         {
                                                            §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                                                            while(_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§push(this.m_prismatic1.§]Z§());
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr374:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr439:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr439:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.m_ground2 = param1.joint2.§#n§();
                                                                              addr368:
                                                                              while(true)
                                                                              {
                                                                                 §?H§ = param1.joint2.§1x§();
                                                                                 addr359:
                                                                                 while(_loc6_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              §§goto(addr439);
                                                                           }
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     addr438:
                                                                     addr438:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                     }
                                                                     §§goto(addr439);
                                                                  }
                                                               }
                                                            }
                                                            continue loop10;
                                                            addr401:
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().SetV(this.m_revolute1.m_localAnchor2);
                                                            addr447:
                                                            while(true)
                                                            {
                                                               §§push(this.m_revolute1.§=E§());
                                                               addr437:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         addr443:
                                                         §§goto(addr438);
                                                         §§goto(addr443);
                                                         addr292:
                                                         if(!(_loc6_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(this.m_groundAnchor2);
                                                         if(!_loc7_)
                                                         {
                                                            §§pop().SetV(this.m_prismatic2.m_localAnchor1);
                                                            while(true)
                                                            {
                                                               §§push(this.m_localAnchor2);
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§pop().SetV(this.m_prismatic2.m_localAnchor2);
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(this.m_prismatic2.§]Z§());
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 if(_loc6_ || _loc2_)
                                                                                 {
                                                                                    addr206:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!(_loc7_ && this))
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr437);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop32:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                addr313:
                                                                                                addr350:
                                                                                                loop26:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc7_ && this))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§;"%§ = param1.§-!X§;
                                                                                                         continue loop13;
                                                                                                         addr229:
                                                                                                      }
                                                                                                      continue loop24;
                                                                                                      addr165:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr344:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
                                                                                                      break loop26;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(this.m_groundAnchor2);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().SetV(this.m_revolute2.m_localAnchor1);
                                                                                                         addr336:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.m_localAnchor2);
                                                                                                            addr324:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().SetV(this.m_revolute2.m_localAnchor2);
                                                                                                               addr328:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop32;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr332:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr401);
                                                                                                   }
                                                                                                }
                                                                                                continue loop32;
                                                                                             }
                                                                                             addr312:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr374);
                                                                                 }
                                                                                 §§goto(addr312);
                                                                              }
                                                                              §§goto(addr206);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr455);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr336);
                                                                  }
                                                                  §§goto(addr359);
                                                               }
                                                               §§goto(addr324);
                                                            }
                                                            addr275:
                                                         }
                                                         §§goto(addr332);
                                                      }
                                                   }
                                                   §§goto(addr451);
                                                }
                                             }
                                             §§goto(addr463);
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr164);
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::<!1.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?H.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || _loc3_)
         {
            §§push(this.§0"3§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(this.§8!k§.§?9§.x);
                  if(!_loc3_)
                  {
                     addr49:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!(_loc3_ && this))
                     {
                        addr57:
                        §§push(this.§0"3§);
                        if(_loc2_)
                        {
                           §§goto(addr79);
                        }
                        addr79:
                        §§push(§§pop() * §§pop());
                        if(_loc2_)
                        {
                           addr74:
                           §§push(this.§8!k§.§?9§.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr57);
               }
               §§goto(addr49);
            }
            §§goto(addr79);
         }
         §§goto(addr49);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal::?H.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc8_)
         {
            §§push(§§pop() - b2internal::?H.m_sweep.localCenter.x);
            if(!(_loc8_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc9_)
         {
            §§push(§§pop() - b2internal::?H.m_sweep.localCenter.y);
            if(!_loc8_)
            {
               addr53:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc9_ || _loc3_)
            {
               §§push(_loc3_);
               if(_loc9_ || this)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc8_ && _loc2_))
                  {
                     addr81:
                     §§push(_loc2_.col2.x);
                     if(!_loc8_)
                     {
                        addr86:
                        §§push(§§pop() * _loc4_);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc8_ && this))
                     {
                        addr96:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     if(!(_loc8_ && param1))
                     {
                        §§push(_loc2_.col1.y);
                        if(_loc9_ || this)
                        {
                           §§push(_loc3_);
                           if(!(_loc8_ && _loc2_))
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§push(_loc2_.col2.y);
                                 if(_loc9_ || _loc2_)
                                 {
                                    addr151:
                                    §§push(§§pop() * _loc4_);
                                    if(_loc9_ || _loc2_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc8_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc8_)
                                          {
                                             addr171:
                                             _loc4_ = §§pop();
                                             if(_loc9_ || _loc3_)
                                             {
                                                §§push(_loc5_);
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc9_)
                                                   {
                                                   }
                                                   addr195:
                                                   §§push(§§pop() * this.§8!k§.§?9§.x);
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      addr207:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc6_:* = §§pop();
                                                   §§push(this.§0"3§);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop() * this.§8!k§.§?9§.y);
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         addr225:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc7_:* = §§pop();
                                                      §§push(param1);
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§push(this.§0"3§);
                                                         if(_loc9_)
                                                         {
                                                            §§push(this.§8!k§.§7F§);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  addr252:
                                                                  §§push(_loc3_);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           addr266:
                                                                           §§push(§§pop() - §§pop());
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc8_)
                                                                              {
                                                                              }
                                                                              addr286:
                                                                              return §§pop() * (§§pop() + §§pop());
                                                                              addr285:
                                                                           }
                                                                           §§goto(addr285);
                                                                        }
                                                                        §§push(_loc6_);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                               }
                                                               §§goto(addr285);
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      §§goto(addr286);
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr207);
                                             }
                                             addr191:
                                             §§push(this.§0"3§);
                                             if(!_loc9_)
                                             {
                                             }
                                             §§goto(addr195);
                                          }
                                          _loc3_ = §§pop();
                                          §§goto(addr191);
                                       }
                                       §§goto(addr207);
                                    }
                                 }
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr151);
                        }
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr96);
               }
               §§goto(addr86);
            }
            §§goto(addr81);
         }
         §§goto(addr53);
      }
      
      public function §`!M§() : Number
      {
         return this.§;"%§;
      }
      
      public function §!§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§;"%§ = param1;
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
         _loc4_ = b2internal::<!1;
         var _loc5_:b2Body = b2internal::?H;
         §§push(0);
         if(!_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(_loc16_)
         {
            §§push(this.§8!k§);
            if(_loc16_ || _loc3_)
            {
               §§pop().§@!d§();
               if(!(_loc15_ && this))
               {
                  addr131:
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
                              _loc11_ = this.m_prismatic1.§0"6§;
                              if(_loc16_)
                              {
                                 §§push(_loc10_.col1);
                                 if(!(_loc15_ && param1))
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc15_ && this))
                                    {
                                       §§push(_loc11_.x);
                                       if(_loc16_ || _loc2_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc15_ && this))
                                          {
                                             §§push(_loc10_.col2);
                                             if(!_loc15_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc16_ || _loc2_)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(!(_loc15_ && _loc2_))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc15_)
                                                      {
                                                         addr212:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc15_ && _loc3_))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc16_)
                                                            {
                                                               addr223:
                                                               _loc6_ = §§pop();
                                                               if(!_loc15_)
                                                               {
                                                                  addr228:
                                                                  addr226:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(_loc11_.x);
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr235:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc16_ || _loc3_)
                                                                        {
                                                                           addr243:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(!(_loc15_ && _loc2_))
                                                                           {
                                                                              addr253:
                                                                              §§push(§§pop() * _loc11_.y);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr253);
                                                                  }
                                                                  _loc7_ = §§pop();
                                                               }
                                                               _loc10_ = _loc4_.m_xf.R;
                                                               if(_loc16_)
                                                               {
                                                                  §§push(this.m_localAnchor1);
                                                                  loop85:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr580:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.m_sweep);
                                                                        addr582:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().localCenter);
                                                                           addr583:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr584:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 addr585:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr586:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       continue loop85;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr405);
                                                            }
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                   }
                                                   §§goto(addr253);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr243);
                                          }
                                          §§goto(addr223);
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr223);
                                 }
                                 §§goto(addr228);
                              }
                              §§goto(addr226);
                           }
                           addr651:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§0"6§;
                           if(!(_loc15_ && this))
                           {
                              §§push(_loc10_.col1);
                              if(_loc16_)
                              {
                                 §§push(§§pop().x);
                                 if(!_loc15_)
                                 {
                                    §§push(_loc11_.x);
                                    if(!(_loc15_ && _loc2_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc15_)
                                       {
                                          addr684:
                                          §§push(_loc10_.col2);
                                          if(!_loc15_)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc15_)
                                             {
                                                §§push(_loc11_.y);
                                                if(!_loc15_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc16_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc16_ || _loc3_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(!_loc15_)
                                                            {
                                                               addr719:
                                                               §§push(_loc10_.col1.y);
                                                               if(_loc16_)
                                                               {
                                                                  addr722:
                                                                  §§push(_loc11_.x);
                                                                  if(!(_loc15_ && _loc3_))
                                                                  {
                                                                     addr731:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr736:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(_loc16_)
                                                                        {
                                                                           addr742:
                                                                           addr741:
                                                                           addr739:
                                                                           §§push(§§pop() + §§pop() * _loc11_.y);
                                                                           if(_loc16_ || this)
                                                                           {
                                                                           }
                                                                           addr751:
                                                                           _loc7_ = §§pop();
                                                                           _loc10_ = _loc5_.m_xf.R;
                                                                           if(_loc16_ || _loc2_)
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              loop38:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr1165:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.m_sweep);
                                                                                    addr1167:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       addr1168:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr1169:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr1170:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr1171:
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
                                                                           }
                                                                           §§goto(addr1104);
                                                                        }
                                                                        §§goto(addr742);
                                                                     }
                                                                     §§goto(addr751);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr742);
                                                         }
                                                         §§goto(addr722);
                                                      }
                                                      §§goto(addr742);
                                                   }
                                                   §§goto(addr731);
                                                }
                                                §§goto(addr741);
                                             }
                                             §§goto(addr739);
                                          }
                                       }
                                       §§goto(addr736);
                                    }
                                    §§goto(addr742);
                                 }
                                 §§goto(addr684);
                              }
                           }
                           §§goto(addr719);
                        }
                        break;
                     }
                     if(_loc16_)
                     {
                        §§push(this.§8!k§);
                        if(!(_loc15_ && this))
                        {
                           §§pop().§7"A§ = -1;
                           if(_loc16_ || _loc3_)
                           {
                              §§push(_loc14_);
                              if(_loc16_)
                              {
                                 §§push(_loc4_.§<!%§);
                                 if(!(_loc15_ && _loc3_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc16_)
                                    {
                                       addr76:
                                       §§push(Number(§§pop()));
                                       if(!_loc15_)
                                       {
                                          _loc14_ = §§pop();
                                          if(_loc16_ || param1)
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             addr588:
                                             if(!this.m_revolute2)
                                             {
                                                §§push(_loc3_.m_xf);
                                                break;
                                             }
                                             if(_loc16_)
                                             {
                                                addr595:
                                                §§push(this.§8!k§);
                                                §§push(this.§;"%§);
                                                if(!_loc15_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§7F§ = §§pop();
                                                if(_loc16_)
                                                {
                                                   §§push(_loc14_);
                                                   if(_loc16_ || _loc2_)
                                                   {
                                                      addr611:
                                                      §§push(this.§;"%§);
                                                      if(_loc16_)
                                                      {
                                                         addr615:
                                                         §§push(this.§;"%§);
                                                         if(!(_loc15_ && _loc2_))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc16_ || _loc3_)
                                                            {
                                                               addr634:
                                                               §§push(§§pop() * _loc5_.§<!%§);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc16_ || _loc2_)
                                                            {
                                                               addr644:
                                                               _loc14_ = Number(§§pop());
                                                               if(_loc16_)
                                                               {
                                                                  addr1173:
                                                                  §§push(this);
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     §§push(_loc14_);
                                                                     if(!(_loc15_ && this))
                                                                     {
                                                                        if(§§pop() > 0)
                                                                        {
                                                                           addr1192:
                                                                           §§push(1 / _loc14_);
                                                                           if(_loc16_ || _loc2_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc16_ || _loc2_)
                                                                              {
                                                                                 addr1210:
                                                                              }
                                                                           }
                                                                           §§goto(addr1210);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc16_ || param1)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§pop().§""$§ = §§pop();
                                                                        if(_loc16_)
                                                                        {
                                                                           if(param1.§`m§)
                                                                           {
                                                                              if(_loc16_)
                                                                              {
                                                                                 addr1547:
                                                                                 §§push(_loc4_.§?o§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_.§?o§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§push(_loc4_.§6!W§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§0"3§);
                                                                                             addr1568:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr1569:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§8!k§);
                                                                                                   addr1571:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§@`§);
                                                                                                      addr1572:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr1573:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr1574:
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
                                                                                          addr1556:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          addr1576:
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_.§?o§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_.§?o§);
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_.§6!W§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc16_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(this.§0"3§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     §§push(this.§8!k§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§@`§);
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr1539:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    loop9:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       addr1541:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          §§push(_loc4_.m_angularVelocity);
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_.§<!%§);
                                                                                                                                             if(!(_loc15_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(this.§0"3§);
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   addr1504:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      addr1502:
                                                                                                                                                      §§push(§§pop() * this.§8!k§.§7"A§);
                                                                                                                                                   }
                                                                                                                                                   §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         continue loop24;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_.§?o§);
                                                                                                                                                         addr1427:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_.§?o§);
                                                                                                                                                            addr1429:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc16_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  continue loop9;
                                                                                                                                                               }
                                                                                                                                                               continue loop29;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr1505:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1502);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1504);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1572);
                                                                                                                        }
                                                                                                                        §§goto(addr1571);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1539);
                                                                                                               }
                                                                                                               §§goto(addr1568);
                                                                                                            }
                                                                                                            §§goto(addr1569);
                                                                                                         }
                                                                                                         §§goto(addr1574);
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr1576);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.§0"3§ = 0;
                                                                              if(!_loc16_)
                                                                              {
                                                                                 §§goto(addr1275);
                                                                              }
                                                                              §§goto(addr1224);
                                                                           }
                                                                        }
                                                                        §§goto(addr1507);
                                                                     }
                                                                     §§goto(addr1210);
                                                                  }
                                                                  §§goto(addr1192);
                                                                  addr647:
                                                               }
                                                               §§goto(addr1507);
                                                            }
                                                            §§goto(addr644);
                                                         }
                                                      }
                                                      §§goto(addr634);
                                                   }
                                                   §§goto(addr644);
                                                }
                                                §§goto(addr1507);
                                             }
                                             §§goto(addr1576);
                                          }
                                          §§goto(addr1547);
                                       }
                                       §§goto(addr611);
                                    }
                                    §§goto(addr644);
                                 }
                                 §§goto(addr615);
                              }
                              §§goto(addr76);
                           }
                           §§goto(addr1476);
                        }
                        §§goto(addr595);
                     }
                     §§goto(addr647);
                     §§goto(addr1173);
                  }
                  §§goto(addr651);
                  §§push(§§pop().R);
               }
               §§goto(addr1476);
            }
            §§goto(addr595);
         }
         §§goto(addr131);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = b2internal::<!1;
         var _loc3_:b2Body = b2internal::?H;
         §§push(this.§8!k§.§3!u§(_loc2_.§?o§,_loc2_.m_angularVelocity,_loc3_.§?o§,_loc3_.m_angularVelocity));
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§""$§);
         if(!(_loc7_ && _loc2_))
         {
            §§push(-§§pop());
            if(_loc6_)
            {
               addr49:
               §§push(§§pop() * _loc4_);
               if(!_loc7_)
               {
                  addr53:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!_loc7_)
               {
                  §§push(this);
                  §§push(this.§0"3§);
                  if(_loc6_)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§0"3§ = §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_.§?o§);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.§?o§);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop3:
                           while(true)
                           {
                              §§push(_loc2_.§6!W§);
                              loop4:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    while(true)
                                    {
                                       §§push(this.§8!k§);
                                       addr378:
                                       while(true)
                                       {
                                          §§push(§§pop().§@`§);
                                          addr379:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                          }
                                       }
                                       loop32:
                                       while(!(_loc7_ && _loc2_))
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop33:
                                          while(!_loc7_)
                                          {
                                             §§pop().x = §§pop();
                                             loop34:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   addr266:
                                                   §§push(_loc3_.§?o§);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc3_.§?o§);
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(§§pop().y);
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop33;
                                                            }
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§push(_loc3_.§6!W§);
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  addr143:
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc6_ || _loc2_)
                                                                              {
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    addr177:
                                                                                    §§push(this.§8!k§);
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr188:
                                                                                          §§push(§§pop().§?9§);
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             addr207:
                                                                                             §§push(§§pop().y);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                addr209:
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   addr217:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop32;
                                                                                                   }
                                                                                                   addr220:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§pop().y = §§pop();
                                                                                                      while(_loc6_)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         §§push(_loc3_.m_angularVelocity);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(_loc3_.§<!%§);
                                                                                                            if(_loc6_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               if(_loc6_ || _loc3_)
                                                                                                               {
                                                                                                                  addr92:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§push(this.§8!k§.§7F§);
                                                                                                                  }
                                                                                                                  §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr96:
                                                                                                                  if(!(_loc7_ && _loc2_))
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  addr344:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc6_ || this)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     addr383:
                                                                                                                     addr383:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_.§?o§);
                                                                                                                        break loop34;
                                                                                                                     }
                                                                                                                     §§goto(addr96);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr92);
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   loop25:
                                                                                                   while(_loc6_)
                                                                                                   {
                                                                                                      §§push(_loc3_.§6!W§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         addr239:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr240:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(this.§8!k§);
                                                                                                                     while(!_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§?9§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           addr252:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop32;
                                                                                                                           }
                                                                                                                           §§goto(addr188);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              addr325:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              while(_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(this.§8!k§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§@`§);
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr335:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          break loop33;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr379);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 break loop25;
                                                                                                                              }
                                                                                                                              addr381:
                                                                                                                              addr326:
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           §§goto(addr209);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr381);
                                                                                                                        }
                                                                                                                        §§goto(addr177);
                                                                                                                     }
                                                                                                                     §§goto(addr378);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr326);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr335);
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         §§goto(addr143);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                   }
                                                                                                   addr234:
                                                                                                   §§goto(addr383);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr323);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr334);
                                                                                          }
                                                                                          §§goto(addr251);
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                    §§goto(addr248);
                                                                                 }
                                                                                 §§goto(addr240);
                                                                              }
                                                                              §§goto(addr217);
                                                                           }
                                                                           §§goto(addr239);
                                                                        }
                                                                        §§goto(addr252);
                                                                     }
                                                                     §§goto(addr207);
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§6!W§);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr323);
                                                                     §§push(_loc5_);
                                                                  }
                                                               }
                                                               addr318:
                                                            }
                                                            §§goto(addr325);
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      else
                                                      {
                                                         while(_loc6_)
                                                         {
                                                            §§push(§§pop().x);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr318);
                                                         }
                                                         addr231:
                                                         addr317:
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr266);
                                                      }
                                                      addr229:
                                                   }
                                                   §§goto(addr231);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr304:
                                                }
                                                §§goto(addr229);
                                             }
                                             continue loop1;
                                          }
                                          while(_loc6_ || param1)
                                          {
                                             §§pop().y = §§pop();
                                             §§goto(addr344);
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 §§goto(addr380);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr383);
            }
            §§goto(addr53);
         }
         §§goto(addr49);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(_loc9_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::<!1;
         var _loc4_:b2Body = b2internal::?H;
         if(_loc9_)
         {
            §§push(this.m_revolute1);
            if(_loc9_)
            {
               if(!§§pop())
               {
                  §§push(this.m_prismatic1.§]Z§());
                  if(!(_loc10_ && param1))
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc10_ && _loc3_))
                     {
                        if(!(_loc10_ && _loc3_))
                        {
                           _loc5_ = §§pop();
                           loop0:
                           while(true)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(this.m_revolute2);
                                 if(!(_loc10_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       continue loop0;
                                    }
                                    §§push(this.m_prismatic2.§]Z§());
                                    if(_loc9_)
                                    {
                                       if(!_loc10_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc9_)
                                          {
                                             addr52:
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                _loc6_ = §§pop();
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   if(_loc10_ && _loc3_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      if(true)
                                                      {
                                                         addr162:
                                                         §§push(this.§,!L§);
                                                      }
                                                      continue;
                                                      if(!(_loc10_ && this))
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(this.§;"%§);
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc10_)
                                                         {
                                                            addr184:
                                                            §§push(Number(§§pop()));
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   addr106:
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      §§goto(addr162);
                                                      addr113:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.m_revolute1);
                                                         addr151:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§=E§());
                                                            if(_loc10_ && this)
                                                            {
                                                               break loop1;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                            }
                                                         }
                                                      }
                                                      addr149:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             else
                                             {
                                                addr105:
                                                _loc6_ = Number(§§pop());
                                             }
                                             §§goto(addr106);
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr105);
                                    }
                                    §§goto(addr52);
                                 }
                                 else
                                 {
                                    addr103:
                                    §§push(§§pop().§=E§());
                                 }
                                 §§goto(addr105);
                              }
                              addr185:
                              var _loc7_:* = §§pop();
                              §§push(this.§""$§);
                              if(_loc9_)
                              {
                                 §§push(-§§pop());
                                 if(!(_loc10_ && this))
                                 {
                                    addr198:
                                    §§push(§§pop() * _loc7_);
                                    if(!(_loc10_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc8_:* = §§pop();
                                 if(_loc9_ || _loc2_)
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
                                                   §§push(_loc3_.§6!W§);
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
                                                            §§push(this.§8!k§);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§@`§);
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
                                                                                    while(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc9_ || _loc3_)
                                                                                          {
                                                                                             if(_loc10_ && this)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(_loc3_.§6!W§);
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                loop23:
                                                                                                while(_loc9_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         break;
                                                                                                         addr626:
                                                                                                      }
                                                                                                      §§push(this.§8!k§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§@`§);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            break;
                                                                                                            addr630:
                                                                                                         }
                                                                                                         §§push(§§pop().y);
                                                                                                         while(!_loc10_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            while(!(_loc10_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                      addr451:
                                                                                                      if(!(_loc9_ || _loc2_))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr459:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc9_ || _loc3_)
                                                                                                      {
                                                                                                         addr466:
                                                                                                         if(_loc9_ || _loc2_)
                                                                                                         {
                                                                                                            if(!(_loc9_ || _loc2_))
                                                                                                            {
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            §§pop().y = §§pop();
                                                                                                            loop53:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc9_ || _loc2_)
                                                                                                               {
                                                                                                                  addr488:
                                                                                                                  §§push(_loc4_.m_sweep);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  loop52:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().c);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_.m_sweep);
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              if(_loc10_ && _loc2_)
                                                                                                                              {
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              §§push(§§pop().c);
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(!(_loc9_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.§6!W§);
                                                                                                                                    if(!(_loc10_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!(_loc10_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(_loc9_ || this)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr515:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   addr405:
                                                                                                                                                   if(!(_loc10_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      continue loop22;
                                                                                                                                                   }
                                                                                                                                                   loop45:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_ && param1)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(this.§8!k§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().§?9§);
                                                                                                                                                            addr547:
                                                                                                                                                            addr419:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                            }
                                                                                                                                                            §§push(this.§8!k§);
                                                                                                                                                            if(_loc10_ && _loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop12;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop().§?9§);
                                                                                                                                                               if(!(_loc10_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr441:
                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc10_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop23;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr451);
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  while(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     continue loop45;
                                                                                                                                                                  }
                                                                                                                                                                  addr532:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr547);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr626);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr630);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr633);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop9;
                                                                                                                                                }
                                                                                                                                                §§goto(addr451);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_.§6!W§);
                                                                                                                                                      if(_loc9_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr532);
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                      }
                                                                                                                                                      break loop52;
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                   §§goto(addr466);
                                                                                                                                                }
                                                                                                                                                loop28:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                   loop29:
                                                                                                                                                   while(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.m_sweep);
                                                                                                                                                      loop30:
                                                                                                                                                      while(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_.m_sweep);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().a);
                                                                                                                                                            loop32:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_.§<!%§);
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!(_loc10_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§8!k§);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().§7"A§);
                                                                                                                                                                           §§push(this.§8!k§);
                                                                                                                                                                           addr299:
                                                                                                                                                                           break loop53;
                                                                                                                                                                           if(!(_loc9_ || _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop().§7F§);
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              break loop53;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                           if(_loc9_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().a = §§pop();
                                                                                                                                                                                 loop54:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc3_.§6!+§();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_ && this)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop54;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr551:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop52;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                                                                                                 addr328:
                                                                                                                                                                              }
                                                                                                                                                                              continue loop32;
                                                                                                                                                                           }
                                                                                                                                                                           addr578:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().a = §§pop();
                                                                                                                                                                              addr579:
                                                                                                                                                                              while(!_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_.m_sweep);
                                                                                                                                                                                 while(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().c);
                                                                                                                                                                                    while(!(_loc10_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc9_ || _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop5;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc4_.m_sweep);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().c);
                                                                                                                                                                                          addr512:
                                                                                                                                                                                          while(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                             continue loop28;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop19;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop30;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr565:
                                                                                                                                                               }
                                                                                                                                                               addr577:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr578);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr263:
                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                            if(_loc10_ && _loc2_)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop().a);
                                                                                                                                                            if(!(_loc10_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.§<!%§);
                                                                                                                                                               if(!(_loc10_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr299);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr312);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr565);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr309);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr577);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr299);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr312);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   continue loop17;
                                                                                                                                                }
                                                                                                                                                addr515:
                                                                                                                                                addr641:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                break loop52;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr441);
                                                                                                                                          }
                                                                                                                                          §§goto(addr441);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr451);
                                                                                                                                 }
                                                                                                                                 §§goto(addr459);
                                                                                                                              }
                                                                                                                              §§goto(addr512);
                                                                                                                           }
                                                                                                                           §§goto(addr511);
                                                                                                                        }
                                                                                                                        §§goto(addr495);
                                                                                                                     }
                                                                                                                     §§goto(addr492);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr550:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        §§goto(addr551);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr579);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr577);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr515);
                                                                                                      }
                                                                                                      §§goto(addr550);
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                                continue loop14;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr641);
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                    continue loop6;
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
                                 §§goto(addr328);
                              }
                              §§goto(addr198);
                           }
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr184);
               }
               §§goto(addr149);
            }
            §§goto(addr151);
         }
         §§goto(addr113);
      }
   }
}
