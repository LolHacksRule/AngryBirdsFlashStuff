package §+C§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Mat22;
   import §6Z§.b2Vec2;
   
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
      
      private var §break§:b2Jacobian;
      
      private var §%!x§:Number;
      
      private var §+!H§:Number;
      
      private var §6!L§:Number;
      
      private var §0!F§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(_loc6_ || param1)
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  while(_loc6_)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     while(!_loc7_)
                     {
                        while(true)
                        {
                           this.§break§ = new b2Jacobian();
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            super(param1);
            if(_loc6_ || this)
            {
               if(_loc6_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr43);
               }
               §§goto(addr61);
            }
            §§goto(addr48);
         }
         §§push(param1.joint1.§6m§);
         if(!(_loc7_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.joint2.§6m§);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_ || _loc3_)
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
                        this.m_ground1 = param1.joint1.§[d§();
                        loop11:
                        while(true)
                        {
                           §[Z§ = param1.joint1.§#E§();
                           loop12:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop13:
                              while(true)
                              {
                                 if(§§pop() == b2Joint.e_revoluteJoint)
                                 {
                                    continue loop9;
                                 }
                                 addr432:
                                 this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                 while(true)
                                 {
                                    §§push(this.m_groundAnchor1);
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                       loop15:
                                       while(true)
                                       {
                                          if(_loc6_ || _loc2_)
                                          {
                                             if(_loc7_)
                                             {
                                                continue loop9;
                                             }
                                             §§push(this.m_localAnchor1);
                                             if(_loc6_ || _loc2_)
                                             {
                                                §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(this.m_prismatic1.§#0§());
                                                   addr379:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr380:
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            while(true)
                                                            {
                                                               addr361:
                                                               addr122:
                                                               while(true)
                                                               {
                                                                  this.m_ground2 = param1.joint2.§[d§();
                                                                  addr367:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        §8!F§ = param1.joint2.§#E§();
                                                                        while(_loc6_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        continue loop12;
                                                                        addr358:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr478:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_groundAnchor1);
                                                                        addr451:
                                                                        while(true)
                                                                        {
                                                                           §§pop().SetV(this.m_revolute1.m_localAnchor1);
                                                                           addr455:
                                                                           while(_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§push(this.m_localAnchor1);
                                                                              while(true)
                                                                              {
                                                                                 §§pop().SetV(this.m_revolute1.m_localAnchor2);
                                                                                 addr447:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.m_revolute1.§@-§());
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     return;
                                                                  }
                                                                  continue loop16;
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr438:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr439:
                                                               while(true)
                                                               {
                                                                  §§goto(addr361);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr443);
                                          }
                                          §§goto(addr447);
                                          addr239:
                                          while(true)
                                          {
                                             if(!(_loc7_ && this))
                                             {
                                                continue loop11;
                                             }
                                             continue loop15;
                                          }
                                          continue loop11;
                                       }
                                    }
                                    §§goto(addr451);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(!(_loc6_ || param1))
                           {
                              continue loop10;
                           }
                           §§goto(addr305);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr332);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8!F.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§0!F§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  §§push(this.§break§.§&!K§.x);
                  if(_loc2_ || this)
                  {
                     addr49:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_ || param1)
                     {
                        §§push(this.§0!F§);
                        if(_loc2_ || param1)
                        {
                           §§goto(addr84);
                        }
                        §§push(§§pop() * §§pop());
                     }
                  }
                  addr84:
                  §§push(§§pop() * §§pop());
                  if(_loc2_)
                  {
                     §§push(this.§break§.§&!K§.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
            }
         }
         §§goto(addr49);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal::8!F.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc9_ || _loc3_)
         {
            §§push(§§pop() - b2internal::8!F.m_sweep.localCenter.x);
            if(!(_loc8_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc9_ || _loc3_)
         {
            §§push(§§pop() - b2internal::8!F.m_sweep.localCenter.y);
            if(!(_loc8_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(_loc9_)
         {
            §§push(_loc3_);
            if(!_loc8_)
            {
               §§push(§§pop() * §§pop());
               if(_loc9_)
               {
                  addr81:
                  §§push(_loc2_.col2.x);
                  if(_loc9_ || _loc3_)
                  {
                     addr91:
                     §§push(§§pop() * _loc4_);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc8_)
                  {
                     addr96:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(_loc9_)
                  {
                     §§push(_loc2_.col1.y);
                     if(_loc9_ || this)
                     {
                        §§push(_loc3_);
                        if(!(_loc8_ && param1))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc9_)
                           {
                              §§push(_loc2_.col2.y);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() * _loc4_);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc8_ && param1))
                                    {
                                       addr148:
                                       §§push(Number(§§pop()));
                                       if(!_loc8_)
                                       {
                                          addr151:
                                          _loc4_ = §§pop();
                                          if(_loc9_ || _loc3_)
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc8_ && this))
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc8_ && param1))
                                                {
                                                   addr175:
                                                   _loc3_ = §§pop();
                                                   addr176:
                                                   §§push(this.§0!F§);
                                                   if(_loc9_)
                                                   {
                                                      addr184:
                                                      §§push(§§pop() * this.§break§.§&!K§.x);
                                                      if(!_loc9_)
                                                      {
                                                      }
                                                      addr188:
                                                      var _loc6_:* = §§pop();
                                                      §§push(this.§0!F§);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() * this.§break§.§&!K§.y);
                                                         if(_loc9_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc7_:* = §§pop();
                                                      §§push(param1);
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§push(this.§0!F§);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(this.§break§.§ w§);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           §§goto(addr275);
                                                                        }
                                                                        addr275:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           addr254:
                                                                           §§push(_loc4_);
                                                                           if(!(_loc8_ && this))
                                                                           {
                                                                              addr273:
                                                                              §§push(§§pop() * _loc6_);
                                                                           }
                                                                        }
                                                                        return §§pop() * §§pop();
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                  }
                                                                  §§goto(addr273);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr273);
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr188);
                                    }
                                    §§goto(addr151);
                                 }
                              }
                              §§goto(addr184);
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr184);
                     }
                  }
                  §§goto(addr175);
               }
               §§goto(addr96);
            }
            §§goto(addr91);
         }
         §§goto(addr81);
      }
      
      public function §;p§() : Number
      {
         return this.§+!H§;
      }
      
      public function §=!Z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§+!H§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc4_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::[Z;
         var _loc5_:b2Body = b2internal::8!F;
         §§push(0);
         if(!(_loc16_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(!(_loc16_ && _loc3_))
         {
            §§push(this.§break§);
            loop0:
            while(true)
            {
               §§pop().§5!H§();
               if(_loc15_ || param1)
               {
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(_loc15_)
                        {
                           §§push(§§pop().R);
                           if(!_loc16_)
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§]!<§;
                              if(_loc15_)
                              {
                                 §§push(_loc10_.col1);
                                 if(!_loc16_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc15_ || _loc3_)
                                    {
                                       §§push(_loc11_.x);
                                       if(_loc15_ || param1)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc16_ && param1))
                                          {
                                             §§push(_loc10_.col2);
                                             if(!(_loc16_ && this))
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc16_)
                                                {
                                                   addr194:
                                                   §§push(_loc11_.y);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc16_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc16_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc15_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(_loc15_)
                                                               {
                                                                  addr212:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr215:
                                                                     §§push(_loc11_.x);
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        addr224:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc15_ || this)
                                                                        {
                                                                           addr232:
                                                                           addr234:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(_loc15_ || this)
                                                                           {
                                                                           }
                                                                           addr245:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc16_ && _loc3_))
                                                                           {
                                                                              addr254:
                                                                              _loc7_ = §§pop();
                                                                              _loc10_ = _loc4_.m_xf.R;
                                                                              if(!(_loc16_ && _loc3_))
                                                                              {
                                                                                 §§push(this.m_localAnchor1);
                                                                                 loop85:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc15_ || param1)
                                                                                    {
                                                                                       §§push(_loc4_.m_sweep);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().localCenter);
                                                                                          addr607:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr608:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                addr609:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr606:
                                                                                    }
                                                                                    addr610:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       continue loop85;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc10_.col1);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§goto(addr507);
                                                                                    §§push(§§pop().y);
                                                                                 }
                                                                                 §§goto(addr541);
                                                                              }
                                                                              addr253:
                                                                           }
                                                                        }
                                                                        §§goto(addr254);
                                                                     }
                                                                     addr244:
                                                                     §§goto(addr245);
                                                                     §§push(§§pop() * _loc11_.y);
                                                                  }
                                                                  §§goto(addr232);
                                                               }
                                                               §§goto(addr254);
                                                            }
                                                            §§goto(addr253);
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr244);
                                                }
                                                §§goto(addr232);
                                             }
                                             §§goto(addr234);
                                          }
                                          §§goto(addr254);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr215);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr254);
                           }
                           addr680:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§]!<§;
                           if(_loc15_ || param1)
                           {
                              §§push(_loc10_.col1);
                              if(!(_loc16_ && _loc3_))
                              {
                                 §§push(§§pop().x);
                                 if(_loc15_ || param1)
                                 {
                                    §§push(_loc11_.x);
                                    if(!(_loc16_ && _loc2_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc15_ || _loc3_)
                                       {
                                          §§push(_loc10_.col2);
                                          if(!(_loc16_ && param1))
                                          {
                                             §§push(§§pop().x);
                                             if(_loc15_)
                                             {
                                                addr740:
                                                §§push(_loc11_.y);
                                                if(_loc15_ || _loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc15_ || param1)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc15_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc15_)
                                                         {
                                                            addr763:
                                                            _loc6_ = §§pop();
                                                            if(!_loc16_)
                                                            {
                                                               addr768:
                                                               §§push(_loc10_.col1.y);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(_loc11_.x);
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc16_ && _loc2_))
                                                                     {
                                                                        addr795:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(!_loc16_)
                                                                        {
                                                                           addr798:
                                                                           §§push(§§pop() * _loc11_.y);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc15_ || _loc3_)
                                                                        {
                                                                           addr810:
                                                                           _loc7_ = §§pop();
                                                                        }
                                                                     }
                                                                     §§goto(addr810);
                                                                  }
                                                                  §§goto(addr798);
                                                               }
                                                               §§goto(addr810);
                                                            }
                                                            _loc10_ = _loc5_.m_xf.R;
                                                            if(_loc15_)
                                                            {
                                                               §§push(this.m_localAnchor2);
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr1204:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_.m_sweep);
                                                                     addr1206:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().localCenter);
                                                                        addr1207:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr1208:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              addr1209:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr1210:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    continue loop2;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr1009);
                                                         }
                                                         §§goto(addr810);
                                                      }
                                                      §§goto(addr763);
                                                   }
                                                }
                                             }
                                             §§goto(addr798);
                                          }
                                          §§goto(addr795);
                                       }
                                       §§goto(addr810);
                                    }
                                    §§goto(addr740);
                                 }
                                 §§goto(addr810);
                              }
                           }
                           §§goto(addr768);
                        }
                        break;
                     }
                     if(_loc15_)
                     {
                        §§push(this.§break§);
                        if(!_loc16_)
                        {
                           if(!_loc15_)
                           {
                              continue loop0;
                           }
                           §§pop().§>d§ = -1;
                           if(_loc15_ || _loc3_)
                           {
                              §§push(_loc14_);
                              if(_loc15_ || _loc2_)
                              {
                                 §§push(_loc4_.§`!`§);
                                 if(_loc15_ || this)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc16_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc15_ || param1)
                                       {
                                          _loc14_ = §§pop();
                                          if(!_loc16_)
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             addr612:
                                             if(!this.m_revolute2)
                                             {
                                                §§push(_loc3_.m_xf);
                                                break;
                                             }
                                             if(!(_loc16_ && _loc2_))
                                             {
                                                addr622:
                                                §§push(this.§break§);
                                                §§push(this.§+!H§);
                                                if(_loc15_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§ w§ = §§pop();
                                                if(!_loc16_)
                                                {
                                                   §§push(_loc14_);
                                                   if(_loc15_ || _loc2_)
                                                   {
                                                      addr640:
                                                      §§push(this.§+!H§);
                                                      if(!(_loc16_ && this))
                                                      {
                                                         §§push(this.§+!H§);
                                                         if(_loc15_)
                                                         {
                                                            addr659:
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc16_)
                                                            {
                                                               §§push(_loc5_.§`!`§);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc16_ && this))
                                                            {
                                                               addr668:
                                                               _loc14_ = Number(§§pop());
                                                               if(!(_loc16_ && _loc3_))
                                                               {
                                                                  addr1212:
                                                                  §§push(this);
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     §§push(_loc14_);
                                                                     if(!_loc16_)
                                                                     {
                                                                        if(§§pop() > 0)
                                                                        {
                                                                           addr1226:
                                                                           §§push(1 / _loc14_);
                                                                           if(_loc15_ || _loc3_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc15_)
                                                                              {
                                                                                 addr1243:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           §§goto(addr1243);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§goto(addr1243);
                                                                           }
                                                                        }
                                                                        §§pop().§6!L§ = §§pop();
                                                                        if(_loc15_)
                                                                        {
                                                                           if(!param1.§?j§)
                                                                           {
                                                                              this.§0!F§ = 0;
                                                                              if(!_loc15_)
                                                                              {
                                                                                 for(; _loc16_ && this; §§pop().m_angularVelocity = §§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             if(_loc15_ || _loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr1564:
                                                                                             loop51:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                §§push(_loc4_.m_angularVelocity);
                                                                                                if(!(_loc16_ && _loc2_))
                                                                                                {
                                                                                                   §§push(_loc4_.§`!`§);
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      §§push(this.§0!F§);
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         addr1519:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            addr1517:
                                                                                                            §§push(§§pop() * this.§break§.§>d§);
                                                                                                         }
                                                                                                         §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  §§push(_loc5_.§?!^§);
                                                                                                                  loop53:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.§?!^§);
                                                                                                                        loop54:
                                                                                                                        while(_loc15_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_.§4!&§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§0!F§);
                                                                                                                                 if(_loc15_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc16_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          loop57:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§break§);
                                                                                                                                             loop58:
                                                                                                                                             while(!(_loc16_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§&!K§);
                                                                                                                                                loop59:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   addr1477:
                                                                                                                                                   addr1559:
                                                                                                                                                   while(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      loop61:
                                                                                                                                                      while(_loc15_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         while(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            continue loop53;
                                                                                                                                                            if(_loc15_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.§4!&§);
                                                                                                                                                               if(_loc15_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  continue loop57;
                                                                                                                                                               }
                                                                                                                                                               if(_loc16_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue loop61;
                                                                                                                                                               }
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§break§);
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop58;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc15_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop59;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().§ X§);
                                                                                                                                                                     addr1591:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        addr1592:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           addr1593:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              addr1594:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 addr1595:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_.§?!^§);
                                                                                                                                                                                    addr1528:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_.§?!^§);
                                                                                                                                                                                       break loop54;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1590:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc16_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§0!F§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§break§);
                                                                                                                                                                                 break loop58;
                                                                                                                                                                              }
                                                                                                                                                                              addr1575:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1587:
                                                                                                                                                                                 §§push(§§pop() * this.§0!F§);
                                                                                                                                                                                 addr1588:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1590);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1551:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1592);
                                                                                                                                                                     }
                                                                                                                                                                     addr1548:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1593);
                                                                                                                                                               }
                                                                                                                                                               continue loop61;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop51;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc15_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            continue loop51;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1588);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1560);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§ X§);
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1559);
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1591);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1587);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1548);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1477);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              break loop53;
                                                                                                                           }
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              continue loop51;
                                                                                                                           }
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              §§goto(addr1539);
                                                                                                                              §§push(_loc4_.§4!&§);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr1573:
                                                                                                                           }
                                                                                                                           §§goto(addr1575);
                                                                                                                        }
                                                                                                                        addr1437:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr1573);
                                                                                                                  }
                                                                                                                  addr1572:
                                                                                                                  addr1433:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr1568:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc4_.§?!^§);
                                                                                                                  }
                                                                                                                  addr1568:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr1572);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1595);
                                                                                                         }
                                                                                                         addr1520:
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1517);
                                                                                                }
                                                                                                §§goto(addr1519);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1520);
                                                                                       }
                                                                                       break loop0;
                                                                                       addr1417:
                                                                                       §§pop().y = §§pop();
                                                                                    }
                                                                                    §§push(_loc5_);
                                                                                    §§push(_loc5_.m_angularVelocity);
                                                                                    if(!(_loc15_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(_loc5_.§`!`§);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(this.§0!F§);
                                                                                       if(_loc15_ || param1)
                                                                                       {
                                                                                          addr1297:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             §§push(this.§break§.§ w§);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                    §§goto(addr1297);
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr1568);
                                                                        }
                                                                        §§goto(addr1595);
                                                                     }
                                                                     §§goto(addr1243);
                                                                  }
                                                                  §§goto(addr1226);
                                                                  addr676:
                                                               }
                                                               §§goto(addr1564);
                                                            }
                                                            §§goto(addr668);
                                                         }
                                                         §§goto(addr659);
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§goto(addr659);
                                                   }
                                                   §§goto(addr668);
                                                }
                                                §§goto(addr676);
                                             }
                                             §§goto(addr1564);
                                          }
                                          §§goto(addr622);
                                       }
                                       §§goto(addr668);
                                    }
                                    §§goto(addr640);
                                 }
                                 §§goto(addr659);
                              }
                              §§goto(addr668);
                           }
                           §§goto(addr1595);
                        }
                        §§goto(addr622);
                     }
                     §§goto(addr1568);
                     §§goto(addr1212);
                  }
                  §§goto(addr680);
                  §§push(§§pop().R);
               }
               break;
            }
            while(true)
            {
               §§push(_loc5_.§?!^§);
               if(_loc15_)
               {
                  if(!(_loc16_ && _loc2_))
                  {
                     §§push(_loc5_.§?!^§);
                     if(_loc15_)
                     {
                        §§push(§§pop().y);
                        if(!(_loc16_ && this))
                        {
                           §§goto(addr1331);
                        }
                        §§goto(addr1408);
                     }
                     §§goto(addr1437);
                  }
                  §§goto(addr1528);
               }
               §§goto(addr1433);
            }
            §§goto(addr1417);
         }
         §§goto(addr1212);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = b2internal::[Z;
         var _loc3_:b2Body = b2internal::8!F;
         §§push(this.§break§.§7_§(_loc2_.§?!^§,_loc2_.m_angularVelocity,_loc3_.§?!^§,_loc3_.m_angularVelocity));
         if(!(_loc7_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§6!L§);
         if(!_loc7_)
         {
            §§push(-§§pop());
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() * _loc4_);
               if(_loc6_ || _loc3_)
               {
               }
               addr64:
               var _loc5_:* = §§pop();
               if(!(_loc7_ && _loc3_))
               {
                  §§push(this);
                  §§push(this.§0!F§);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§0!F§ = §§pop();
               }
               loop0:
               while(true)
               {
                  §§push(_loc2_.§?!^§);
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_.§?!^§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().x);
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_.§4!&§);
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
                                    §§push(this.§break§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop().§ X§);
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
                                                      §§push(_loc2_.§?!^§);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§?!^§);
                                                         loop14:
                                                         while(_loc6_ || param1)
                                                         {
                                                            §§push(§§pop().y);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.§4!&§);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§break§);
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§ X§);
                                                                           if(_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop().y);
                                                                           loop20:
                                                                           while(!(_loc7_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 addr399:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().y = §§pop();
                                                                                    addr400:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       §§push(_loc2_.m_angularVelocity);
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc2_.§`!`§);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                addr350:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc7_ && param1))
                                                                                                {
                                                                                                   §§push(this.§break§.§>d§);
                                                                                                }
                                                                                                §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                while(!(_loc7_ && param1))
                                                                                                {
                                                                                                   continue loop0;
                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr350);
                                                                                    }
                                                                                 }
                                                                                 loop34:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       loop35:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      addr319:
                                                                                                      §§push(_loc3_.§?!^§);
                                                                                                      if(!(_loc7_ && param1))
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         §§push(_loc3_.§?!^§);
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(_loc7_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop35;
                                                                                                            }
                                                                                                            §§push(_loc3_.§4!&§);
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc7_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(!(_loc6_ || this))
                                                                                                                           {
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 continue loop10;
                                                                                                                              }
                                                                                                                              addr195:
                                                                                                                              §§push(this.§break§);
                                                                                                                              if(!(_loc7_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc7_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().§&!K§);
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    addr228:
                                                                                                                                    §§push(§§pop() * §§pop().y);
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       continue loop34;
                                                                                                                                    }
                                                                                                                                    addr230:
                                                                                                                                    if(!(_loc7_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       continue loop35;
                                                                                                                                    }
                                                                                                                                    while(_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§break§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§&!K§);
                                                                                                                                          §§goto(addr195);
                                                                                                                                       }
                                                                                                                                       §§goto(addr230);
                                                                                                                                    }
                                                                                                                                    continue loop16;
                                                                                                                                    addr286:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    addr292:
                                                                                                                                    while(_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       continue loop34;
                                                                                                                                    }
                                                                                                                                    continue loop20;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr290);
                                                                                                                           }
                                                                                                                           §§goto(addr228);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(_loc6_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                           addr283:
                                                                                                                        }
                                                                                                                        §§goto(addr286);
                                                                                                                     }
                                                                                                                     §§goto(addr292);
                                                                                                                  }
                                                                                                                  §§goto(addr228);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     if(_loc7_ && _loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(_loc5_);
                                                                                                                  }
                                                                                                                  continue loop6;
                                                                                                                  addr273:
                                                                                                               }
                                                                                                               §§goto(addr283);
                                                                                                            }
                                                                                                            §§goto(addr228);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(!_loc7_)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr245:
                                                                                                                  §§push(_loc3_.§4!&§);
                                                                                                                  if(_loc6_ || this)
                                                                                                                  {
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                            addr268:
                                                                                                         }
                                                                                                         §§goto(addr273);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr319);
                                                                                                         }
                                                                                                         addr266:
                                                                                                      }
                                                                                                      §§goto(addr268);
                                                                                                   }
                                                                                                }
                                                                                                continue loop13;
                                                                                                addr312:
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§goto(addr399);
                                                                                          §§goto(addr400);
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    continue loop21;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                               }
                                                            }
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
            §§push(Number(§§pop()));
         }
         §§goto(addr64);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::[Z;
         var _loc4_:b2Body = b2internal::8!F;
         if(!_loc10_)
         {
            §§push(this.m_revolute1);
            if(!_loc10_)
            {
               if(!§§pop())
               {
                  §§push(this.m_prismatic1.§#0§());
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                     loop0:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop1:
                        while(true)
                        {
                           if(!(_loc10_ && this))
                           {
                              while(true)
                              {
                                 §§push(this.m_revolute2);
                                 if(!_loc10_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this.m_prismatic2.§#0§());
                                       if(!_loc10_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc9_)
                                          {
                                             _loc6_ = §§pop();
                                             if(!(_loc10_ && this))
                                             {
                                                if(_loc9_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      if(false)
                                                      {
                                                         continue;
                                                      }
                                                      addr122:
                                                      §§push(this.§%!x§);
                                                      if(!_loc10_)
                                                      {
                                                         addr126:
                                                         §§push(_loc5_);
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            §§push(this.§+!H§);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc10_)
                                                         {
                                                            addr145:
                                                            var _loc7_:Number = §§pop();
                                                            §§push(this.§6!L§);
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               §§push(-§§pop());
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  §§push(§§pop() * _loc7_);
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     addr172:
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
                                                                                 §§push(_loc3_.§4!&§);
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(this.§break§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§ X§);
                                                                                             addr589:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr590:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                }
                                                                                             }
                                                                                             addr466:
                                                                                             if(_loc10_ && param1)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop().§&!K§);
                                                                                             loop47:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr475:
                                                                                                loop48:
                                                                                                while(_loc9_ || _loc2_)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   loop49:
                                                                                                   while(_loc9_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop50:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         loop51:
                                                                                                         while(_loc9_ || param1)
                                                                                                         {
                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                            loop52:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().c);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr314:
                                                                                                                  §§push(_loc4_.m_sweep);
                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr323:
                                                                                                                     if(!(_loc10_ && this))
                                                                                                                     {
                                                                                                                        addr330:
                                                                                                                        §§push(§§pop().c);
                                                                                                                        if(_loc9_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(!(_loc10_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.§4!&§);
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc9_ || this)
                                                                                                                                             {
                                                                                                                                                addr372:
                                                                                                                                                if(_loc9_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§break§);
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().§&!K§);
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         continue loop47;
                                                                                                                                                      }
                                                                                                                                                      addr387:
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         continue loop48;
                                                                                                                                                      }
                                                                                                                                                      addr389:
                                                                                                                                                      if(_loc9_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr397:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr407:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc9_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr414:
                                                                                                                                                                  if(!(_loc10_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.§4!&§);
                                                                                                                                                                     addr538:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                        addr539:
                                                                                                                                                                        while(!_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§break§);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().§ X§);
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       break loop48;
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                    addr459:
                                                                                                                                                                                    while(_loc9_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr466);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr589);
                                                                                                                                                                              }
                                                                                                                                                                              addr591:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 addr592:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    break loop51;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr590);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr414);
                                                                                                                                                                  }
                                                                                                                                                                  addr536:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_.§4!&§);
                                                                                                                                                                  break loop52;
                                                                                                                                                                  §§goto(addr407);
                                                                                                                                                               }
                                                                                                                                                               addr444:
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue loop49;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr457:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr389);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr459);
                                                                                                                                                }
                                                                                                                                                §§goto(addr457);
                                                                                                                                             }
                                                                                                                                             §§goto(addr397);
                                                                                                                                          }
                                                                                                                                          §§goto(addr539);
                                                                                                                                       }
                                                                                                                                       §§goto(addr387);
                                                                                                                                    }
                                                                                                                                    §§goto(addr372);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       loop29:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.m_sweep);
                                                                                                                                          addr502:
                                                                                                                                          loop30:
                                                                                                                                          while(!_loc10_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.m_sweep);
                                                                                                                                             loop31:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().a);
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.§`!`§);
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§break§);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().§>d§);
                                                                                                                                                               addr520:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                               addr275:
                                                                                                                                                               §§push(this.§break§);
                                                                                                                                                               if(_loc9_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr287:
                                                                                                                                                                  §§pop().a = §§pop() + §§pop() * §§pop().§ w§;
                                                                                                                                                                  addr286:
                                                                                                                                                                  while(!(_loc10_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc3_.§-F§();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop52;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop29;
                                                                                                                                                                     }
                                                                                                                                                                     addr523:
                                                                                                                                                                     addr523:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_.m_sweep);
                                                                                                                                                                        addr426:
                                                                                                                                                                        addr527:
                                                                                                                                                                        while(_loc9_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                           while(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_.m_sweep);
                                                                                                                                                                              while(!_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().c);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr444);
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                    §§goto(addr330);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr536);
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop7;
                                                                                                                                                                                 §§goto(addr314);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop6;
                                                                                                                                                                           }
                                                                                                                                                                           while(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.m_sweep);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr533);
                                                                                                                                                                                 §§goto(addr323);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop5;
                                                                                                                                                                           if(!(_loc10_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop31;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop30;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr528);
                                                                                                                                                                           §§goto(addr426);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc10_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop51;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr514:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                   }
                                                                                                                                                   addr521:
                                                                                                                                                }
                                                                                                                                                addr522:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().a = §§pop();
                                                                                                                                                   §§goto(addr523);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop4;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr592);
                                                                                                                                 }
                                                                                                                                 continue loop8;
                                                                                                                                 addr557:
                                                                                                                              }
                                                                                                                              continue loop50;
                                                                                                                           }
                                                                                                                           §§goto(addr407);
                                                                                                                        }
                                                                                                                        §§goto(addr441);
                                                                                                                     }
                                                                                                                     §§goto(addr532);
                                                                                                                  }
                                                                                                                  §§goto(addr438);
                                                                                                               }
                                                                                                               §§goto(addr434);
                                                                                                            }
                                                                                                            while(_loc9_)
                                                                                                            {
                                                                                                               if(_loc9_ || this)
                                                                                                               {
                                                                                                                  §§goto(addr456);
                                                                                                                  §§push(_loc8_);
                                                                                                               }
                                                                                                               §§goto(addr538);
                                                                                                            }
                                                                                                            §§goto(addr542);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr527);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr557);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr556);
                                                                                                   §§goto(addr475);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr591);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr523);
                                                            }
                                                            §§goto(addr172);
                                                         }
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.m_revolute1);
                                                         addr111:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§@-§());
                                                         }
                                                      }
                                                      addr109:
                                                   }
                                                   §§goto(addr126);
                                                }
                                                else
                                                {
                                                   addr65:
                                                   if(!_loc9_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr69:
                                                   §§push(this.m_revolute2.§@-§());
                                                   if(!_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   §§goto(addr145);
                                                }
                                             }
                                             else
                                             {
                                                addr85:
                                             }
                                             §§goto(addr122);
                                          }
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr65);
                                 }
                                 §§goto(addr69);
                              }
                              continue loop0;
                           }
                           §§goto(addr121);
                        }
                     }
                  }
                  §§goto(addr126);
               }
               §§goto(addr109);
            }
            §§goto(addr111);
         }
         §§goto(addr85);
      }
   }
}
