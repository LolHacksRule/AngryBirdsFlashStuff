package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Vec2;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
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
      
      private var §8!§:b2Jacobian;
      
      private var §3!;§:Number;
      
      private var §?!e§:Number;
      
      private var §`!6§:Number;
      
      private var §12§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_)
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
                  loop2:
                  while(_loc7_)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     while(true)
                     {
                        addr48:
                        while(true)
                        {
                           this.§8!§ = new b2Jacobian();
                           do
                           {
                              super(param1);
                           }
                           while(!(_loc7_ || this));
                           
                           if(!_loc7_)
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr48);
         }
         §§push(param1.joint1.§2!]§);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.joint2.§2!]§);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc6_)
         {
            this.m_revolute1 = null;
            while(true)
            {
               this.m_prismatic1 = null;
               loop8:
               while(!_loc6_)
               {
                  this.m_revolute2 = null;
                  while(true)
                  {
                     this.m_prismatic2 = null;
                     while(_loc7_)
                     {
                        this.m_ground1 = param1.joint1.§]!X§();
                        loop11:
                        while(true)
                        {
                           §#A§ = param1.joint1.§+4§();
                           loop12:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop13:
                              while(true)
                              {
                                 if(§§pop() == b2Joint.e_revoluteJoint)
                                 {
                                    while(true)
                                    {
                                       this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
                                       addr460:
                                       while(true)
                                       {
                                          §§push(this.m_groundAnchor1);
                                       }
                                    }
                                    addr454:
                                 }
                                 else
                                 {
                                    this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                    loop14:
                                    while(true)
                                    {
                                       §§push(this.m_groundAnchor1);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                          loop15:
                                          while(true)
                                          {
                                             §§push(this.m_localAnchor1);
                                             if(_loc7_ || param1)
                                             {
                                                §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                                                while(true)
                                                {
                                                   §§push(this.m_prismatic1.§%!]§());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   addr366:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      continue loop11;
                                                   }
                                                   addr155:
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      loop47:
                                                      while(true)
                                                      {
                                                         this.§12§ = 0;
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               loop25:
                                                               while(_loc7_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§?!e§ = param1.§9K§;
                                                                     loop27:
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              if(_loc7_ || _loc3_)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(_loc4_);
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    §§push(this.§?!e§);
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       §§push(§§pop() * _loc5_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§pop().§3!;§ = §§pop();
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    addr148:
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       §§goto(addr155);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             §§push(this.m_localAnchor2);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§pop().SetV(this.m_prismatic2.m_localAnchor2);
                                                                                                addr218:
                                                                                                while(_loc7_ || this)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§push(this.m_prismatic2.§%!]§());
                                                                                                   if(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         addr194:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               §§goto(addr366);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               addr273:
                                                                                                            }
                                                                                                         }
                                                                                                         while(!_loc6_)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            break loop27;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            §§goto(addr428);
                                                                                                         }
                                                                                                         addr427:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr427);
                                                                                                      }
                                                                                                      addr426:
                                                                                                   }
                                                                                                   §§goto(addr194);
                                                                                                }
                                                                                                continue loop13;
                                                                                                addr218:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().SetV(this.m_revolute2.m_localAnchor2);
                                                                                                addr299:
                                                                                                while(!(_loc6_ && this))
                                                                                                {
                                                                                                   §§goto(addr273);
                                                                                                   §§push(this.m_revolute2.§9-§());
                                                                                                }
                                                                                                §§goto(addr358);
                                                                                             }
                                                                                             addr295:
                                                                                          }
                                                                                          addr314:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§goto(addr295);
                                                                                                §§push(this.m_localAnchor2);
                                                                                             }
                                                                                             loop39:
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr426);
                                                                                                §§push(this.m_revolute1.§9-§());
                                                                                                addr434:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().SetV(this.m_revolute1.m_localAnchor2);
                                                                                                   continue loop39;
                                                                                                   addr448:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr148);
                                                                                       }
                                                                                       addr237:
                                                                                    }
                                                                                    continue loop47;
                                                                                 }
                                                                                 continue;
                                                                                 addr146:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.m_groundAnchor2);
                                                                                 addr310:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().SetV(this.m_revolute2.m_localAnchor1);
                                                                                    §§goto(addr314);
                                                                                 }
                                                                                 addr338:
                                                                                 this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr218);
                                                                     }
                                                                     while(!(_loc7_ || _loc3_))
                                                                     {
                                                                        while(!(_loc6_ && _loc2_))
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§goto(addr338);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr454);
                                                                           }
                                                                        }
                                                                        §§goto(addr460);
                                                                     }
                                                                     continue loop15;
                                                                     addr291:
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(this.m_groundAnchor2);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§pop().SetV(this.m_prismatic2.m_localAnchor1);
                                                                        §§goto(addr237);
                                                                     }
                                                                     §§goto(addr310);
                                                                  }
                                                                  §§goto(addr299);
                                                               }
                                                               continue loop8;
                                                               addr264:
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            if(_loc7_ || this)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.m_ground2 = param1.joint2.§]!X§();
                                                                     addr358:
                                                                     while(true)
                                                                     {
                                                                        §2!`§ = param1.joint2.§+4§();
                                                                        continue loop13;
                                                                     }
                                                                     §§goto(addr430);
                                                                  }
                                                                  addr430:
                                                                  addr352:
                                                               }
                                                            }
                                                            addr428:
                                                            while(!_loc6_)
                                                            {
                                                               §§goto(addr448);
                                                            }
                                                            continue loop12;
                                                            addr446:
                                                         }
                                                         §§goto(addr146);
                                                      }
                                                      return;
                                                      addr162:
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr434);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop().SetV(this.m_revolute1.m_localAnchor1);
                                          }
                                          addr442:
                                       }
                                       §§goto(addr446);
                                    }
                                 }
                                 §§goto(addr442);
                              }
                           }
                        }
                        if(_loc6_ && _loc2_)
                        {
                           continue;
                        }
                        §§goto(addr352);
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!`.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§12§);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this.§8!§.§8M§.x);
                  if(_loc3_)
                  {
                     addr50:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!_loc2_)
                     {
                        §§push(this.§12§);
                        if(_loc3_ || this)
                        {
                           §§goto(addr80);
                        }
                        §§push(§§pop() * §§pop());
                     }
                  }
                  addr80:
                  §§push(§§pop() * §§pop());
                  if(!_loc2_)
                  {
                     §§push(this.§8!§.§8M§.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
            }
         }
         §§goto(addr50);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Mat22 = b2internal::2!`.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc8_ || param1)
         {
            §§push(§§pop() - b2internal::2!`.m_sweep.localCenter.x);
            if(_loc8_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc9_ && this))
         {
            §§push(§§pop() - b2internal::2!`.m_sweep.localCenter.y);
            if(!(_loc9_ && _loc2_))
            {
               addr67:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc8_)
            {
               §§push(_loc3_);
               if(_loc8_ || _loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc9_)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc8_ || _loc2_)
                     {
                        addr95:
                        §§push(§§pop() * _loc4_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc8_)
                     {
                        addr100:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc9_)
                  {
                     §§push(_loc2_.col1.y);
                     if(!(_loc9_ && _loc3_))
                     {
                        §§push(_loc3_);
                        if(_loc8_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc9_)
                           {
                              §§push(_loc2_.col2.y);
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§push(§§pop() * _loc4_);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc8_ || _loc2_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc9_ && this))
                                       {
                                          _loc4_ = §§pop();
                                          if(_loc8_ || _loc3_)
                                          {
                                             addr173:
                                             §§push(_loc5_);
                                             if(!_loc9_)
                                             {
                                                addr176:
                                                §§push(Number(§§pop()));
                                                if(_loc8_)
                                                {
                                                   addr179:
                                                   _loc3_ = §§pop();
                                                }
                                                addr202:
                                                var _loc6_:* = §§pop();
                                                §§push(this.§12§);
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() * this.§8!§.§8M§.y);
                                                   if(_loc8_ || _loc2_)
                                                   {
                                                      addr219:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc7_:* = §§pop();
                                                   §§push(param1);
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      §§push(this.§12§);
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         §§push(this.§8!§.§0!Q§);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc8_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§goto(addr289);
                                                                     }
                                                                     addr289:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc8_)
                                                                        {
                                                                           addr287:
                                                                           §§push(§§pop() * _loc6_);
                                                                        }
                                                                     }
                                                                     return §§pop() * §§pop();
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr287);
                                                               }
                                                            }
                                                            §§goto(addr289);
                                                         }
                                                         §§goto(addr287);
                                                      }
                                                   }
                                                   §§goto(addr289);
                                                }
                                                §§goto(addr219);
                                             }
                                             addr201:
                                             §§goto(addr202);
                                             §§push(Number(§§pop()));
                                          }
                                          §§push(this.§12§);
                                          if(!(_loc9_ && param1))
                                          {
                                             addr193:
                                             §§push(§§pop() * this.§8!§.§8M§.x);
                                             if(_loc8_ || param1)
                                             {
                                             }
                                             §§goto(addr202);
                                          }
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr202);
                                 }
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr173);
               }
               §§goto(addr95);
            }
            §§goto(addr100);
         }
         §§goto(addr67);
      }
      
      public function §?f§() : Number
      {
         return this.§?!e§;
      }
      
      public function §[!C§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?!e§ = param1;
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
         _loc4_ = b2internal::#A;
         var _loc5_:b2Body = b2internal::2!`;
         §§push(0);
         if(_loc16_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(_loc16_)
         {
            §§push(this.§8!§);
            if(!_loc15_)
            {
               §§pop().§^!,§();
               loop0:
               while(true)
               {
                  loop1:
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
                              _loc11_ = this.m_prismatic1.§>!@§;
                              if(!(_loc15_ && this))
                              {
                                 §§push(_loc10_.col1);
                                 if(_loc16_ || _loc3_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc16_)
                                    {
                                       §§push(_loc11_.x);
                                       if(!(_loc15_ && _loc2_))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc16_ || _loc3_)
                                          {
                                             §§push(_loc10_.col2);
                                             if(_loc16_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc16_)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(_loc16_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc16_ || _loc2_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc16_ || this)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc16_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(_loc16_ || _loc2_)
                                                               {
                                                                  addr223:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(_loc16_)
                                                                  {
                                                                     addr226:
                                                                     §§push(_loc11_.x);
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr254:
                                                                        addr255:
                                                                        addr230:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc15_)
                                                                        {
                                                                           addr233:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(_loc16_ || param1)
                                                                           {
                                                                              addr245:
                                                                              §§push(§§pop() * _loc11_.y);
                                                                           }
                                                                        }
                                                                        _loc7_ = Number(§§pop());
                                                                        _loc10_ = _loc4_.m_xf.R;
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           §§push(this.m_localAnchor1);
                                                                           loop46:
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
                                                                                                continue loop46;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr591);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc16_ || this)
                                                                     {
                                                                        §§goto(addr254);
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                                  §§goto(addr233);
                                                               }
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr245);
                                                }
                                                §§goto(addr254);
                                             }
                                             §§goto(addr233);
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr245);
                                    }
                                    §§goto(addr254);
                                 }
                              }
                              §§goto(addr223);
                           }
                           addr681:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§>!@§;
                           if(!_loc15_)
                           {
                              §§push(_loc10_.col1);
                              if(!(_loc15_ && this))
                              {
                                 §§push(§§pop().x);
                                 if(!(_loc15_ && _loc3_))
                                 {
                                    §§push(_loc11_.x);
                                    if(_loc16_ || _loc3_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc15_ && this))
                                       {
                                          addr724:
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
                                                   if(!_loc15_)
                                                   {
                                                      addr738:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc16_ || param1)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc15_ && _loc3_))
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(_loc16_ || _loc2_)
                                                            {
                                                               addr764:
                                                               §§push(_loc10_.col1.y);
                                                               if(_loc16_ || _loc2_)
                                                               {
                                                                  §§push(_loc11_.x);
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr794:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(!_loc15_)
                                                                        {
                                                                           addr802:
                                                                           §§push(§§pop() + §§pop() * _loc11_.y);
                                                                           if(!(_loc15_ && param1))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr802);
                                                                     }
                                                                  }
                                                                  §§goto(addr802);
                                                               }
                                                               §§goto(addr794);
                                                            }
                                                            addr812:
                                                            _loc10_ = _loc5_.m_xf.R;
                                                            if(!(_loc15_ && _loc2_))
                                                            {
                                                               §§push(this.m_localAnchor2);
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr1180:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_.m_sweep);
                                                                     addr1182:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().localCenter);
                                                                        addr1183:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr1184:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              addr1185:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr1186:
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
                                                            §§goto(addr1158);
                                                         }
                                                      }
                                                      _loc7_ = §§pop();
                                                      §§goto(addr812);
                                                   }
                                                }
                                                §§goto(addr802);
                                             }
                                             §§goto(addr738);
                                          }
                                       }
                                       §§goto(addr794);
                                    }
                                    §§goto(addr802);
                                 }
                                 §§goto(addr724);
                              }
                              §§goto(addr764);
                           }
                           §§goto(addr812);
                        }
                        break;
                     }
                     if(_loc16_)
                     {
                        if(!_loc16_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(this.§8!§);
                           if(!_loc15_)
                           {
                              §§pop().§]j§ = -1;
                              if(!(_loc15_ && _loc2_))
                              {
                                 §§push(_loc14_);
                                 if(!_loc15_)
                                 {
                                    §§push(_loc4_.§-2§);
                                    if(!(_loc15_ && this))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc16_ || _loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc15_)
                                          {
                                          }
                                          addr636:
                                          §§push(this.§?!e§);
                                          if(_loc16_ || param1)
                                          {
                                             §§push(this.§?!e§);
                                             if(!(_loc15_ && _loc3_))
                                             {
                                                addr665:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc15_ && _loc2_))
                                                {
                                                   §§push(_loc5_.§-2§);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc15_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc14_ = §§pop();
                                                if(_loc16_ || param1)
                                                {
                                                   addr1188:
                                                   §§push(this);
                                                   if(_loc16_)
                                                   {
                                                      §§push(_loc14_);
                                                      if(!_loc15_)
                                                      {
                                                         if(§§pop() > 0)
                                                         {
                                                            addr1197:
                                                            §§push(1 / _loc14_);
                                                            if(_loc16_ || this)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc15_)
                                                               {
                                                                  addr1220:
                                                                  §§pop().§`!6§ = §§pop();
                                                                  if(!_loc15_)
                                                                  {
                                                                     if(!param1.§?S§)
                                                                     {
                                                                        this.§12§ = 0;
                                                                        if(_loc16_)
                                                                        {
                                                                           if(_loc15_)
                                                                           {
                                                                              loop126:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    addr1385:
                                                                                    if(!(_loc15_ && this))
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       §§push(_loc5_.m_angularVelocity);
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§push(_loc5_.§-2§);
                                                                                          if(!(_loc15_ && this))
                                                                                          {
                                                                                             §§push(this.§12§);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                addr1266:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   addr1264:
                                                                                                   §§push(§§pop() * this.§8!§.§0!Q§);
                                                                                                }
                                                                                                §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                while(!_loc16_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_.§@S§);
                                                                                                      loop92:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_.§@S§);
                                                                                                         loop93:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               addr1546:
                                                                                                               §§push(_loc4_.§",§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§12§);
                                                                                                                  addr1558:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     addr1559:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§8!§);
                                                                                                                        addr1561:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§,!5§);
                                                                                                                           addr1562:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              addr1563:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr1564:
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
                                                                                                               addr1546:
                                                                                                            }
                                                                                                            loop101:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               loop102:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_.§@S§);
                                                                                                                  loop103:
                                                                                                                  for(; _loc16_; if(_loc15_ && this)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  },§§push(_loc5_.§@S§),if(!(_loc15_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              §§push(_loc5_.§",§);
                                                                                                                              if(!(_loc15_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(this.§12§);
                                                                                                                                 if(_loc16_ || param1)
                                                                                                                                 {
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc16_ || param1)
                                                                                                                                       {
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1328);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1546);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1365);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1516);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1360);
                                                                                                                              }
                                                                                                                              §§goto(addr1365);
                                                                                                                           }
                                                                                                                           §§goto(addr1408);
                                                                                                                        }
                                                                                                                        §§goto(addr1450);
                                                                                                                     }
                                                                                                                     §§goto(addr1382);
                                                                                                                  },§§goto(addr1398))
                                                                                                                  {
                                                                                                                     §§push(_loc4_.§@S§);
                                                                                                                     loop104:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(_loc16_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_.§",§);
                                                                                                                           loop105:
                                                                                                                           for(; !_loc15_; if(_loc15_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           },§§push(this.§8!§),while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§8M§);
                                                                                                                              addr1445:
                                                                                                                              addr1328:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 addr1446:
                                                                                                                                 while(_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       addr1450:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          §§goto(addr1451);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1546);
                                                                                                                                       addr1365:
                                                                                                                                       if(!(_loc16_ || param1))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1374);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1433);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1563);
                                                                                                                              }
                                                                                                                              §§push(this.§8!§);
                                                                                                                              if(_loc15_ && this)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc16_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(!(_loc15_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§8M§);
                                                                                                                                    if(!(_loc15_ && this))
                                                                                                                                    {
                                                                                                                                       addr1360:
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1365);
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                          }
                                                                                                                                          §§goto(addr1428);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr1446);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr1445);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1446);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1561);
                                                                                                                              }
                                                                                                                              §§goto(addr1519);
                                                                                                                           })
                                                                                                                           {
                                                                                                                              §§push(this.§12§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 loop107:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§8!§);
                                                                                                                                    addr1519:
                                                                                                                                    loop108:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§,!5§);
                                                                                                                                       if(_loc16_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          loop109:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             loop110:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                addr1530:
                                                                                                                                                loop111:
                                                                                                                                                while(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                      §§push(_loc4_.m_angularVelocity);
                                                                                                                                                      if(_loc16_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.§-2§);
                                                                                                                                                         if(!(_loc15_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§12§);
                                                                                                                                                            if(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               addr1490:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§8!§.§]j§);
                                                                                                                                                               }
                                                                                                                                                               §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                                               loop113:
                                                                                                                                                               while(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.§@S§);
                                                                                                                                                                  loop114:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_.§@S§);
                                                                                                                                                                     addr1398:
                                                                                                                                                                     while(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc16_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop93;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_.§",§);
                                                                                                                                                                              while(_loc16_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc16_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§12§);
                                                                                                                                                                                    while(_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          while(!_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop105;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop107;
                                                                                                                                                                                          addr1433:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1558);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop109;
                                                                                                                                                                                    addr1428:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1559);
                                                                                                                                                                                 if(!(_loc15_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1382:
                                                                                                                                                                                    §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                    continue loop126;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop110;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop111;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr1458:
                                                                                                                                                                     continue loop104;
                                                                                                                                                                     addr1458:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_.§@S§);
                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop103;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop114;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc16_ || _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop113;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1458);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop108;
                                                                                                                                                               }
                                                                                                                                                               continue loop102;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1490);
                                                                                                                                                      §§goto(addr1385);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop101;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr1562);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1564);
                                                                                                                        }
                                                                                                                        §§goto(addr1530);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop92;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                return;
                                                                                                addr1267:
                                                                                                addr1269:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1264);
                                                                                       }
                                                                                       §§goto(addr1266);
                                                                                    }
                                                                                    §§goto(addr1533);
                                                                                 }
                                                                                 §§goto(addr1451);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr1238:
                                                                           }
                                                                           §§goto(addr1266);
                                                                        }
                                                                        §§goto(addr1267);
                                                                     }
                                                                     §§goto(addr1537);
                                                                  }
                                                                  §§goto(addr1269);
                                                                  addr1210:
                                                               }
                                                               §§goto(addr1220);
                                                            }
                                                            addr1219:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         else
                                                         {
                                                            §§push(0);
                                                            if(!(_loc15_ && param1))
                                                            {
                                                               §§goto(addr1219);
                                                            }
                                                         }
                                                         §§goto(addr1220);
                                                      }
                                                      §§goto(addr1210);
                                                   }
                                                   §§goto(addr1197);
                                                }
                                                §§goto(addr1266);
                                             }
                                             §§goto(addr665);
                                             §§push(§§pop() * §§pop());
                                          }
                                          §§goto(addr665);
                                       }
                                       _loc14_ = §§pop();
                                       if(!(_loc15_ && _loc3_))
                                       {
                                          if(false)
                                          {
                                             continue loop1;
                                          }
                                          addr603:
                                          if(!this.m_revolute2)
                                          {
                                             §§push(_loc3_.m_xf);
                                             break loop1;
                                          }
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             §§push(this.§8!§);
                                             break;
                                          }
                                       }
                                       §§goto(addr1266);
                                    }
                                    §§goto(addr665);
                                 }
                                 §§goto(addr636);
                              }
                              §§goto(addr1238);
                           }
                           break;
                        }
                        §§push(this.§?!e§);
                        if(!_loc15_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§0!Q§ = §§pop();
                        if(_loc16_ || _loc3_)
                        {
                           §§push(_loc14_);
                           if(_loc16_ || param1)
                           {
                              §§goto(addr636);
                           }
                           §§goto(addr665);
                        }
                        §§goto(addr1458);
                     }
                     §§goto(addr1537);
                     §§goto(addr1188);
                  }
                  §§goto(addr681);
               }
            }
            §§goto(addr615);
         }
         §§goto(addr107);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = b2internal::#A;
         var _loc3_:b2Body = b2internal::2!`;
         §§push(this.§8!§.§&u§(_loc2_.§@S§,_loc2_.m_angularVelocity,_loc3_.§@S§,_loc3_.m_angularVelocity));
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§`!6§);
         if(_loc6_ || param1)
         {
            §§push(-§§pop());
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() * _loc4_);
               if(_loc6_ || _loc3_)
               {
                  addr63:
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!(_loc7_ && _loc3_))
            {
               §§push(this);
               §§push(this.§12§);
               if(!_loc7_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§12§ = §§pop();
            }
            while(true)
            {
               §§push(_loc2_.§@S§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.§@S§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().x);
                     loop3:
                     while(true)
                     {
                        §§push(_loc2_.§",§);
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
                                 §§push(this.§8!§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop().§,!5§);
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
                                                   §§push(_loc2_.§@S§);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§@S§);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().y);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(_loc2_.§",§);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§8!§);
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§,!5§);
                                                                        if(!(_loc6_ || _loc3_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop().y);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           addr391:
                                                                           while(_loc6_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           continue loop6;
                                                                           addr238:
                                                                           if(_loc7_ && this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           addr248:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              addr257:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 loop35:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc7_ && this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(_loc3_);
                                                                                       §§push(_loc3_.m_angularVelocity);
                                                                                       if(!(_loc6_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(_loc3_.§-2§);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(_loc6_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc7_ && _loc2_))
                                                                                             {
                                                                                                addr111:
                                                                                                §§push(§§pop() * this.§8!§.§0!Q§);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr111);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ || _loc3_))
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§push(_loc3_.§@S§);
                                                                                          if(_loc7_ && param1)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          addr148:
                                                                                          §§push(_loc3_.§@S§);
                                                                                          if(!(_loc7_ && _loc3_))
                                                                                          {
                                                                                             if(_loc7_ && _loc2_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   §§push(_loc3_.§",§);
                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc7_ && _loc3_)
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc6_ || this)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§push(this.§8!§);
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§8M§);
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           addr231:
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(_loc6_ || this)
                                                                                                                           {
                                                                                                                              §§goto(addr238);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr299:
                                                                                                                                 while(!(_loc7_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(this.§8!§);
                                                                                                                                    while(_loc6_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc7_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().§8M§);
                                                                                                                                    }
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                                 §§goto(addr391);
                                                                                                                              }
                                                                                                                              addr298:
                                                                                                                           }
                                                                                                                           while(_loc6_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 continue loop34;
                                                                                                                                 §§goto(addr257);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop17;
                                                                                                                           addr327:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           addr324:
                                                                                                                           while(_loc6_)
                                                                                                                           {
                                                                                                                              §§goto(addr327);
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr308);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr297:
                                                                                                                  }
                                                                                                                  §§goto(addr298);
                                                                                                               }
                                                                                                               §§goto(addr248);
                                                                                                            }
                                                                                                            §§goto(addr324);
                                                                                                         }
                                                                                                         §§goto(addr231);
                                                                                                      }
                                                                                                      §§goto(addr299);
                                                                                                   }
                                                                                                   §§goto(addr248);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr257);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!(_loc7_ && _loc3_))
                                                                                                {
                                                                                                   §§goto(addr297);
                                                                                                   §§push(_loc3_.§",§);
                                                                                                }
                                                                                                §§goto(addr148);
                                                                                             }
                                                                                             addr287:
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          break loop35;
                                                                                       }
                                                                                       addr394:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    §§push(_loc2_.m_angularVelocity);
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       §§push(_loc2_.§-2§);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr364:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push(this.§8!§.§]j§);
                                                                                             }
                                                                                             §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                             §§goto(addr366);
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr364);
                                                                                 }
                                                                              }
                                                                              §§goto(addr330);
                                                                           }
                                                                           §§goto(addr231);
                                                                        }
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr394);
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
               if(!(_loc7_ && this))
               {
                  return;
               }
            }
         }
         §§goto(addr63);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(_loc9_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::#A;
         var _loc4_:b2Body = b2internal::2!`;
         if(!_loc10_)
         {
            §§push(this.m_revolute1);
            if(_loc9_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && this))
                  {
                     addr119:
                     §§push(this.m_revolute1.§9-§());
                     if(!_loc10_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc9_ || param1)
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
                                       §§push(this.m_prismatic2.§%!]§());
                                       if(!_loc10_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc10_)
                                          {
                                             addr50:
                                             _loc6_ = §§pop();
                                             if(_loc9_)
                                             {
                                                if(!(_loc9_ || _loc2_))
                                                {
                                                   addr70:
                                                   if(!(_loc10_ && this))
                                                   {
                                                      §§push(this.m_revolute2);
                                                      break;
                                                   }
                                                   continue loop3;
                                                }
                                                if(_loc9_)
                                                {
                                                   if(false)
                                                   {
                                                      continue;
                                                   }
                                                   addr155:
                                                   addr132:
                                                   §§push(this.§3!;§);
                                                   if(_loc10_ && this)
                                                   {
                                                   }
                                                   var _loc7_:* = §§pop();
                                                   §§push(this.§`!6§);
                                                   if(_loc9_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop() * _loc7_);
                                                         if(!_loc9_)
                                                         {
                                                         }
                                                         addr168:
                                                         var _loc8_:* = §§pop();
                                                         if(_loc9_ || this)
                                                         {
                                                            §§push(_loc3_.m_sweep);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().c);
                                                               addr596:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.m_sweep);
                                                                  addr598:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().c);
                                                                     addr599:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           §§push(_loc3_.§",§);
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              addr620:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 addr621:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§8!§);
                                                                                    addr623:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§,!5§);
                                                                                       addr624:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr625:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr626:
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
                                                                           addr609:
                                                                        }
                                                                        addr627:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr628:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.m_sweep);
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      §§push(Number(§§pop()));
                                                   }
                                                   §§goto(addr168);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      continue loop2;
                                                   }
                                                   addr104:
                                                }
                                             }
                                             §§goto(addr132);
                                             addr93:
                                          }
                                          §§push(_loc5_);
                                          if(!_loc10_)
                                          {
                                             §§push(this.§?!e§);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() * _loc6_);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§push(§§pop() - §§pop());
                                          if(_loc9_)
                                          {
                                             addr154:
                                             §§goto(addr132);
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr132);
                                       }
                                       §§goto(addr50);
                                    }
                                    §§goto(addr70);
                                 }
                                 break;
                              }
                              §§push(§§pop().§9-§());
                              if(_loc9_)
                              {
                                 addr82:
                                 if(_loc10_ && this)
                                 {
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       §§goto(addr104);
                                       §§goto(addr82);
                                    }
                                    §§goto(addr154);
                                    addr103:
                                 }
                                 §§push(Number(§§pop()));
                                 if(!_loc10_)
                                 {
                                    _loc6_ = §§pop();
                                    §§goto(addr93);
                                 }
                              }
                           }
                           addr131:
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr131);
               }
               else
               {
                  §§push(this.m_prismatic1.§%!]§());
                  if(!_loc10_)
                  {
                     §§goto(addr103);
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr155);
            }
            §§goto(addr119);
         }
         §§goto(addr50);
      }
   }
}
