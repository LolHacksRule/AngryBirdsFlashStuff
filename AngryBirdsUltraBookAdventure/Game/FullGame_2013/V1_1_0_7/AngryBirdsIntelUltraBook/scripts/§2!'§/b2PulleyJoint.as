package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Vec2;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §=!5§:Number = 2.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || b2PulleyJoint)
         {
            §=!5§ = 2;
         }
      }
      
      private var §;j§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §-#§:Number;
      
      private var §2z§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §%!F§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §&""§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §=9§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || param1)
         {
            this.m_groundAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.m_u1 = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.m_u2 = new b2Vec2();
                           while(true)
                           {
                              super(param1);
                              continue loop2;
                              addr158:
                              if(_loc5_ || this)
                              {
                                 loop31:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(b2Math);
                                    §§push(param1.§&!9§);
                                    §§push(this.§-#§);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(b2internal::=!5);
                                       if(_loc5_)
                                       {
                                          addr123:
                                          §§push(§§pop() - §§pop());
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(this.§2z§);
                                          }
                                          §§pop().m_maxLength2 = §§pop().§;!t§(§§pop(),§§pop());
                                          while(true)
                                          {
                                             this.§&""§ = 0;
                                             loop33:
                                             while(_loc5_ || param1)
                                             {
                                                this.m_limitImpulse1 = 0;
                                                loop34:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            addr59:
                                                            if(_loc5_ || param1)
                                                            {
                                                               addr66:
                                                               if(_loc5_ || param1)
                                                               {
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_groundAnchor2);
                                                                        addr286:
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.§%!0§);
                                                                           addr288:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(this.§;j§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().m_xf);
                                                                                    addr294:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().position);
                                                                                       addr295:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr296:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr293:
                                                                              }
                                                                              addr297:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 continue loop17;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr348:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.m_groundAnchor2);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(param1.§%!0§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 §§push(this.§;j§);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop().m_xf);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(§§pop().position);
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr274:
                                                                                             §§pop().y = §§pop() - §§pop();
                                                                                             while(_loc5_ || _loc2_)
                                                                                             {
                                                                                                this.m_localAnchor1.SetV(param1.§'G§);
                                                                                                while(true)
                                                                                                {
                                                                                                   this.m_localAnchor2.SetV(param1.§true§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§2z§ = param1.§?!s§;
                                                                                                      continue loop3;
                                                                                                      addr41:
                                                                                                      if(_loc5_ || _loc2_)
                                                                                                      {
                                                                                                         break loop31;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr59);
                                                                                                }
                                                                                                §§goto(addr66);
                                                                                             }
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_ && _loc2_)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                addr373:
                                                                                                §§push(this.m_groundAnchor1);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(param1.§^!s§);
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(_loc5_ || _loc2_)
                                                                                                         {
                                                                                                            addr323:
                                                                                                            §§push(this.§;j§);
                                                                                                            if(_loc5_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop().m_xf);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§pop().position);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr347:
                                                                                                                     §§pop().y = §§pop() - §§pop();
                                                                                                                     §§goto(addr348);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                  }
                                                                                                                  addr361:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  addr363:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().m_xf);
                                                                                                                  break loop15;
                                                                                                                  §§goto(addr323);
                                                                                                               }
                                                                                                               addr359:
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr363);
                                                                                                      }
                                                                                                      §§goto(addr347);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§goto(addr359);
                                                                                                            §§push(this.§;j§);
                                                                                                         }
                                                                                                      }
                                                                                                      addr354:
                                                                                                   }
                                                                                                   §§goto(addr363);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr373);
                                                                                                   }
                                                                                                   addr352:
                                                                                                }
                                                                                                §§goto(addr354);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr361);
                                                                                             }
                                                                                             addr275:
                                                                                             addr364:
                                                                                          }
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       §§goto(addr295);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr293);
                                                                              }
                                                                              §§goto(addr297);
                                                                           }
                                                                           §§goto(addr274);
                                                                        }
                                                                        §§goto(addr288);
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                                  §§goto(addr294);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr230);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(b2Math);
                                                               §§push(param1.§4!J§);
                                                               §§push(this.§-#§);
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(this.§2z§);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop() * b2internal::=!5);
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                               }
                                                               §§pop().m_maxLength1 = §§pop().§;!t§(§§pop(),§§pop());
                                                               break loop34;
                                                            }
                                                            addr191:
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop33;
                                                }
                                                while(!_loc6_)
                                                {
                                                   addr151:
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§goto(addr158);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr352);
                                                         §§goto(addr151);
                                                      }
                                                      addr380:
                                                   }
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                       §§push(§§pop() / §§pop());
                                    }
                                    §§goto(addr123);
                                 }
                                 return;
                                 addr165:
                              }
                           }
                        }
                     }
                  }
                  if(_loc6_)
                  {
                     continue;
                  }
                  §§push(this);
                  §§push(param1.§!!H§);
                  if(_loc5_ || param1)
                  {
                     §§push(this.§2z§);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(§§pop() * param1.§"M§);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§-#§ = §§pop();
                  §§goto(addr191);
               }
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
               this.§;j§ = b2internal::&A.m_world.m_groundBody;
               §§goto(addr380);
            }
         }
         §§goto(addr165);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§&""§);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && param1))
               {
                  §§push(this.m_u2.x);
                  if(_loc3_ || _loc2_)
                  {
                     addr64:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr83);
                  }
                  §§push(this.§&""§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc3_ || _loc2_)
                     {
                        §§push(this.m_u2.y);
                     }
                     addr83:
                     return new §§pop().b2Vec2(§§pop(),§§pop());
                  }
                  §§push(§§pop() * §§pop());
               }
            }
         }
         §§goto(addr64);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §&!f§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§;j§.m_xf.position.Copy();
         if(_loc3_ || this)
         {
            _loc1_.§2!3§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §?i§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§;j§.m_xf.position.Copy();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.§2!3§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::&A.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§;j§.m_xf.position.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!(_loc7_ && _loc1_))
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§;j§.m_xf.position.y);
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop() + this.m_groundAnchor1.y);
               if(_loc6_ || this)
               {
                  addr75:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_.x);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(§§pop() - _loc2_);
                  if(_loc6_)
                  {
                     addr100:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(_loc1_.y);
                  if(_loc6_ || this)
                  {
                     §§push(§§pop() - _loc3_);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               }
               §§goto(addr100);
            }
            §§goto(addr75);
         }
         §§goto(addr40);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::4!d.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§;j§.m_xf.position.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc6_ || _loc3_)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§;j§.m_xf.position.y);
            if(_loc6_)
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(!(_loc7_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(_loc6_)
            {
               §§push(§§pop() - _loc2_);
               if(!(_loc7_ && this))
               {
                  addr95:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(§§pop() - _loc3_);
                  if(_loc6_)
                  {
                     addr110:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               }
               §§goto(addr110);
            }
            §§goto(addr95);
         }
         §§goto(addr40);
      }
      
      public function §%!d§() : Number
      {
         return this.§2z§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         _loc2_ = b2internal::&A;
         _loc3_ = b2internal::4!d;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc28_ || _loc3_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc27_)
            {
               addr64:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc28_)
            {
               §§push(this.m_localAnchor1.y);
               if(!_loc27_)
               {
                  §§push(_loc2_.m_sweep.localCenter.y);
                  if(_loc28_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc27_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(_loc28_)
                        {
                           addr90:
                           _loc6_ = §§pop();
                           §§push(_loc4_.col1.x);
                           if(!_loc27_)
                           {
                              §§push(_loc5_);
                              if(!(_loc27_ && param1))
                              {
                                 addr128:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc27_ && _loc3_))
                                 {
                                    addr112:
                                    §§push(_loc4_.col2.x);
                                    if(!(_loc27_ && this))
                                    {
                                       addr122:
                                       §§push(§§pop() * _loc6_);
                                    }
                                 }
                                 var _loc7_:* = §§pop();
                                 if(!_loc27_)
                                 {
                                    §§push(_loc4_.col1.y);
                                    if(_loc28_ || _loc3_)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc27_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc27_ && _loc3_))
                                          {
                                             §§push(_loc4_.col2.y);
                                             if(_loc28_)
                                             {
                                                addr159:
                                                §§push(§§pop() + §§pop() * _loc6_);
                                                if(_loc28_)
                                                {
                                                   addr162:
                                                   §§push(Number(§§pop()));
                                                   if(_loc28_ || _loc2_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      if(!(_loc27_ && _loc3_))
                                                      {
                                                         §§push(_loc7_);
                                                         if(_loc27_ && this)
                                                         {
                                                         }
                                                         addr187:
                                                         _loc5_ = §§pop();
                                                         addr188:
                                                         _loc4_ = _loc3_.m_xf.R;
                                                         §§push(this.m_localAnchor2.x);
                                                         if(_loc28_ || param1)
                                                         {
                                                            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                            if(_loc28_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc8_:* = §§pop();
                                                         §§push(this.m_localAnchor2.y);
                                                         if(_loc28_)
                                                         {
                                                            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                            if(_loc28_ || _loc3_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc9_:* = §§pop();
                                                         if(!(_loc27_ && param1))
                                                         {
                                                            §§push(_loc4_.col1);
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.col2);
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc27_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          addr370:
                                                                                          loop8:
                                                                                          while(true)
                                                                                          {
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_.col1);
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                if(!(_loc27_ && _loc2_))
                                                                                                {
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   §§push(_loc8_);
                                                                                                   if(_loc28_ || param1)
                                                                                                   {
                                                                                                      if(_loc27_ && this)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc27_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc4_.col2);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!(_loc27_ && this))
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               break loop6;
                                                                                                            }
                                                                                                            addr331:
                                                                                                            if(!(_loc28_ || _loc2_))
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               addr341:
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc28_)
                                                                                                               {
                                                                                                                  _loc9_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(_loc28_ || _loc2_)
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     addr258:
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     if(!(_loc28_ || param1))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(_loc27_ && param1)
                                                                                                                     {
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     addr386:
                                                                                                                     addr386:
                                                                                                                     §§push(_loc2_.m_sweep.c.x);
                                                                                                                     if(!(_loc27_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr382:
                                                                                                                        §§push(_loc5_);
                                                                                                                        break loop6;
                                                                                                                     }
                                                                                                                     var _loc10_:Number = §§pop();
                                                                                                                     §§push(_loc2_.m_sweep.c.y);
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc6_);
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           addr398:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc11_:* = §§pop();
                                                                                                                        §§push(_loc3_.m_sweep.c.x);
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + _loc8_);
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              addr410:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc12_:* = §§pop();
                                                                                                                           §§push(_loc3_.m_sweep.c.y);
                                                                                                                           if(!(_loc27_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc9_);
                                                                                                                              if(_loc28_ || this)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           var _loc13_:* = §§pop();
                                                                                                                           §§push(this.§;j§.m_xf.position.x);
                                                                                                                           if(_loc28_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + this.m_groundAnchor1.x);
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           var _loc14_:* = §§pop();
                                                                                                                           §§push(this.§;j§.m_xf.position.y);
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + this.m_groundAnchor1.y);
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 addr467:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc15_:* = §§pop();
                                                                                                                              §§push(this.§;j§.m_xf.position.x);
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + this.m_groundAnchor2.x);
                                                                                                                                 if(_loc28_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr487:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc16_:* = §§pop();
                                                                                                                                 §§push(this.§;j§.m_xf.position.y);
                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + this.m_groundAnchor2.y);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 var _loc17_:* = §§pop();
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    §§push(this.m_u1);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc10_);
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          if(!(_loc27_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr527:
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             §§push(_loc11_);
                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - _loc15_);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§pop().Set(§§pop(),§§pop());
                                                                                                                                          if(_loc28_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(this.m_u2);
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                if(_loc28_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr564:
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                   if(_loc28_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - _loc17_);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§pop().Set(§§pop(),§§pop());
                                                                                                                                                addr570:
                                                                                                                                                §§push(this.m_u1.§,!t§());
                                                                                                                                                if(!(_loc27_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc18_:* = §§pop();
                                                                                                                                                §§push(this.m_u2.§,!t§());
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc19_:* = §§pop();
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(b2Settings.b2_linearSlop);
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() <= §§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(this.m_u1);
                                                                                                                                                            if(_loc28_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§+J§();
                                                                                                                                                               loop11:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     loop12:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(b2Settings.b2_linearSlop);
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr624:
                                                                                                                                                                                    this.m_u2.§9""§(1 / _loc19_);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr628:
                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr657:
                                                                                                                                                                                 §§push(this.§-#§);
                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr676:
                                                                                                                                                                                    §§push(§§pop() * _loc19_);
                                                                                                                                                                                    if(_loc28_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr689:
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr689);
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc20_:* = §§pop();
                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       if(_loc28_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc27_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§=9§ = b2internal::]B;
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§&""§ = 0;
                                                                                                                                                                                                   loop13:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop14:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                         if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.m_maxLength1);
                                                                                                                                                                                                            if(_loc28_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop15:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.m_limitState1 = b2internal::]B;
                                                                                                                                                                                                                     loop16:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.m_limitImpulse1 = 0;
                                                                                                                                                                                                                        addr795:
                                                                                                                                                                                                                        loop21:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop18:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.m_maxLength2);
                                                                                                                                                                                                                                 if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr755:
                                                                                                                                                                                                                                          if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc27_ && this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             this.m_limitState2 = b2internal::]B;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                                                                                §§goto(addr755);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr790:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       loop19:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!(_loc28_ || param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.m_limitImpulse2 = 0;
                                                                                                                                                                                                                                             continue loop19;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                                                                       addr772:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.m_limitState2 = b2internal::4!S;
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(false)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr727);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr839:
                                                                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          var _loc21_:* = §§pop();
                                                                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                                                                          if(!(_loc27_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.m_u2.y);
                                                                                                                                                                                                                                             if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr906:
                                                                                                                                                                                                                                                      §§push(§§pop() * this.m_u2.x);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                   if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr919:
                                                                                                                                                                                                                                                      var _loc22_:Number = §§pop();
                                                                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this);
                                                                                                                                                                                                                                                         §§push(_loc2_.§3!q§);
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc2_.§2!1§);
                                                                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1667:
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1665:
                                                                                                                                                                                                                                                                     §§push(§§pop() * _loc21_);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop().m_limitMass1 = §§pop() + §§pop();
                                                                                                                                                                                                                                                                  loop24:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this);
                                                                                                                                                                                                                                                                     §§push(_loc3_.§3!q§);
                                                                                                                                                                                                                                                                     if(_loc28_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc3_.§2!1§);
                                                                                                                                                                                                                                                                        if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc22_);
                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1642:
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1640:
                                                                                                                                                                                                                                                                                 §§push(§§pop() * _loc22_);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§pop().m_limitMass2 = §§pop() + §§pop();
                                                                                                                                                                                                                                                                              loop25:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                                                                                                                 §§push(this.m_limitMass1);
                                                                                                                                                                                                                                                                                 if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§2z§);
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(this.§2z§);
                                                                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1601:
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1599:
                                                                                                                                                                                                                                                                                             §§push(§§pop() * this.m_limitMass2);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§pop().§%!F§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.m_limitMass1 = 1 / this.m_limitMass1;
                                                                                                                                                                                                                                                                                             loop27:
                                                                                                                                                                                                                                                                                             while(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                this.m_limitMass2 = 1 / this.m_limitMass2;
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   this.§%!F§ = 1 / this.§%!F§;
                                                                                                                                                                                                                                                                                                   loop29:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!param1.§9!w§)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         this.§&""§ = 0;
                                                                                                                                                                                                                                                                                                         loop30:
                                                                                                                                                                                                                                                                                                         while(_loc28_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop24;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               this.m_limitImpulse1 = 0;
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        loop32:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc3_.§%!<§);
                                                                                                                                                                                                                                                                                                                                    loop84:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_.§%!<§);
                                                                                                                                                                                                                                                                                                                                       loop83:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                             if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc28_ || this)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc3_.§3!q§);
                                                                                                                                                                                                                                                                                                                                                   loop80:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc25_);
                                                                                                                                                                                                                                                                                                                                                         loop79:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                               loop81:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                        while(!(_loc28_ || this))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                              addr1256:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr1224:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc2_.§%!<§);
                                                                                                                                                                                                                                                                                                                                                                                 addr1227:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc2_.§%!<§);
                                                                                                                                                                                                                                                                                                                                                                                    addr1229:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                       addr1230:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc2_.§3!q§);
                                                                                                                                                                                                                                                                                                                                                                                          addr1232:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                                                             addr1233:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                addr1234:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   addr1235:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                      addr1236:
                                                                                                                                                                                                                                                                                                                                                                                                      while(_loc27_ && this)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop25;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc27_ && this)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop32;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc2_.§2!1§);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1200:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1205:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop() * _loc23_);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1205);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               addr1207:
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop32;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1205);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1200);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1207);
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
                                                                                                                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        addr1162:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc3_.§%!<§);
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc28_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop84;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.§%!<§);
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc28_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop83;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_.§3!q§);
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop81;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc27_ && this)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop80;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc26_);
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                continue loop79;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr1087:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc2_.§3!q§);
                                                                                                                                                                                                                                                                                                                                                                                                         addr1252:
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                                                                            addr1253:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               addr1254:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1255);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      addr1250:
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1230);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1162);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1233);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1254);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1087);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr1249:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1250);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr1247:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1249);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1227);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr1162:
                                                                                                                                                                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        break loop30;
                                                                                                                                                                                                                                                                                                                                                                        addr1170:
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1252);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1234);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1253);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1232);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1235);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1162);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1229);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1223:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                                                                                                                                                                    §§push(this.§&""§);
                                                                                                                                                                                                                                                                                                                                    if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * param1.§[!4§);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§pop().§&""§ = §§pop();
                                                                                                                                                                                                                                                                                                                                    addr1538:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                                                                                                                                                                       §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                                                                                       if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * param1.§[!4§);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§pop().m_limitImpulse1 = §§pop();
                                                                                                                                                                                                                                                                                                                                       addr1519:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                                                                                                                                                                          §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * param1.§[!4§);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§pop().m_limitImpulse2 = §§pop();
                                                                                                                                                                                                                                                                                                                                          continue loop29;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1524:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1236);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop30;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  loop58:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc27_ && this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop29;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(this.§2z§);
                                                                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                        if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(this.§&""§);
                                                                                                                                                                                                                                                                                                                              if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                                                       if(_loc28_ || this)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          while(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                             while(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(this.m_u2);
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                                                                                                addr1429:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                   if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc28_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§push(this.m_u1);
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1454:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                            addr1475:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                               addr1476:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                  addr1477:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     continue loop25;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1474:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1455:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                      addr1456:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                         continue loop58;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr1472:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1474);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1400);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1400:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1472);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr1392:
                                                                                                                                                                                                                                                                                                                                          addr1471:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1410:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                          addr1411:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                             addr1412:
                                                                                                                                                                                                                                                                                                                                             addr1350:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                _loc25_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                continue loop24;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                _loc26_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1353);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1477);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1383:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1475);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1392);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1469:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1471);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1411);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1412);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr923:
                                                                                                                                                                                                                                                                                                               return;
                                                                                                                                                                                                                                                                                                               addr1010:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1519);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                  §§push(_loc3_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc3_.§2!1§);
                                                                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc26_);
                                                                                                                                                                                                                                                                                                                           if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr996:
                                                                                                                                                                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                 if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1006:
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop() * _loc25_);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1006);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1009:
                                                                                                                                                                                                                                                                                                                              §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                              addr1008:
                                                                                                                                                                                                                                                                                                                              §§goto(addr1010);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1006);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr996);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1008);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1009);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1256);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1170);
                                                                                                                                                                                                                                                                                                            §§goto(addr1162);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1524);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr923);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1599);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1601);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1640);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1642);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1665);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1667);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1223);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr919);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr906);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr919);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(_loc27_ && param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr772);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr839);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr868:
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop() * this.m_u1.x);
                                                                                                                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr880:
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr839);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr842:
                                                                                                                                                                                                                           §§push(this.m_u1.y);
                                                                                                                                                                                                                           if(_loc28_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr860:
                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                 if(_loc28_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr868);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr880);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr868);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.m_limitState1 = b2internal::4!S;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr790);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr868);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr842);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr795);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr725);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§=9§ = b2internal::4!S;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr834);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr868);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr860);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr689);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.m_u2);
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().§+J§();
                                                                                                                                                                                    if(_loc28_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(false)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.m_u1);
                                                                                                                                                                                             addr652:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().§9""§(1 / _loc18_);
                                                                                                                                                                                                addr656:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop12;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr650:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr628);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr657);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr624);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr624);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr676);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(this.§2z§);
                                                                                                                                                                     if(_loc27_ && _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr676);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr656);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr652);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr650);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr676);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr689);
                                                                                                                                                }
                                                                                                                                                §§goto(addr656);
                                                                                                                                             }
                                                                                                                                             §§goto(addr564);
                                                                                                                                          }
                                                                                                                                          §§goto(addr570);
                                                                                                                                       }
                                                                                                                                       §§goto(addr527);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr570);
                                                                                                                              }
                                                                                                                              §§goto(addr487);
                                                                                                                           }
                                                                                                                           §§goto(addr467);
                                                                                                                        }
                                                                                                                        §§goto(addr410);
                                                                                                                     }
                                                                                                                     §§goto(addr398);
                                                                                                                  }
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr386);
                                                                                                         }
                                                                                                         §§goto(addr331);
                                                                                                      }
                                                                                                      §§goto(addr386);
                                                                                                   }
                                                                                                   §§goto(addr331);
                                                                                                }
                                                                                                §§goto(addr341);
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr382);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc28_)
                                                                              {
                                                                              }
                                                                              §§goto(addr386);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr370);
                                                      }
                                                      §§goto(addr188);
                                                   }
                                                }
                                                §§goto(addr187);
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr159);
                                    }
                                 }
                                 §§goto(addr187);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc28_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr122);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr64);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc4_:b2Mat22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc2_:b2Body = b2internal::&A;
         var _loc3_:b2Body = b2internal::4!d;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc22_ || param1)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc22_)
            {
               addr70:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc22_ || _loc3_)
            {
               §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
               if(!_loc21_)
               {
                  addr89:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc4_.col1.x);
               if(_loc22_ || _loc3_)
               {
                  §§push(_loc5_);
                  if(_loc22_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc22_ || this)
                     {
                        §§push(_loc4_.col2.x);
                        if(!(_loc21_ && this))
                        {
                           addr122:
                           §§push(§§pop() * _loc6_);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc21_ && this))
                        {
                           addr132:
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        if(!_loc21_)
                        {
                           §§push(_loc4_.col1.y);
                           if(_loc22_)
                           {
                              §§push(_loc5_);
                              if(!(_loc21_ && param1))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc21_ && _loc3_))
                                 {
                                    §§push(_loc4_.col2.y);
                                    if(!(_loc21_ && _loc3_))
                                    {
                                       addr169:
                                       §§push(§§pop() + §§pop() * _loc6_);
                                       if(_loc22_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc22_ || this)
                                          {
                                             addr180:
                                             _loc6_ = §§pop();
                                             addr193:
                                             if(!_loc21_)
                                             {
                                                §§push(_loc7_);
                                                if(!(_loc21_ && _loc2_))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             _loc4_ = _loc3_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(!_loc21_)
                                             {
                                                §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                if(_loc22_ || param1)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(!(_loc21_ && this))
                                             {
                                                §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                if(_loc22_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc9_:* = §§pop();
                                             if(_loc22_ || _loc3_)
                                             {
                                                §§push(_loc4_.col1);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr2249:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      addr2250:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr2251:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.col2);
                                                            addr2253:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr2254:
                                                               while(true)
                                                               {
                                                                  §§push(_loc9_);
                                                                  addr2255:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr2256:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr2257:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr2258:
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = §§pop();
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
                                             }
                                             §§goto(addr1622);
                                          }
                                       }
                                    }
                                    §§goto(addr169);
                                 }
                                 _loc5_ = §§pop();
                                 §§goto(addr193);
                              }
                              §§goto(addr169);
                           }
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr122);
               }
               §§goto(addr132);
            }
            §§goto(addr89);
         }
         §§goto(addr70);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc25_:Boolean = false;
         var _loc26_:Boolean = true;
         var _loc4_:b2Mat22 = null;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc2_:b2Body = b2internal::&A;
         var _loc3_:b2Body = b2internal::4!d;
         §§push(this.§;j§.m_xf.position.x);
         if(_loc26_ || this)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(_loc26_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.§;j§.m_xf.position.y);
         if(!_loc25_)
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(!(_loc25_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§;j§.m_xf.position.x);
         if(!(_loc25_ && param1))
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc26_)
            {
               addr119:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(this.§;j§.m_xf.position.y);
            if(!(_loc25_ && this))
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(!(_loc25_ && this))
               {
                  addr144:
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(0);
               if(!(_loc25_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc24_:* = §§pop();
               if(!_loc25_)
               {
                  §§push(this.§=9§);
                  if(!_loc25_)
                  {
                     if(§§pop() == b2internal::4!S)
                     {
                        if(!_loc25_)
                        {
                           §§push(_loc2_.m_xf);
                           if(!_loc25_)
                           {
                              §§push(§§pop().R);
                              if(_loc26_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc26_ || _loc2_)
                                 {
                                    §§push(this.m_localAnchor1);
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr393:
                                       while(true)
                                       {
                                          §§push(_loc2_.m_sweep);
                                          addr395:
                                          while(true)
                                          {
                                             §§push(§§pop().localCenter);
                                             addr396:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr397:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   addr398:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr399:
                                                      while(true)
                                                      {
                                                         _loc9_ = §§pop();
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr2574);
                           }
                           §§goto(addr1707);
                        }
                        §§goto(addr1698);
                     }
                     §§goto(addr1690);
                  }
                  §§goto(addr1694);
               }
               §§goto(addr2574);
            }
            §§goto(addr144);
         }
         §§goto(addr119);
      }
   }
}
