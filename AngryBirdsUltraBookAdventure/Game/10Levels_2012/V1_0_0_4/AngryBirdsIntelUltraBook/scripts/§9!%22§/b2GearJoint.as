package §9!"§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
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
      
      private var §5!M§:b2Jacobian;
      
      private var §%E§:Number;
      
      private var §6!K§:Number;
      
      private var §,0§:Number;
      
      private var §,!2§:Number;
      
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
               loop1:
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  while(_loc6_)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     loop3:
                     while(_loc6_)
                     {
                        while(true)
                        {
                           this.§5!M§ = new b2Jacobian();
                           continue loop3;
                        }
                     }
                     continue loop1;
                     if(!(_loc6_ || _loc3_))
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr45);
                     }
                     §§push(param1.joint1.§+!?§);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(param1.joint2.§+!?§);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc7_ && param1))
                     {
                        this.m_revolute1 = null;
                        while(true)
                        {
                           this.m_prismatic1 = null;
                           loop7:
                           while(true)
                           {
                              this.m_revolute2 = null;
                              while(true)
                              {
                                 this.m_prismatic2 = null;
                                 while(true)
                                 {
                                    this.m_ground1 = param1.joint1.§@!F§();
                                    while(true)
                                    {
                                       §6!G§ = param1.joint1.§<!J§();
                                       loop11:
                                       for(; _loc6_ || this; if(_loc7_ && _loc2_)
                                       {
                                          continue;
                                       },§§goto(addr350))
                                       {
                                          if(_loc7_)
                                          {
                                             continue loop7;
                                          }
                                          §§push(_loc2_);
                                          loop12:
                                          while(true)
                                          {
                                             if(§§pop() == b2Joint.e_revoluteJoint)
                                             {
                                                addr443:
                                                while(true)
                                                {
                                                   this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
                                                   addr449:
                                                   while(true)
                                                   {
                                                      §§push(this.m_groundAnchor1);
                                                      addr433:
                                                      while(true)
                                                      {
                                                         §§pop().SetV(this.m_revolute1.m_localAnchor1);
                                                         addr437:
                                                         while(true)
                                                         {
                                                            §§push(this.m_localAnchor1);
                                                            addr425:
                                                            while(true)
                                                            {
                                                               §§pop().SetV(this.m_revolute1.m_localAnchor2);
                                                               addr429:
                                                               while(true)
                                                               {
                                                                  §§push(this.m_revolute1.§,b§());
                                                                  addr419:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr420:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr443:
                                             }
                                             else
                                             {
                                                this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§push(this.m_groundAnchor1);
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                                         while(true)
                                                         {
                                                            §§push(this.m_localAnchor1);
                                                            if(_loc6_ || this)
                                                            {
                                                               §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                                                               while(true)
                                                               {
                                                                  §§push(this.m_prismatic1.§<!0§());
                                                                  addr361:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr362:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        addr363:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                               }
                                                               addr387:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr425);
                                                            }
                                                            §§goto(addr429);
                                                         }
                                                         addr402:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr433);
                                                      }
                                                      §§goto(addr425);
                                                   }
                                                }
                                                addr412:
                                             }
                                             loop43:
                                             while(true)
                                             {
                                                addr350:
                                                while(true)
                                                {
                                                   this.m_ground2 = param1.joint2.§@!F§();
                                                   addr356:
                                                   while(true)
                                                   {
                                                      §0!w§ = param1.joint2.§<!J§();
                                                      continue loop12;
                                                   }
                                                   continue loop43;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(_loc7_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§push(this.m_prismatic2.§<!0§());
                                 if(!_loc7_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          if(_loc6_)
                                          {
                                             addr206:
                                             §§push(Number(§§pop()));
                                             if(!_loc7_)
                                             {
                                                _loc5_ = §§pop();
                                                §§goto(addr209);
                                             }
                                             §§goto(addr295);
                                          }
                                          §§goto(addr419);
                                       }
                                       §§goto(addr420);
                                    }
                                    §§goto(addr361);
                                 }
                                 §§goto(addr206);
                              }
                           }
                        }
                     }
                     §§goto(addr443);
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            super(param1);
            if(!(_loc6_ || this))
            {
               continue;
            }
            if(_loc6_)
            {
               §§goto(addr36);
            }
            §§goto(addr56);
         }
         §§goto(addr78);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6!G.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::0!w.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || _loc3_)
         {
            §§push(this.§,!2§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§goto(addr74);
               }
               §§push(param1);
               if(_loc2_)
               {
                  §§push(this.§,!2§);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc3_)
                     {
                     }
                  }
               }
            }
            §§goto(addr74);
         }
         addr74:
         §§push(this.§5!M§.§7!A§.x);
         if(!_loc3_)
         {
            §§push(§§pop() * §§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop() * this.§5!M§.§7!A§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Mat22 = b2internal::0!w.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc8_)
         {
            §§push(§§pop() - b2internal::0!w.m_sweep.localCenter.x);
            if(!(_loc9_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc8_)
         {
            §§push(§§pop() - b2internal::0!w.m_sweep.localCenter.y);
            if(!(_loc9_ && _loc3_))
            {
               addr57:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc8_ || this)
            {
               §§push(_loc3_);
               if(!(_loc9_ && _loc3_))
               {
                  addr95:
                  §§push(§§pop() * §§pop());
                  if(!_loc9_)
                  {
                     §§push(_loc2_.col2.x);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * _loc4_);
                     }
                  }
                  var _loc5_:Number = §§pop();
                  if(_loc8_ || param1)
                  {
                     §§push(_loc2_.col1.y);
                     if(_loc8_ || param1)
                     {
                        §§push(_loc3_);
                        if(_loc8_ || this)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc9_)
                           {
                              addr125:
                              §§push(_loc2_.col2.y);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() * _loc4_);
                                 if(!_loc9_)
                                 {
                                    addr144:
                                    §§push(§§pop() + §§pop());
                                    if(!_loc9_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          addr155:
                                          _loc4_ = §§pop();
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc9_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc9_)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr175:
                                                   §§push(this.§,!2§);
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      addr188:
                                                      §§push(§§pop() * this.§5!M§.§7!A§.x);
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         addr196:
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr196);
                                          }
                                          §§goto(addr175);
                                       }
                                       var _loc6_:* = §§pop();
                                       §§push(this.§,!2§);
                                       if(!(_loc9_ && this))
                                       {
                                          §§push(§§pop() * this.§5!M§.§7!A§.y);
                                          if(!_loc9_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(param1);
                                       if(_loc8_ || param1)
                                       {
                                          §§push(this.§,!2§);
                                          if(_loc8_)
                                          {
                                             §§push(this.§5!M§.§?!8§);
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc8_ || this)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      §§push(_loc7_);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc8_)
                                                         {
                                                            addr275:
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                      addr289:
                                                      §§push(_loc4_);
                                                      if(_loc8_)
                                                      {
                                                         §§push(_loc6_);
                                                      }
                                                      return §§pop() * (§§pop() + §§pop());
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr275);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr289);
                                    }
                                    §§goto(addr196);
                                 }
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr175);
               }
               §§push(§§pop() + §§pop());
               if(_loc8_ || this)
               {
               }
            }
            §§goto(addr95);
         }
         §§goto(addr57);
      }
      
      public function §>!B§() : Number
      {
         return this.§6!K§;
      }
      
      public function §6!l§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§6!K§ = param1;
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
         _loc4_ = b2internal::6!G;
         var _loc5_:b2Body = b2internal::0!w;
         §§push(0);
         if(_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(_loc16_ || _loc3_)
         {
            §§push(this.§5!M§);
            if(_loc16_)
            {
               §§pop().§`!5§();
               if(!_loc15_)
               {
                  loop0:
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(!(_loc15_ && this))
                        {
                           §§push(§§pop().R);
                           if(_loc16_ || this)
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§;!3§;
                              if(!_loc15_)
                              {
                                 §§push(_loc10_.col1);
                                 if(!(_loc15_ && param1))
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc15_)
                                    {
                                       §§push(_loc11_.x);
                                       if(_loc16_ || _loc2_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc16_)
                                          {
                                             §§push(_loc10_.col2);
                                             if(_loc16_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc16_ || _loc3_)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc16_ || _loc2_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc16_)
                                                         {
                                                            addr210:
                                                            §§push(Number(§§pop()));
                                                            if(!_loc15_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(!(_loc15_ && _loc3_))
                                                               {
                                                                  addr223:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(_loc11_.x);
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc16_ || this)
                                                                        {
                                                                           addr238:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr246:
                                                                              addr243:
                                                                              addr245:
                                                                              §§push(§§pop() + §§pop() * _loc11_.y);
                                                                              if(_loc15_ && param1)
                                                                              {
                                                                              }
                                                                              addr255:
                                                                              _loc7_ = §§pop();
                                                                              _loc10_ = _loc4_.m_xf.R;
                                                                              if(_loc16_ || _loc2_)
                                                                              {
                                                                                 §§push(this.m_localAnchor1);
                                                                                 loop35:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr595:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_.m_sweep);
                                                                                       addr597:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().localCenter);
                                                                                          addr598:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr599:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                addr600:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr601:
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
                                                                              §§goto(addr406);
                                                                           }
                                                                           §§goto(addr246);
                                                                        }
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr246);
                                                                  }
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                         §§goto(addr238);
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   §§goto(addr245);
                                                }
                                                §§goto(addr246);
                                             }
                                             §§goto(addr238);
                                          }
                                          §§goto(addr210);
                                       }
                                       §§goto(addr246);
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr246);
                           }
                           addr666:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§;!3§;
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
                                                      addr713:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc16_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc15_)
                                                         {
                                                            addr719:
                                                            _loc6_ = §§pop();
                                                            if(!(_loc15_ && this))
                                                            {
                                                               addr729:
                                                               §§push(_loc10_.col1.y);
                                                               if(!(_loc15_ && _loc2_))
                                                               {
                                                                  addr737:
                                                                  §§push(_loc11_.x);
                                                                  if(_loc16_)
                                                                  {
                                                                     addr760:
                                                                     addr761:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr744:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(!(_loc15_ && _loc2_))
                                                                        {
                                                                           addr754:
                                                                           §§push(§§pop() * _loc11_.y);
                                                                        }
                                                                     }
                                                                     _loc7_ = Number(§§pop());
                                                                     _loc10_ = _loc5_.m_xf.R;
                                                                     if(!(_loc15_ && this))
                                                                     {
                                                                        §§push(this.m_localAnchor2);
                                                                        loop84:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr1190:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.m_sweep);
                                                                              addr1192:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().localCenter);
                                                                                 addr1193:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr1194:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr1195:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr1196:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             continue loop84;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr1189:
                                                                     }
                                                                     loop91:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_localAnchor2);
                                                                        if(_loc16_ || this)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           loop92:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.m_sweep);
                                                                              if(!(_loc15_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop().localCenter);
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    loop93:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       loop94:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          loop95:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc10_.col1);
                                                                                             loop96:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                loop97:
                                                                                                while(_loc16_ || this)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   loop98:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc15_ && _loc2_))
                                                                                                      {
                                                                                                         if(!(_loc15_ && this))
                                                                                                         {
                                                                                                            §§push(_loc10_.col2);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               addr1135:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc9_);
                                                                                                                  addr1136:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     addr1137:
                                                                                                                     while(!_loc15_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc15_ && this))
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              continue loop92;
                                                                                                                           }
                                                                                                                           §§goto(addr1190);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop93;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr1134:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr1140);
                                                                                                      addr876:
                                                                                                      if(_loc15_ && this)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!(_loc15_ && param1))
                                                                                                      {
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            if(!(_loc15_ && _loc3_))
                                                                                                            {
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  addr903:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc16_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr910:
                                                                                                                     if(!(_loc15_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                           continue loop92;
                                                                                                                        }
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           if(_loc15_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue loop97;
                                                                                                                           }
                                                                                                                           _loc14_ = §§pop();
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 addr933:
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    loop119:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§5!M§);
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§6!K§);
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             §§push(-§§pop());
                                                                                                                                             if(!(_loc15_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr952:
                                                                                                                                                §§push(§§pop() * _loc12_);
                                                                                                                                             }
                                                                                                                                             §§pop().§?!8§ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   if(_loc16_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         continue loop91;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§6!K§);
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc16_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§6!K§);
                                                                                                                                                                     if(_loc16_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           addr816:
                                                                                                                                                                           if(_loc16_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr1092:
                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_.§7n§);
                                                                                                                                                                                 if(_loc16_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc16_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc5_.§;5§);
                                                                                                                                                                                          if(_loc16_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                             if(!(_loc15_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr871:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc16_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr869:
                                                                                                                                                                                                   §§push(§§pop() * _loc12_);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc15_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr876);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      addr1102:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         loop112:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc9_ = §§pop();
                                                                                                                                                                                                            addr1104:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                                                                               addr1012:
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
                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                                                                        addr1054:
                                                                                                                                                                                                                        if(_loc16_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc12_ = §§pop();
                                                                                                                                                                                                                           addr1055:
                                                                                                                                                                                                                           while(!_loc15_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§5!M§);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().§7!A§);
                                                                                                                                                                                                                                 §§push(this.§6!K§);
                                                                                                                                                                                                                                 if(!(_loc15_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr983:
                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                       if(_loc16_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr992:
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          §§push(this.§6!K§);
                                                                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                                                                             if(_loc16_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * _loc7_);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().Set(§§pop(),§§pop());
                                                                                                                                                                                                                                       while(!_loc15_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop119;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop96;
                                                                                                                                                                                                                                       addr1007:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr992);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr983);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop95;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1054:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1054);
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1054);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                  addr1039:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     addr1040:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr903);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop112;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1101:
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc16_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1050);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1049:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1137);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr869);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(_loc16_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1101);
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1136);
                                                                                                                                                                                       addr1093:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1049);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr871);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1093);
                                                                                                                                                                              }
                                                                                                                                                                              addr1092:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1050);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr871);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1135);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1039);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr816);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1102);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr903);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1104);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1007);
                                                                                                                                             }
                                                                                                                                             continue loop98;
                                                                                                                                             addr955:
                                                                                                                                          }
                                                                                                                                          §§goto(addr952);
                                                                                                                                       }
                                                                                                                                       §§goto(addr970);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1198);
                                                                                                                              }
                                                                                                                              §§goto(addr1055);
                                                                                                                           }
                                                                                                                           §§goto(addr955);
                                                                                                                        }
                                                                                                                        §§goto(addr1140);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc16_ || param1)
                                                                                                                        {
                                                                                                                           §§push(_loc10_.col2);
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              §§goto(addr1092);
                                                                                                                              §§push(§§pop().y);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1134);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1196);
                                                                                                                        §§goto(addr910);
                                                                                                                     }
                                                                                                                     §§goto(addr1135);
                                                                                                                     addr1080:
                                                                                                                  }
                                                                                                                  §§goto(addr1012);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     if(!(_loc15_ && this))
                                                                                                                     {
                                                                                                                        §§goto(addr1080);
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                     }
                                                                                                                     §§goto(addr1194);
                                                                                                                  }
                                                                                                                  §§goto(addr1092);
                                                                                                               }
                                                                                                               addr1069:
                                                                                                            }
                                                                                                            §§goto(addr1040);
                                                                                                         }
                                                                                                         §§goto(addr1054);
                                                                                                      }
                                                                                                      §§goto(addr903);
                                                                                                   }
                                                                                                   §§goto(addr1195);
                                                                                                }
                                                                                                continue loop94;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1193);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr1192);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1189);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc16_)
                                                                  {
                                                                     §§goto(addr760);
                                                                  }
                                                                  §§goto(addr761);
                                                               }
                                                               §§goto(addr744);
                                                            }
                                                            §§goto(addr760);
                                                         }
                                                         §§goto(addr737);
                                                      }
                                                      §§goto(addr760);
                                                   }
                                                }
                                                §§goto(addr754);
                                             }
                                             §§goto(addr713);
                                          }
                                          §§goto(addr744);
                                       }
                                       §§goto(addr760);
                                    }
                                    §§goto(addr713);
                                 }
                                 §§goto(addr719);
                              }
                              §§goto(addr729);
                           }
                           §§goto(addr760);
                        }
                        break;
                     }
                     if(!_loc15_)
                     {
                        §§push(this.§5!M§);
                        if(!(_loc15_ && this))
                        {
                           §§pop().§<#§ = -1;
                           if(!(_loc15_ && this))
                           {
                              while(true)
                              {
                                 §§push(_loc14_);
                                 if(!(_loc15_ && param1))
                                 {
                                    §§push(_loc4_.§;5§);
                                    if(_loc16_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc16_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc15_)
                                          {
                                             _loc14_ = §§pop();
                                             if(_loc16_ || _loc2_)
                                             {
                                                if(false)
                                                {
                                                   continue loop0;
                                                }
                                                addr603:
                                                if(!this.m_revolute2)
                                                {
                                                   §§push(_loc3_.m_xf);
                                                   break loop0;
                                                }
                                                if(!_loc15_)
                                                {
                                                   addr610:
                                                   §§push(this.§5!M§);
                                                   §§push(this.§6!K§);
                                                   if(_loc16_)
                                                   {
                                                      §§push(-§§pop());
                                                   }
                                                   §§pop().§?!8§ = §§pop();
                                                   if(_loc16_)
                                                   {
                                                      §§push(_loc14_);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(this.§6!K§);
                                                         if(!_loc15_)
                                                         {
                                                            addr625:
                                                            §§push(this.§6!K§);
                                                            if(!(_loc15_ && this))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc15_ && _loc3_))
                                                               {
                                                                  addr644:
                                                                  §§push(§§pop() * _loc5_.§;5§);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc16_ || _loc3_)
                                                               {
                                                                  addr653:
                                                                  §§push(Number(§§pop()));
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                         }
                                                         §§goto(addr644);
                                                      }
                                                      §§goto(addr653);
                                                   }
                                                   loop126:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.§^O§);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(_loc5_.§^O§);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc16_)
                                                            {
                                                               if(_loc16_)
                                                               {
                                                                  §§push(_loc5_.§7n§);
                                                                  if(!(_loc15_ && _loc3_))
                                                                  {
                                                                     addr1337:
                                                                     if(_loc16_ || _loc2_)
                                                                     {
                                                                        addr1344:
                                                                        if(!(_loc15_ && param1))
                                                                        {
                                                                           if(!_loc15_)
                                                                           {
                                                                              §§push(this.§,!2§);
                                                                              if(_loc16_ || this)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    if(!(_loc15_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc15_ && this))
                                                                                       {
                                                                                          addr1379:
                                                                                          if(!(_loc15_ && _loc2_))
                                                                                          {
                                                                                             if(_loc16_ || param1)
                                                                                             {
                                                                                                if(!(_loc15_ && _loc3_))
                                                                                                {
                                                                                                   addr1400:
                                                                                                   §§push(this.§5!M§);
                                                                                                   if(_loc16_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         if(!(_loc15_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop().§7!A§);
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               addr1422:
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!(_loc15_ && param1))
                                                                                                               {
                                                                                                                  addr1429:
                                                                                                                  if(!(_loc15_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr1437:
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                     if(!(_loc16_ || this))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     addr1445:
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc15_ && param1)
                                                                                                                        {
                                                                                                                           continue loop126;
                                                                                                                        }
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              §§push(_loc5_.m_angularVelocity);
                                                                                                                              if(!(_loc15_ && this))
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.§;5§);
                                                                                                                                 if(_loc16_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§,!2§);
                                                                                                                                    if(_loc16_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr1303:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          addr1301:
                                                                                                                                          §§push(§§pop() * this.§5!M§.§?!8§);
                                                                                                                                       }
                                                                                                                                       §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc16_ || this)
                                                                                                                                          {
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             loop12:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_.§^O§);
                                                                                                                                                loop13:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_.§^O§);
                                                                                                                                                   addr1566:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      addr1567:
                                                                                                                                                      addr1619:
                                                                                                                                                      while(!(_loc15_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.§7n§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§,!2§);
                                                                                                                                                            addr1578:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr1579:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§5!M§);
                                                                                                                                                                  addr1581:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().§@"§);
                                                                                                                                                                     if(_loc15_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        addr1591:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           addr1592:
                                                                                                                                                                           while(!(_loc15_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                 §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_.§;5§);
                                                                                                                                                                                    if(!(_loc15_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§,!2§);
                                                                                                                                                                                       if(!_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1559:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc16_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1557:
                                                                                                                                                                                             §§push(§§pop() * this.§5!M§.§<#§);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc5_.§^O§);
                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1560:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1557);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1559);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1630:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              continue loop12;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1429);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1627:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     addr1628:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        addr1629:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1630);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1344);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.§7n§);
                                                                                                                                                         addr1621:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§,!2§);
                                                                                                                                                            addr1623:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr1624:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§5!M§);
                                                                                                                                                                  addr1626:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1627);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1560);
                                                                                                                                       }
                                                                                                                                       return;
                                                                                                                                       addr1304:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1301);
                                                                                                                              }
                                                                                                                              §§goto(addr1303);
                                                                                                                           }
                                                                                                                           addr1455:
                                                                                                                        }
                                                                                                                        §§goto(addr1610);
                                                                                                                        §§goto(addr1445);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1590);
                                                                                                               }
                                                                                                               §§goto(addr1516);
                                                                                                            }
                                                                                                            §§goto(addr1515);
                                                                                                         }
                                                                                                         §§goto(addr1626);
                                                                                                      }
                                                                                                      §§goto(addr1581);
                                                                                                   }
                                                                                                   §§goto(addr1514);
                                                                                                }
                                                                                                §§goto(addr1579);
                                                                                             }
                                                                                             §§goto(addr1591);
                                                                                          }
                                                                                          §§goto(addr1524);
                                                                                       }
                                                                                       §§goto(addr1437);
                                                                                    }
                                                                                    §§goto(addr1623);
                                                                                 }
                                                                                 §§goto(addr1500);
                                                                              }
                                                                              §§goto(addr1422);
                                                                           }
                                                                           §§goto(addr1621);
                                                                        }
                                                                        §§goto(addr1576);
                                                                     }
                                                                     §§goto(addr1508);
                                                                  }
                                                                  §§goto(addr1379);
                                                               }
                                                               §§goto(addr1480);
                                                            }
                                                            §§goto(addr1437);
                                                         }
                                                         §§goto(addr1470);
                                                      }
                                                      §§goto(addr1459);
                                                   }
                                                   addr1526:
                                                }
                                                §§goto(addr1616);
                                                §§push(_loc4_.§^O§);
                                             }
                                             addr1265:
                                             §§goto(addr1303);
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                    §§goto(addr625);
                                 }
                                 break;
                              }
                              _loc14_ = §§pop();
                              if(!(_loc15_ && _loc3_))
                              {
                                 addr1198:
                                 §§push(this);
                                 if(!_loc15_)
                                 {
                                    §§push(_loc14_);
                                    if(_loc16_)
                                    {
                                       if(§§pop() > 0)
                                       {
                                          addr1207:
                                          §§push(1 / _loc14_);
                                          if(!(_loc15_ && this))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc15_ && this)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr1234:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(_loc16_ || this)
                                          {
                                             §§goto(addr1234);
                                          }
                                       }
                                    }
                                    §§pop().§,0§ = §§pop();
                                    if(!_loc15_)
                                    {
                                       if(!param1.§[8§)
                                       {
                                          this.§,!2§ = 0;
                                          if(!_loc15_)
                                          {
                                             if(_loc16_ || param1)
                                             {
                                                if(_loc16_ || param1)
                                                {
                                                   §§goto(addr1265);
                                                }
                                                else
                                                {
                                                   §§goto(addr1614);
                                                }
                                             }
                                             §§goto(addr1446);
                                          }
                                          §§goto(addr1304);
                                       }
                                       §§goto(addr1614);
                                    }
                                    §§goto(addr1455);
                                 }
                                 §§goto(addr1207);
                              }
                              §§goto(addr1526);
                              addr118:
                           }
                        }
                        §§goto(addr610);
                     }
                     §§goto(addr1614);
                     §§goto(addr1198);
                  }
                  §§goto(addr666);
                  §§push(§§pop().R);
               }
            }
            §§goto(addr610);
         }
         §§goto(addr118);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = b2internal::6!G;
         var _loc3_:b2Body = b2internal::0!w;
         §§push(this.§5!M§.§8!^§(_loc2_.§^O§,_loc2_.m_angularVelocity,_loc3_.§^O§,_loc3_.m_angularVelocity));
         if(_loc7_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§,0§);
         if(_loc7_)
         {
            §§push(-§§pop());
            if(_loc7_)
            {
               §§push(§§pop() * _loc4_);
               if(!_loc6_)
               {
                  addr54:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc7_ || _loc3_)
               {
                  §§push(this);
                  §§push(this.§,!2§);
                  if(_loc7_ || this)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§,!2§ = §§pop();
                  while(true)
                  {
                     §§push(_loc2_.§^O§);
                     addr403:
                     addr392:
                     while(true)
                     {
                        §§push(_loc2_.§^O§);
                        addr415:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc7_)
                           {
                              §§push(_loc2_.§7n§);
                              while(true)
                              {
                                 §§push(_loc5_);
                                 addr421:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr422:
                                    while(true)
                                    {
                                       §§push(this.§5!M§);
                                       addr424:
                                       while(true)
                                       {
                                          §§push(§§pop().§@"§);
                                          addr425:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr426:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr427:
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
                              addr420:
                           }
                           addr428:
                           while(true)
                           {
                              §§pop().x = §§pop();
                           }
                        }
                     }
                     if(_loc6_ && this)
                     {
                        continue;
                     }
                     §§push(_loc2_);
                     §§push(_loc2_.m_angularVelocity);
                     if(!_loc6_)
                     {
                        §§push(_loc2_.§;5§);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(_loc5_);
                           if(!_loc6_)
                           {
                              addr343:
                              §§push(§§pop() * §§pop());
                              if(!_loc6_)
                              {
                                 §§push(this.§5!M§.§<#§);
                              }
                              §§pop().m_angularVelocity = §§pop() + §§pop();
                              loop22:
                              while(!_loc6_)
                              {
                                 §§push(_loc3_.§^O§);
                                 loop23:
                                 while(true)
                                 {
                                    §§push(_loc3_.§^O§);
                                    addr259:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr260:
                                       loop25:
                                       while(true)
                                       {
                                          §§push(_loc3_.§7n§);
                                          if(_loc7_ || this)
                                          {
                                             if(_loc7_ || param1)
                                             {
                                                §§push(_loc5_);
                                                if(!_loc6_)
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop26:
                                                      while(true)
                                                      {
                                                         §§push(this.§5!M§);
                                                         loop27:
                                                         while(true)
                                                         {
                                                            if(_loc7_ || this)
                                                            {
                                                               §§push(§§pop().§7!A§);
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr298:
                                                                  while(_loc7_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr307:
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§pop().x = §§pop();
                                                                              continue loop23;
                                                                           }
                                                                           addr358:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§7n§);
                                                                              addr360:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 break loop25;
                                                                              }
                                                                              continue loop31;
                                                                           }
                                                                        }
                                                                        §§goto(addr428);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr383:
                                                                        addr176:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr384:
                                                                           while(true)
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              break loop22;
                                                                           }
                                                                        }
                                                                        if(_loc6_ && _loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr186:
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(this.§5!M§);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop27;
                                                                                 }
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    continue loop28;
                                                                                 }
                                                                                 §§goto(addr424);
                                                                              }
                                                                              §§goto(addr420);
                                                                           }
                                                                           §§goto(addr360);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr240:
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              addr250:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 do
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    §§push(_loc3_.m_angularVelocity);
                                                                                    if(_loc6_ && _loc2_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(_loc3_.§;5§);
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc7_ || this)
                                                                                          {
                                                                                             addr102:
                                                                                             §§push(§§pop() * this.§5!M§.§?!8§);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr102);
                                                                                 }
                                                                                 while(§§pop().m_angularVelocity = §§pop(), _loc6_ && _loc2_);
                                                                                 
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                                 continue loop23;
                                                                              }
                                                                              continue loop25;
                                                                           }
                                                                           §§goto(addr383);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr421);
                                                               }
                                                            }
                                                            addr373:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§@"§);
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  §§goto(addr382);
                                                                  §§push(§§pop().y);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr425);
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr298);
                                             }
                                             §§goto(addr427);
                                          }
                                          §§goto(addr306);
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc6_)
                                          {
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                §§goto(addr373);
                                                §§push(this.§5!M§);
                                             }
                                             break;
                                          }
                                          §§goto(addr383);
                                       }
                                       §§goto(addr422);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    §§goto(addr392);
                                 }
                                 addr429:
                                 while(true)
                                 {
                                    §§goto(addr351);
                                 }
                              }
                           }
                           §§push(§§pop() * §§pop());
                        }
                     }
                     §§goto(addr343);
                  }
               }
               §§goto(addr429);
            }
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
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::6!G;
         var _loc4_:b2Body = b2internal::0!w;
         if(!_loc10_)
         {
            §§push(this.m_revolute1);
            if(!_loc10_)
            {
               if(!§§pop())
               {
                  §§push(this.m_prismatic1.§<!0§());
                  loop0:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop1:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop2:
                        while(true)
                        {
                           if(!(_loc10_ && _loc2_))
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(this.m_revolute2);
                                 if(_loc9_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this.m_prismatic2.§<!0§());
                                       if(_loc9_)
                                       {
                                          if(_loc9_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc10_ && this))
                                             {
                                                if(_loc9_ || _loc3_)
                                                {
                                                   _loc6_ = §§pop();
                                                   if(_loc9_)
                                                   {
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(false)
                                                         {
                                                            continue;
                                                         }
                                                         addr132:
                                                         §§push(this.§%E§);
                                                         if(!(_loc10_ && _loc2_))
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc9_ || param1)
                                                            {
                                                               §§push(this.§6!K§);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop() * _loc6_);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc10_)
                                                            {
                                                               addr160:
                                                               var _loc7_:Number = §§pop();
                                                               §§push(this.§,0§);
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(-§§pop());
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(§§pop() * _loc7_);
                                                                     if(_loc9_)
                                                                     {
                                                                        addr172:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc8_:* = §§pop();
                                                                     if(!(_loc10_ && _loc2_))
                                                                     {
                                                                        addr577:
                                                                        addr576:
                                                                        addr622:
                                                                        addr579:
                                                                        addr580:
                                                                        §§push(_loc3_.m_sweep.c);
                                                                        §§push(_loc3_.m_sweep.c.x);
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           addr621:
                                                                           §§push(_loc3_.§7n§);
                                                                           if(!(_loc10_ && this))
                                                                           {
                                                                              addr620:
                                                                              §§push(_loc8_);
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 addr618:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 §§push(this.§5!M§.§@"§.x);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§pop().x = §§pop();
                                                                        addr540:
                                                                        addr623:
                                                                        §§push(_loc3_.m_sweep.c);
                                                                        §§push(_loc3_.m_sweep.c);
                                                                        if(_loc9_)
                                                                        {
                                                                           addr544:
                                                                           §§push(§§pop().y);
                                                                           §§push(_loc3_.§7n§);
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              addr554:
                                                                              §§push(_loc8_);
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr559:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 §§push(this.§5!M§.§@"§);
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    addr570:
                                                                                    §§pop().y = §§pop() + §§pop() * §§pop().y;
                                                                                    addr571:
                                                                                    addr568:
                                                                                    addr569:
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       addr492:
                                                                                       §§push(_loc3_.m_sweep);
                                                                                       if(_loc9_ || _loc3_)
                                                                                       {
                                                                                          addr501:
                                                                                          §§push(_loc3_.m_sweep.a);
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             §§push(_loc3_.§;5§);
                                                                                             if(!(_loc10_ && _loc2_))
                                                                                             {
                                                                                                addr532:
                                                                                                addr531:
                                                                                                addr530:
                                                                                                §§push(_loc8_);
                                                                                                if(_loc9_ || _loc3_)
                                                                                                {
                                                                                                   addr527:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   §§push(this.§5!M§.§<#§);
                                                                                                }
                                                                                                §§pop().a = §§pop() + §§pop() * §§pop();
                                                                                                addr533:
                                                                                                §§push(_loc4_.m_sweep.c);
                                                                                                if(_loc9_ || _loc2_)
                                                                                                {
                                                                                                   addr428:
                                                                                                   §§push(_loc4_.m_sweep);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      addr431:
                                                                                                      §§push(§§pop().c);
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(!(_loc10_ && param1))
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§push(_loc4_.§7n§);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  if(!(_loc10_ && this))
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(_loc9_ || this)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              addr476:
                                                                                                                              §§push(§§pop() * §§pop() * this.§5!M§.§7!A§.x);
                                                                                                                              if(_loc9_ || param1)
                                                                                                                              {
                                                                                                                                 addr485:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    addr488:
                                                                                                                                    §§push(_loc4_.m_sweep);
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().c);
                                                                                                                                       if(_loc9_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_.m_sweep);
                                                                                                                                             if(_loc9_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(_loc9_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.§7n§);
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc10_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc10_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§5!M§);
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().§7!A§);
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr400:
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr403:
                                                                                                                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc9_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   addr414:
                                                                                                                                                                                                   §§push(_loc4_.m_sweep);
                                                                                                                                                                                                   if(_loc9_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc9_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                                                                            if(_loc9_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().a);
                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_.§;5§);
                                                                                                                                                                                                                  if(_loc9_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                     if(_loc9_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§5!M§);
                                                                                                                                                                                                                           if(_loc9_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr270:
                                                                                                                                                                                                                              §§push(§§pop().§?!8§);
                                                                                                                                                                                                                              if(!(_loc10_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr278:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc9_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr288:
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().a = §§pop();
                                                                                                                                                                                                                                          addr291:
                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc9_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc9_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc3_.§0!y§();
                                                                                                                                                                                                                                                   addr201:
                                                                                                                                                                                                                                                   if(_loc9_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc4_.§0!y§();
                                                                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr291);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                                                                                                                                                                         addr197:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr201);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr488);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr571);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr533);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr414);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr532);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr527);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr531);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr530);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr527);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr278);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr270);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr278);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr288);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr501);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr492);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr532);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr488);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr544);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr485);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr476);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr618);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr559);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr476);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr403);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr400);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr618);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr621);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr476);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr403);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr431);
                                                                                                                                                }
                                                                                                                                                §§goto(addr540);
                                                                                                                                             }
                                                                                                                                             §§goto(addr428);
                                                                                                                                          }
                                                                                                                                          §§goto(addr577);
                                                                                                                                       }
                                                                                                                                       §§goto(addr532);
                                                                                                                                    }
                                                                                                                                    §§goto(addr576);
                                                                                                                                 }
                                                                                                                                 §§goto(addr622);
                                                                                                                              }
                                                                                                                              §§goto(addr559);
                                                                                                                           }
                                                                                                                           §§goto(addr554);
                                                                                                                        }
                                                                                                                        §§goto(addr568);
                                                                                                                     }
                                                                                                                     §§goto(addr476);
                                                                                                                  }
                                                                                                                  §§goto(addr569);
                                                                                                               }
                                                                                                               §§goto(addr476);
                                                                                                            }
                                                                                                            §§goto(addr570);
                                                                                                         }
                                                                                                         §§goto(addr485);
                                                                                                      }
                                                                                                      §§goto(addr577);
                                                                                                   }
                                                                                                   §§goto(addr579);
                                                                                                }
                                                                                                §§goto(addr577);
                                                                                             }
                                                                                             §§goto(addr527);
                                                                                          }
                                                                                          §§goto(addr532);
                                                                                       }
                                                                                       §§goto(addr577);
                                                                                    }
                                                                                    §§goto(addr623);
                                                                                 }
                                                                                 §§goto(addr618);
                                                                              }
                                                                              §§goto(addr620);
                                                                           }
                                                                           §§goto(addr570);
                                                                        }
                                                                        §§goto(addr580);
                                                                     }
                                                                     §§goto(addr197);
                                                                  }
                                                               }
                                                               §§goto(addr172);
                                                            }
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      else
                                                      {
                                                         addr87:
                                                         §§push(this.m_revolute2.§,b§());
                                                         if(_loc10_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(_loc9_ || param1)
                                                         {
                                                            addr97:
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            _loc6_ = §§pop();
                                                            addr100:
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr132);
                                                            }
                                                            else
                                                            {
                                                               addr124:
                                                               while(true)
                                                               {
                                                                  §§push(this.m_revolute1);
                                                                  addr126:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§,b§());
                                                                  }
                                                               }
                                                               addr124:
                                                            }
                                                            §§goto(addr160);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!_loc10_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               while(true)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               addr131:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr160);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   §§goto(addr100);
                                                }
                                                §§goto(addr97);
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr87);
                                       }
                                       §§goto(addr160);
                                    }
                                 }
                                 §§goto(addr87);
                              }
                              continue loop0;
                           }
                           §§goto(addr131);
                        }
                     }
                  }
               }
               §§goto(addr124);
            }
            §§goto(addr126);
         }
         §§goto(addr124);
      }
   }
}
