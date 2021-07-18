package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Math;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §!q§:Number = 2.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §!q§ = 2;
         }
      }
      
      private var §,!E§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §1v§:Number;
      
      private var §6!q§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §-!]§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §5!i§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §";§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && param1))
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
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
                           loop5:
                           while(true)
                           {
                              super(param1);
                              loop6:
                              while(true)
                              {
                                 this.§,!E§ = b2internal::+d.m_world.m_groundBody;
                                 while(true)
                                 {
                                    §§push(this.m_groundAnchor1);
                                    while(true)
                                    {
                                       §§push(param1.§%S§);
                                       addr361:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc6_ || this)
                                          {
                                             §§push(this.§,!E§);
                                             while(true)
                                             {
                                                §§push(§§pop().m_xf);
                                                addr372:
                                                addr326:
                                                while(true)
                                                {
                                                   §§push(§§pop().position);
                                                   addr373:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr374:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                   }
                                                }
                                                §§push(this.§,!E§);
                                                if(!(_loc6_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop().m_xf);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§push(§§pop().position);
                                                   if(!_loc5_)
                                                   {
                                                      addr375:
                                                      §§push(§§pop().y);
                                                      if(!_loc5_)
                                                      {
                                                         addr350:
                                                         §§pop().y = §§pop() - §§pop();
                                                         loop16:
                                                         while(_loc6_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(this.m_groundAnchor2);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(param1.§41§);
                                                               addr286:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr287:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§,!E§);
                                                                     addr289:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().m_xf);
                                                                        addr290:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().position);
                                                                           addr291:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr292:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 addr293:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr294:
                                                                                    while(!_loc5_)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    continue loop16;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                      §§goto(addr374);
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         §§goto(addr376);
                                                      }
                                                      addr375:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr373);
                                                   }
                                                   §§goto(addr374);
                                                }
                                                else
                                                {
                                                   §§goto(addr372);
                                                }
                                             }
                                          }
                                          §§goto(addr375);
                                       }
                                       §§push(this.m_groundAnchor1);
                                       if(_loc5_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§push(param1.§%S§);
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(§§pop().y);
                                          if(!_loc5_)
                                          {
                                             if(_loc6_ || this)
                                             {
                                                §§goto(addr326);
                                             }
                                             §§goto(addr375);
                                          }
                                          §§goto(addr350);
                                       }
                                       §§goto(addr361);
                                    }
                                    addr151:
                                    if(!(_loc6_ || param1))
                                    {
                                       continue;
                                    }
                                    if(!_loc6_)
                                    {
                                       continue loop4;
                                    }
                                    §§push(this);
                                    §§push(b2Math);
                                    §§push(param1.§"W§);
                                    §§push(this.§1v§);
                                    if(_loc6_ || this)
                                    {
                                       §§push(this.§6!q§);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§push(§§pop() * b2internal::!q);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().m_maxLength1 = §§pop().§+"1§(§§pop(),§§pop());
                                    while(!_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(this);
                                       §§push(b2Math);
                                       §§push(param1.§?"0§);
                                       §§push(this.§1v§);
                                       if(_loc6_)
                                       {
                                          §§push(b2internal::!q);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc6_ || _loc3_)
                                             {
                                                addr95:
                                                §§push(§§pop() / this.§6!q§);
                                             }
                                             §§pop().m_maxLength2 = §§pop().§+"1§(§§pop(),§§pop());
                                             loop33:
                                             while(!_loc5_)
                                             {
                                                this.§5!i§ = 0;
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop33;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr149:
                                                   while(_loc6_)
                                                   {
                                                      §§goto(addr151);
                                                   }
                                                   §§goto(addr187);
                                                }
                                                continue loop3;
                                             }
                                             continue;
                                          }
                                       }
                                       §§goto(addr95);
                                    }
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(param1.§`Y§);
                                       if(_loc6_)
                                       {
                                          §§push(this.§6!q§);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() * param1.§>`§);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().§1v§ = §§pop();
                                       §§goto(addr149);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(_loc6_ || param1)
                     {
                        while(true)
                        {
                           this.§6!q§ = param1.§+"2§;
                           §§goto(addr166);
                        }
                        §§goto(addr49);
                     }
                  }
               }
            }
         }
         §§goto(addr180);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+d.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§5!i§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && _loc2_))
               {
                  §§push(this.m_u2.x);
                  if(_loc2_ || this)
                  {
                     addr58:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(this.§5!i§);
                        if(!_loc3_)
                        {
                           §§goto(addr82);
                        }
                        §§push(§§pop() * §§pop());
                     }
                  }
                  addr82:
                  §§push(§§pop() * §§pop());
                  if(_loc2_)
                  {
                     §§push(this.m_u2.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §,!e§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§,!E§.m_xf.position.Copy();
         if(_loc3_)
         {
            _loc1_.§<!n§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §?"&§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§,!E§.m_xf.position.Copy();
         if(_loc3_)
         {
            _loc1_.§<!n§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::+d.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§,!E§.m_xf.position.x);
         if(!(_loc7_ && this))
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§,!E§.m_xf.position.y);
         if(_loc6_ || _loc1_)
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(_loc6_)
            {
               addr70:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() - _loc2_);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(!(_loc7_ && this))
            {
               §§push(§§pop() - _loc3_);
               if(!_loc7_)
               {
                  addr100:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr100);
         }
         §§goto(addr70);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::"!l.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§,!E§.m_xf.position.x);
         if(_loc7_ || this)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(!(_loc6_ && _loc2_))
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§,!E§.m_xf.position.y);
            if(_loc7_ || _loc2_)
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(_loc7_ || this)
            {
               §§push(§§pop() - _loc2_);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() - _loc3_);
               if(_loc7_ || this)
               {
                  addr111:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr111);
         }
         §§goto(addr46);
      }
      
      public function § !k§() : Number
      {
         return this.§6!q§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:* = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         _loc2_ = b2internal::+d;
         _loc3_ = b2internal::"!l;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc28_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc27_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!(_loc28_ && _loc3_))
         {
            §§push(this.m_localAnchor1.y);
            if(_loc27_)
            {
               §§push(_loc2_.m_sweep.localCenter.y);
               if(!_loc28_)
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc28_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                     if(_loc27_ || this)
                     {
                        addr99:
                        _loc6_ = §§pop();
                        §§push(_loc4_.col1.x);
                        if(!(_loc28_ && param1))
                        {
                           §§push(_loc5_);
                           if(_loc27_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc27_)
                              {
                                 addr121:
                                 §§push(_loc4_.col2.x);
                                 if(!(_loc28_ && _loc3_))
                                 {
                                    addr133:
                                    §§push(§§pop() + §§pop() * _loc6_);
                                    if(_loc27_ || this)
                                    {
                                       addr141:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr133);
                              }
                              var _loc7_:* = §§pop();
                              if(!_loc28_)
                              {
                                 §§push(_loc4_.col1.y);
                                 if(!_loc28_)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc28_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc28_ && this))
                                       {
                                          §§push(_loc4_.col2.y);
                                          if(_loc27_)
                                          {
                                             addr166:
                                             §§push(§§pop() * _loc6_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc27_)
                                          {
                                             addr171:
                                             §§push(Number(§§pop()));
                                             if(!_loc28_)
                                             {
                                                _loc6_ = §§pop();
                                                if(!_loc28_)
                                                {
                                                   addr177:
                                                   §§push(_loc7_);
                                                   if(_loc27_)
                                                   {
                                                      addr181:
                                                      _loc5_ = Number(§§pop());
                                                   }
                                                   §§goto(addr181);
                                                }
                                                _loc4_ = _loc3_.m_xf.R;
                                                §§push(this.m_localAnchor2.x);
                                                if(_loc27_ || param1)
                                                {
                                                   §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                   if(!_loc28_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc8_:* = §§pop();
                                                §§push(this.m_localAnchor2.y);
                                                if(!(_loc28_ && _loc3_))
                                                {
                                                   §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                   if(_loc27_ || _loc3_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc9_:* = §§pop();
                                                if(_loc27_)
                                                {
                                                   §§push(_loc4_.col1);
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!_loc28_)
                                                      {
                                                         §§push(_loc8_);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr335:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.col2);
                                                               addr337:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr338:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     addr339:
                                                                     addr372:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc27_ || param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc28_ && _loc3_)
                                                                           {
                                                                              addr381:
                                                                              var _loc10_:* = §§pop();
                                                                              §§push(_loc2_.m_sweep.c.y);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 §§push(§§pop() + _loc6_);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc11_:* = §§pop();
                                                                              §§push(_loc3_.m_sweep.c.x);
                                                                              if(_loc27_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() + _loc8_);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    addr409:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc12_:* = §§pop();
                                                                                 §§push(_loc3_.m_sweep.c.y);
                                                                                 if(_loc27_ || this)
                                                                                 {
                                                                                    §§push(§§pop() + _loc9_);
                                                                                    if(_loc27_ || this)
                                                                                    {
                                                                                       addr431:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(this.§,!E§.m_xf.position.x);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(§§pop() + this.m_groundAnchor1.x);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc14_:* = §§pop();
                                                                                    §§push(this.§,!E§.m_xf.position.y);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(§§pop() + this.m_groundAnchor1.y);
                                                                                       if(!(_loc28_ && _loc2_))
                                                                                       {
                                                                                          addr466:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc15_:* = §§pop();
                                                                                       §§push(this.§,!E§.m_xf.position.x);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          §§push(§§pop() + this.m_groundAnchor2.x);
                                                                                          if(!(_loc28_ && this))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc16_:* = §§pop();
                                                                                       §§push(this.§,!E§.m_xf.position.y);
                                                                                       if(_loc27_ || this)
                                                                                       {
                                                                                          §§push(§§pop() + this.m_groundAnchor2.y);
                                                                                          if(!(_loc28_ && _loc3_))
                                                                                          {
                                                                                             addr511:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc17_:* = §§pop();
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(this.m_u1);
                                                                                             if(!(_loc28_ && _loc2_))
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   §§push(_loc14_);
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      addr531:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      §§push(_loc11_);
                                                                                                      if(_loc27_ || param1)
                                                                                                      {
                                                                                                         addr539:
                                                                                                         §§push(§§pop() - _loc15_);
                                                                                                      }
                                                                                                      §§pop().Set(§§pop(),§§pop());
                                                                                                      if(_loc27_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(this.m_u2);
                                                                                                         §§push(_loc12_);
                                                                                                         if(!(_loc28_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(_loc16_);
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               addr563:
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               §§push(_loc13_);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - _loc17_);
                                                                                                               }
                                                                                                            }
                                                                                                            §§pop().Set(§§pop(),§§pop());
                                                                                                            addr569:
                                                                                                            §§push(this.m_u1.§?!]§());
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc18_:* = §§pop();
                                                                                                            §§push(this.m_u2.§?!]§());
                                                                                                            if(!(_loc28_ && this))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc19_:* = §§pop();
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               §§push(_loc18_);
                                                                                                               loop12:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(b2Settings.b2_linearSlop);
                                                                                                                  if(_loc27_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(§§pop() <= §§pop())
                                                                                                                     {
                                                                                                                        §§push(this.m_u1);
                                                                                                                        if(!(_loc28_ && param1))
                                                                                                                        {
                                                                                                                           §§pop().§?b§();
                                                                                                                           loop13:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc28_)
                                                                                                                              {
                                                                                                                                 if(_loc28_ && this)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.m_u1);
                                                                                                                                       addr676:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().§7H§(1 / _loc18_);
                                                                                                                                          addr680:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr674:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc19_);
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(b2Settings.b2_linearSlop);
                                                                                                                                       if(!(_loc28_ && this))
                                                                                                                                       {
                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc27_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                                addr635:
                                                                                                                                                this.m_u2.§7H§(1 / _loc19_);
                                                                                                                                             }
                                                                                                                                             addr681:
                                                                                                                                             §§push(this.§1v§);
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc18_);
                                                                                                                                                if(_loc27_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc27_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§6!q§);
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * _loc19_);
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc28_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         break loop12;
                                                                                                                                                      }
                                                                                                                                                      break loop12;
                                                                                                                                                   }
                                                                                                                                                   addr718:
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   break loop12;
                                                                                                                                                }
                                                                                                                                                break loop12;
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                             addr639:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(this.m_u2);
                                                                                                                                             if(_loc27_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§pop().§?b§();
                                                                                                                                                if(!_loc28_)
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr639);
                                                                                                                                                }
                                                                                                                                                §§goto(addr681);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr635);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr635);
                                                                                                                                       }
                                                                                                                                       break loop12;
                                                                                                                                    }
                                                                                                                                    continue loop12;
                                                                                                                                 }
                                                                                                                                 §§goto(addr718);
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              §§goto(addr680);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr676);
                                                                                                                     }
                                                                                                                     §§goto(addr674);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               var _loc20_:* = §§pop();
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     if(§§pop() > §§pop())
                                                                                                                     {
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           this.§";§ = b2internal::^#;
                                                                                                                           if(!_loc28_)
                                                                                                                           {
                                                                                                                              this.§5!i§ = 0;
                                                                                                                           }
                                                                                                                           loop17:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr811:
                                                                                                                              loop18:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc18_);
                                                                                                                                 if(_loc27_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(this.m_maxLength1);
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() >= §§pop())
                                                                                                                                       {
                                                                                                                                          this.m_limitState1 = b2internal::!"7;
                                                                                                                                          loop19:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             loop20:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc19_);
                                                                                                                                                if(!(_loc28_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(this.m_maxLength2);
                                                                                                                                                   if(!(_loc28_ && this))
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                         {
                                                                                                                                                            this.m_limitState2 = b2internal::!"7;
                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc28_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     loop26:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        this.m_limitImpulse2 = 0;
                                                                                                                                                                        addr760:
                                                                                                                                                                        while(_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop26;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop19;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc27_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop20;
                                                                                                                                                                           }
                                                                                                                                                                           addr810:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.m_u1.y);
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        addr866:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc27_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           break loop20;
                                                                                                                                                                        }
                                                                                                                                                                        break loop18;
                                                                                                                                                                     }
                                                                                                                                                                     addr877:
                                                                                                                                                                     §§push(§§pop() - §§pop() * this.m_u1.x);
                                                                                                                                                                     if(_loc27_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr889:
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        break loop18;
                                                                                                                                                                     }
                                                                                                                                                                     break loop18;
                                                                                                                                                                  }
                                                                                                                                                                  break loop20;
                                                                                                                                                               }
                                                                                                                                                               addr791:
                                                                                                                                                               if(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     this.m_limitState2 = b2internal::^#;
                                                                                                                                                                     §§goto(addr798);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        this.m_limitState1 = b2internal::^#;
                                                                                                                                                                     }
                                                                                                                                                                     addr835:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop17;
                                                                                                                                                               }
                                                                                                                                                               continue loop18;
                                                                                                                                                               §§goto(addr798);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr760);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr791);
                                                                                                                                                      }
                                                                                                                                                      addr790:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr877);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             §§goto(addr877);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr835);
                                                                                                                                    }
                                                                                                                                    §§goto(addr866);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              var _loc21_:* = §§pop();
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(!(_loc28_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(this.m_u2.y);
                                                                                                                                 if(!(_loc28_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(!(_loc28_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr920:
                                                                                                                                          §§push(§§pop() * this.m_u2.x);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(_loc27_ || this)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr933:
                                                                                                                                       var _loc22_:* = §§pop();
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(this);
                                                                                                                                          §§push(_loc2_.§@"!§);
                                                                                                                                          if(_loc27_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc2_.§=!N§);
                                                                                                                                             if(_loc27_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(_loc21_);
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   addr1671:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc28_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr1669:
                                                                                                                                                      §§push(§§pop() * _loc21_);
                                                                                                                                                   }
                                                                                                                                                   §§pop().m_limitMass1 = §§pop() + §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this);
                                                                                                                                                      §§push(_loc3_.§@"!§);
                                                                                                                                                      if(!(_loc28_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_.§=!N§);
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                            if(_loc27_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr1625:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!(_loc28_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                               }
                                                                                                                                                               §§pop().m_limitMass2 = §§pop() + §§pop();
                                                                                                                                                               loop30:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(this.m_limitMass1);
                                                                                                                                                                  if(!(_loc28_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§6!q§);
                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§6!q§);
                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1590:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1588:
                                                                                                                                                                              §§push(§§pop() * this.m_limitMass2);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§-!]§ = §§pop() + §§pop();
                                                                                                                                                                           loop31:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              this.m_limitMass1 = 1 / this.m_limitMass1;
                                                                                                                                                                              loop32:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 this.m_limitMass2 = 1 / this.m_limitMass2;
                                                                                                                                                                                 addr1555:
                                                                                                                                                                                 loop33:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§-!]§ = 1 / this.§-!]§;
                                                                                                                                                                                    addr1547:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(param1.§@!D§)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                             §§push(this.§5!i§);
                                                                                                                                                                                             if(!(_loc28_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * param1.§class§);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().§5!i§ = §§pop();
                                                                                                                                                                                             continue loop32;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1518:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§5!i§ = 0;
                                                                                                                                                                                          while(!(_loc28_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop31;
                                                                                                                                                                                          }
                                                                                                                                                                                          loop89:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                             §§push(_loc3_.m_angularVelocity);
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_.§=!N§);
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc26_);
                                                                                                                                                                                                      if(_loc27_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1037:
                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1032:
                                                                                                                                                                                                               §§push(§§pop() * _loc25_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                            while(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop61:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc28_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc3_.§]!g§);
                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc3_.§]!g§);
                                                                                                                                                                                                                           if(!(_loc28_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                              if(!(_loc28_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc3_.§@"!§);
                                                                                                                                                                                                                                          if(_loc27_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc26_);
                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc27_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1110:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            loop71:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop64:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     loop65:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                                                                        addr1250:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop30;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc2_);
                                                                                                                                                                                                                                                                           §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc2_.§=!N§);
                                                                                                                                                                                                                                                                              if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                 if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc24_);
                                                                                                                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(_loc27_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1230:
                                                                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                                                                          if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1227:
                                                                                                                                                                                                                                                                                             §§push(§§pop() * _loc23_);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(_loc3_.§]!g§);
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc3_.§]!g§);
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc27_ || this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop65;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc3_.§@"!§);
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc25_);
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop71;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1174:
                                                                                                                                                                                                                                                                                                                              §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                                              addr1173:
                                                                                                                                                                                                                                                                                                                              continue loop61;
                                                                                                                                                                                                                                                                                                                              addr1170:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           loop69:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                              addr1262:
                                                                                                                                                                                                                                                                                                                              loop62:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 addr1263:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    addr1264:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                       addr1265:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc28_ && param1)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop32;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§push(_loc2_.§]!g§);
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc2_.§]!g§);
                                                                                                                                                                                                                                                                                                                                             addr1241:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                addr1242:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc2_.§@"!§);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop69;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1259:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop62;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                           addr1247:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop64;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1155:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1242);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1139:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1258:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1259);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1241);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1129:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1256:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1258);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1239);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1233:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1230);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1227);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1230);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1173);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1262);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1247);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1170);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1263);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1155);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1110);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1264);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1139);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1174);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1129);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1118);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1265);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1250);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                               continue loop89;
                                                                                                                                                                                                               §§goto(addr1037);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr937:
                                                                                                                                                                                                            return;
                                                                                                                                                                                                            addr1038:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1037);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1032);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1037);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr985:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop31;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1588);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1590);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1625);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1669);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1671);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1555);
                                                                                                                                    }
                                                                                                                                    §§goto(addr933);
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 §§goto(addr920);
                                                                                                                              }
                                                                                                                              §§goto(addr933);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        this.§";§ = b2internal::!"7;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr811);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr790);
                                                                                                               }
                                                                                                               §§goto(addr889);
                                                                                                            }
                                                                                                            §§goto(addr680);
                                                                                                         }
                                                                                                         §§goto(addr563);
                                                                                                      }
                                                                                                      §§goto(addr569);
                                                                                                   }
                                                                                                   §§goto(addr539);
                                                                                                }
                                                                                                §§goto(addr531);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr569);
                                                                                       }
                                                                                       §§goto(addr511);
                                                                                    }
                                                                                    §§goto(addr466);
                                                                                 }
                                                                                 §§goto(addr431);
                                                                              }
                                                                              §§goto(addr409);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr372:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc27_ || param1)
                                                                     {
                                                                        addr380:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr381);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr334:
                                                      }
                                                      while(true)
                                                      {
                                                         _loc7_ = §§pop();
                                                         while(true)
                                                         {
                                                            continue loop0;
                                                            addr259:
                                                            if(_loc28_ && _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            if(false)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(_loc2_.m_sweep.c.x);
                                                            if(!(_loc28_ && _loc2_))
                                                            {
                                                               addr371:
                                                               §§goto(addr372);
                                                               §§push(_loc5_);
                                                            }
                                                            §§goto(addr380);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr327);
                                             }
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr133);
                        }
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr99);
               }
               §§goto(addr133);
            }
            §§goto(addr121);
         }
         §§goto(addr99);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
