package §_-09-§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §_-nC§:Number = 2.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-nC§ = 2;
         }
      }
      
      private var §_-mj§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §_-gl§:Number;
      
      private var §_-I1§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §_-7T§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §_-MK§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §_-cv§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && _loc2_))
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
                              loop26:
                              while(true)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(this.m_groundAnchor2);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(param1.§_-qx§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop().y);
                                          if(_loc5_ || param1)
                                          {
                                             §§push(this.§_-mj§);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop().m_xf);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop().position);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop().y);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         addr259:
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§pop().y = §§pop();
                                                               loop27:
                                                               while(!_loc6_)
                                                               {
                                                                  addr271:
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr379:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.m_groundAnchor1);
                                                                     addr362:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.§_-Z6§);
                                                                        addr364:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr365:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§_-mj§);
                                                                              addr367:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().m_xf);
                                                                                 addr368:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().position);
                                                                                    addr369:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr370:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          addr371:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             break loop27;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        break loop27;
                                                                     }
                                                                     §§goto(addr271);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.m_groundAnchor1);
                                                                  if(_loc6_ && _loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(param1.§_-Z6§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(this.§_-mj§);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§§pop().m_xf);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(§§pop().position);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       addr350:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.m_groundAnchor2);
                                                                                             break loop26;
                                                                                             addr62:
                                                                                             if(!(_loc6_ && this))
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   this.m_limitImpulse2 = 0;
                                                                                                   addr71:
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                   loop35:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr53:
                                                                                                         if(_loc6_ && _loc3_)
                                                                                                         {
                                                                                                            addr144:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc5_ || param1))
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               §§push(this);
                                                                                                               §§push(b2Math);
                                                                                                               §§push(param1.§_-Np§);
                                                                                                               §§push(this.§_-gl§);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§push(b2internal::_-nC);
                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr107:
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§push(this.§_-I1§);
                                                                                                                     }
                                                                                                                     §§pop().m_maxLength2 = §§pop().§_-fa§(§§pop(),§§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        addr217:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.m_localAnchor2.SetV(param1.§_-0Bf§);
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        addr76:
                                                                                                                        while(_loc5_ || _loc3_)
                                                                                                                        {
                                                                                                                           this.m_limitImpulse1 = 0;
                                                                                                                           continue loop35;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr269);
                                                                                                                     addr109:
                                                                                                                  }
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                               }
                                                                                                               §§goto(addr107);
                                                                                                               §§goto(addr53);
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                            addr144:
                                                                                                         }
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            loop31:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               addr184:
                                                                                                               loop30:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(param1.§_-i§);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§push(this.§_-I1§);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * param1.§_-92§);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                     §§pop().§_-gl§ = §§pop();
                                                                                                                     continue loop31;
                                                                                                                  }
                                                                                                                  addr384:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§_-mj§ = b2internal::_-0FB.m_world.m_groundBody;
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         §§goto(addr62);
                                                                                                         §§goto(addr379);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr76);
                                                                                                      }
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr370);
                                                                                    }
                                                                                    §§goto(addr371);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr369);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr368);
                                                                              }
                                                                              §§goto(addr369);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr367);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr365);
                                                                        }
                                                                        §§goto(addr367);
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr364);
                                                                  }
                                                               }
                                                               addr269:
                                                               §§goto(addr362);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§_-mj§);
                                                               addr294:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().m_xf);
                                                                  addr295:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().position);
                                                                     addr296:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr297:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr292:
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop26;
                                                         }
                                                      }
                                                      §§goto(addr297);
                                                   }
                                                   §§goto(addr296);
                                                }
                                                §§goto(addr295);
                                             }
                                             §§goto(addr294);
                                          }
                                          §§goto(addr259);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr292);
                                       }
                                       addr291:
                                    }
                                    break;
                                    addr306:
                                 }
                                 continue loop5;
                              }
                              while(true)
                              {
                                 §§goto(addr291);
                                 §§goto(addr306);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr384);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-0FB.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-c9.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && param1))
         {
            §§push(this.§_-MK§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || _loc3_)
               {
                  addr47:
                  §§push(this.m_u2.x);
                  if(_loc2_ || _loc2_)
                  {
                     addr68:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_ || _loc2_)
                     {
                     }
                     §§goto(addr87);
                  }
                  §§push(this.§_-MK§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc2_)
                     {
                        §§push(this.m_u2.y);
                     }
                     §§goto(addr87);
                  }
                  addr87:
                  return new §§pop().b2Vec2(§§pop(),§§pop());
                  §§push(§§pop() * §§pop());
               }
            }
            §§goto(addr68);
         }
         §§goto(addr47);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-qK§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§_-mj§.m_xf.position.Copy();
         if(_loc3_)
         {
            _loc1_.§_-M6§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §_-zV§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§_-mj§.m_xf.position.Copy();
         if(!_loc3_)
         {
            _loc1_.§_-M6§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::_-0FB.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§_-mj§.m_xf.position.x);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!_loc7_)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§_-mj§.m_xf.position.y);
            if(!(_loc7_ && _loc1_))
            {
               §§push(§§pop() + this.m_groundAnchor1.y);
               if(_loc6_)
               {
                  addr70:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_.x);
               if(!_loc7_)
               {
                  §§push(§§pop() - _loc2_);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(!(_loc7_ && _loc2_))
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
            §§goto(addr70);
         }
         §§goto(addr40);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::_-c9.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§_-mj§.m_xf.position.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§_-mj§.m_xf.position.y);
         if(!(_loc6_ && _loc1_))
         {
            §§push(§§pop() + this.m_groundAnchor2.y);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_.x);
         if(_loc7_)
         {
            §§push(§§pop() - _loc2_);
            if(_loc7_)
            {
               addr86:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() - _loc3_);
               if(_loc7_)
               {
                  addr101:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr101);
         }
         §§goto(addr86);
      }
      
      public function §_-0Bg§() : Number
      {
         return this.§_-I1§;
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
         _loc2_ = b2internal::_-0FB;
         _loc3_ = b2internal::_-c9;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc27_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc28_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc27_)
         {
            §§push(this.m_localAnchor1.y);
            if(_loc27_ || param1)
            {
               §§push(_loc2_.m_sweep.localCenter.y);
               if(!(_loc28_ && param1))
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc28_)
                  {
                     addr86:
                     §§push(Number(§§pop()));
                     if(_loc27_ || _loc2_)
                     {
                        _loc6_ = §§pop();
                        addr95:
                        §§push(_loc4_.col1.x);
                        if(_loc27_)
                        {
                           §§push(_loc5_);
                           if(_loc27_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc27_)
                              {
                                 addr111:
                                 §§push(_loc4_.col2.x);
                                 if(_loc27_ || _loc2_)
                                 {
                                    addr121:
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc27_ || _loc2_)
                                 {
                                    addr131:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 if(!(_loc28_ && _loc3_))
                                 {
                                    §§push(_loc4_.col1.y);
                                    if(_loc27_)
                                    {
                                       §§push(_loc5_);
                                       if(_loc27_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc27_)
                                          {
                                             addr151:
                                             §§push(_loc4_.col2.y);
                                             if(_loc27_ || _loc3_)
                                             {
                                                addr163:
                                                §§push(§§pop() + §§pop() * _loc6_);
                                                if(_loc27_ || _loc2_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc28_)
                                                   {
                                                      addr174:
                                                      _loc6_ = §§pop();
                                                      addr187:
                                                      if(!_loc28_)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!(_loc28_ && this))
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      _loc4_ = _loc3_.m_xf.R;
                                                      §§push(this.m_localAnchor2.x);
                                                      if(!(_loc28_ && _loc2_))
                                                      {
                                                         §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                         if(_loc27_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      §§push(this.m_localAnchor2.y);
                                                      if(!(_loc28_ && this))
                                                      {
                                                         §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                         if(_loc27_ || this)
                                                         {
                                                            addr233:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc9_:* = §§pop();
                                                         if(!(_loc28_ && param1))
                                                         {
                                                            §§push(_loc4_.col1);
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!(_loc28_ && _loc3_))
                                                               {
                                                                  §§push(_loc8_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr372:
                                                                     addr285:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.col2);
                                                                        addr374:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr375:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              addr376:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 addr377:
                                                                                 addr406:
                                                                                 do
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 while(_loc27_ || _loc3_);
                                                                                 
                                                                                 addr405:
                                                                                 var _loc10_:Number = §§pop();
                                                                                 §§push(_loc2_.m_sweep.c.y);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc6_);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       addr417:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc11_:* = §§pop();
                                                                                    §§push(_loc3_.m_sweep.c.x);
                                                                                    if(!(_loc28_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() + _loc8_);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          addr434:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc12_:* = §§pop();
                                                                                       §§push(_loc3_.m_sweep.c.y);
                                                                                       if(!(_loc28_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop() + _loc9_);
                                                                                          if(!(_loc28_ && _loc2_))
                                                                                          {
                                                                                             addr456:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc13_:* = §§pop();
                                                                                          §§push(this.§_-mj§.m_xf.position.x);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(§§pop() + this.m_groundAnchor1.x);
                                                                                             if(_loc27_ || param1)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          var _loc14_:* = §§pop();
                                                                                          §§push(this.§_-mj§.m_xf.position.y);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(§§pop() + this.m_groundAnchor1.y);
                                                                                             if(_loc27_ || _loc2_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          var _loc15_:* = §§pop();
                                                                                          §§push(this.§_-mj§.m_xf.position.x);
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             §§push(§§pop() + this.m_groundAnchor2.x);
                                                                                             if(_loc27_ || _loc3_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          var _loc16_:* = §§pop();
                                                                                          §§push(this.§_-mj§.m_xf.position.y);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(§§pop() + this.m_groundAnchor2.y);
                                                                                             if(_loc27_ || param1)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          var _loc17_:* = §§pop();
                                                                                          if(!(_loc28_ && this))
                                                                                          {
                                                                                             §§push(this.m_u1);
                                                                                             if(_loc27_ || _loc3_)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   §§push(_loc14_);
                                                                                                   if(_loc27_ || param1)
                                                                                                   {
                                                                                                      addr566:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      §§push(_loc11_);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         addr569:
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
                                                                                                            if(_loc27_ || _loc2_)
                                                                                                            {
                                                                                                               addr598:
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               §§push(_loc13_);
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  addr601:
                                                                                                                  §§push(§§pop() - _loc17_);
                                                                                                               }
                                                                                                               §§pop().Set(§§pop(),§§pop());
                                                                                                               §§push(this.m_u1.§_-YT§());
                                                                                                               if(_loc27_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc18_:* = §§pop();
                                                                                                               §§push(this.m_u2.§_-YT§());
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc19_:* = §§pop();
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  §§push(_loc18_);
                                                                                                                  if(!(_loc28_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(b2Settings.b2_linearSlop);
                                                                                                                     if(_loc27_ || param1)
                                                                                                                     {
                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                        {
                                                                                                                           §§push(this.m_u1);
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              §§pop().§_-el§();
                                                                                                                              loop13:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop14:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc19_);
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(b2Settings.b2_linearSlop);
                                                                                                                                       if(_loc27_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() <= §§pop())
                                                                                                                                          {
                                                                                                                                             §§push(this.m_u2);
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                §§pop().§_-el§();
                                                                                                                                                if(!(_loc27_ || this))
                                                                                                                                                {
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                                if(!_loc28_)
                                                                                                                                                {
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      if(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§_-gl§);
                                                                                                                                                         if(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                            if(!(_loc28_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(_loc27_ || param1)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            addr754:
                                                                                                                                                            var _loc20_:* = §§pop();
                                                                                                                                                            if(_loc27_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc28_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        this.§_-cv§ = b2internal::_-019;
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§_-MK§ = 0;
                                                                                                                                                                           loop25:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              loop24:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.m_maxLength1);
                                                                                                                                                                                    loop23:
                                                                                                                                                                                    while(§§pop() < §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       loop19:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc28_ && _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop25;
                                                                                                                                                                                          }
                                                                                                                                                                                          this.m_limitState1 = b2internal::_-019;
                                                                                                                                                                                          loop20:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.m_limitImpulse1 = 0;
                                                                                                                                                                                             loop21:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                loop22:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.m_maxLength2);
                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            loop27:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop22;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.m_limitState2 = b2internal::_-019;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc27_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.m_limitImpulse2 = 0;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr803:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop24;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr898:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr855:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.m_limitState2 = b2internal::_-Z5;
                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop21;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr855);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc27_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop27;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop19;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop20;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr903:
                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                            if(!(_loc28_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr911:
                                                                                                                                                                                                               §§push(this.m_u1.y);
                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr916:
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                     if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * this.m_u1.x);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop19;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop19;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                            addr842:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop23;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr916);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr940:
                                                                                                                                                                                                var _loc21_:* = §§pop();
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.m_u2.y);
                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr960:
                                                                                                                                                                                                            §§push(§§pop() * this.m_u2.x);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr968:
                                                                                                                                                                                                         var _loc22_:* = §§pop();
                                                                                                                                                                                                         if(!(_loc28_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                            §§push(_loc2_.§_-03A§);
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc2_.§_-Dz§);
                                                                                                                                                                                                               if(_loc27_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                  if(_loc27_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1695:
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(_loc27_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().m_limitMass1 = §§pop() + §§pop();
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                        §§push(_loc3_.§_-03A§);
                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc3_.§_-Dz§);
                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                                                                              if(_loc27_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1650:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().m_limitMass2 = §§pop() + §§pop();
                                                                                                                                                                                                                                 loop30:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                                                                    §§push(this.m_limitMass1);
                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§_-I1§);
                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§_-I1§);
                                                                                                                                                                                                                                          if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1624:
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.m_limitMass2);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().§_-7T§ = §§pop() + §§pop();
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.m_limitMass1 = 1 / this.m_limitMass1;
                                                                                                                                                                                                                                                addr1593:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this.m_limitMass2 = 1 / this.m_limitMass2;
                                                                                                                                                                                                                                                   continue loop30;
                                                                                                                                                                                                                                                   addr1078:
                                                                                                                                                                                                                                                   if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr977:
                                                                                                                                                                                                                                                      return;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1626:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1624);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1650);
                                                                                                                                                                                                                        while(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1279);
                                                                                                                                                                                                                           §§push(_loc2_.§_-kZ§);
                                                                                                                                                                                                                           §§goto(addr1382);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1695);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1541);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr968);
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr960);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr968);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    this.m_limitState1 = b2internal::_-Z5;
                                                                                                                                                                                    §§goto(addr869);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr940);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr902:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr852);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr902);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     this.§_-cv§ = b2internal::_-Z5;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr898);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr842);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr911);
                                                                                                                                                         }
                                                                                                                                                         §§push(this.§_-I1§);
                                                                                                                                                         if(_loc27_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr745:
                                                                                                                                                            §§push(§§pop() * _loc19_);
                                                                                                                                                            if(_loc28_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr754);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr716:
                                                                                                                                                      }
                                                                                                                                                      continue;
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr709:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.m_u1);
                                                                                                                                                      addr711:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().§_-mx§(1 / _loc18_);
                                                                                                                                                         addr715:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop14;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr661:
                                                                                                                                                   if(_loc27_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.m_u2);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr715);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr715);
                                                                                                                                             }
                                                                                                                                             §§pop().§_-mx§(1 / _loc19_);
                                                                                                                                             continue loop13;
                                                                                                                                          }
                                                                                                                                          §§goto(addr661);
                                                                                                                                       }
                                                                                                                                       §§goto(addr754);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 addr753:
                                                                                                                                 §§goto(addr754);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr711);
                                                                                                                        }
                                                                                                                        §§goto(addr709);
                                                                                                                     }
                                                                                                                     §§goto(addr745);
                                                                                                                  }
                                                                                                                  §§goto(addr753);
                                                                                                               }
                                                                                                               §§goto(addr715);
                                                                                                            }
                                                                                                            §§goto(addr601);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr598);
                                                                                                   }
                                                                                                   §§goto(addr569);
                                                                                                }
                                                                                                §§goto(addr566);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr598);
                                                                                       }
                                                                                       §§goto(addr456);
                                                                                    }
                                                                                    §§goto(addr434);
                                                                                 }
                                                                                 §§goto(addr417);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     if(!(_loc27_ || _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc27_ || param1)
                                                                     {
                                                                        if(_loc27_ || param1)
                                                                        {
                                                                           §§push(_loc4_.col2);
                                                                           if(_loc27_)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(!(_loc28_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc28_ && this))
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(_loc27_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc27_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc27_ || param1)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             loop11:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc27_ || param1)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc27_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         _loc8_ = §§pop();
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            §§push(_loc2_.m_sweep.c.x);
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               break loop11;
                                                                                                            }
                                                                                                            §§goto(addr405);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr405);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                addr394:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                             addr402:
                                                                                             §§push(§§pop() + _loc5_);
                                                                                             if(!_loc27_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr405);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr402);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr376);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr377);
                                                                              }
                                                                              §§goto(addr402);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr374);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr372);
                                                                        }
                                                                        §§goto(addr374);
                                                                     }
                                                                     §§goto(addr406);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc28_ && this))
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     §§goto(addr394);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr406);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   _loc5_ = §§pop();
                                                   §§goto(addr187);
                                                }
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr174);
                              }
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr111);
               }
               §§goto(addr121);
            }
            §§goto(addr86);
         }
         §§goto(addr95);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
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
         var _loc2_:b2Body = b2internal::_-0FB;
         var _loc3_:b2Body = b2internal::_-c9;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc21_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc22_ && param1))
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc21_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc4_.col1.x);
         if(_loc21_ || _loc3_)
         {
            §§push(_loc5_);
            if(!_loc22_)
            {
               addr127:
               §§push(§§pop() * §§pop());
               if(!(_loc22_ && _loc2_))
               {
                  §§push(_loc4_.col2.x);
                  if(!_loc22_)
                  {
                     §§push(§§pop() * _loc6_);
                  }
               }
               var _loc7_:* = §§pop();
               if(!(_loc22_ && param1))
               {
                  §§push(_loc4_.col1.y);
                  if(!_loc22_)
                  {
                     §§push(_loc5_);
                     if(!_loc22_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc22_ && _loc2_))
                        {
                           §§push(_loc4_.col2.y);
                           if(!_loc22_)
                           {
                              addr156:
                              §§push(§§pop() * _loc6_);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc22_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc22_ && _loc2_))
                              {
                                 addr169:
                                 _loc6_ = §§pop();
                                 if(!_loc22_)
                                 {
                                    addr172:
                                    §§push(_loc7_);
                                    if(!_loc22_)
                                    {
                                       addr176:
                                       _loc5_ = Number(§§pop());
                                    }
                                    §§goto(addr176);
                                 }
                                 _loc4_ = _loc3_.m_xf.R;
                                 §§push(this.m_localAnchor2.x);
                                 if(!_loc22_)
                                 {
                                    §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                    if(!_loc22_)
                                    {
                                       addr194:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(this.m_localAnchor2.y);
                                    if(!_loc22_)
                                    {
                                       §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                       if(!(_loc22_ && _loc2_))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc9_:* = §§pop();
                                    if(!(_loc22_ && _loc2_))
                                    {
                                       §§push(_loc4_.col1);
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr2263:
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             addr2264:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr2265:
                                                while(true)
                                                {
                                                   §§push(_loc4_.col2);
                                                   addr2267:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr2268:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         addr2269:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr2270:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr2271:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr2272:
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
                                    §§goto(addr2128);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr169);
               }
               §§goto(addr172);
            }
            §§push(§§pop() + §§pop());
            if(_loc21_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr127);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc25_:Boolean = false;
         var _loc26_:Boolean = true;
         var _loc4_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
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
         var _loc23_:* = NaN;
         var _loc2_:b2Body = b2internal::_-0FB;
         var _loc3_:b2Body = b2internal::_-c9;
         §§push(this.§_-mj§.m_xf.position.x);
         if(_loc26_ || _loc3_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(_loc26_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.§_-mj§.m_xf.position.y);
         if(_loc26_ || param1)
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(_loc26_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§_-mj§.m_xf.position.x);
         if(_loc26_ || _loc3_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc26_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         §§push(this.§_-mj§.m_xf.position.y);
         if(_loc26_)
         {
            §§push(§§pop() + this.m_groundAnchor2.y);
            if(!_loc25_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         §§push(0);
         if(!(_loc25_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc24_:* = §§pop();
         if(_loc26_)
         {
            §§push(this.§_-cv§);
            if(!_loc25_)
            {
               if(§§pop() == b2internal::_-Z5)
               {
                  if(_loc26_)
                  {
                     addr156:
                     §§push(_loc2_.m_xf);
                     if(!_loc25_)
                     {
                        §§push(§§pop().R);
                        if(!_loc25_)
                        {
                           _loc4_ = §§pop();
                           if(!_loc25_)
                           {
                              §§push(this.m_localAnchor1);
                              loop214:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 if(_loc26_ || this)
                                 {
                                    §§push(_loc2_.m_sweep);
                                    while(true)
                                    {
                                       §§push(§§pop().localCenter);
                                       addr376:
                                       addr346:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr377:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr378:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                       }
                                       §§push(_loc2_.m_sweep);
                                       if(_loc25_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop().localCenter);
                                       if(_loc26_)
                                       {
                                          §§push(§§pop().y);
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr360:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   _loc10_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.col1);
                                                      loop225:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc26_ || _loc3_)
                                                         {
                                                            §§push(_loc9_);
                                                            if(!(_loc25_ && param1))
                                                            {
                                                               addr320:
                                                               §§push(§§pop() * §§pop());
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_.col2);
                                                                  addr322:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!(_loc25_ && _loc2_))
                                                                     {
                                                                        §§push(_loc10_);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        addr331:
                                                                     }
                                                                  }
                                                               }
                                                               addr320:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr333:
                                                               while(_loc26_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     _loc23_ = §§pop();
                                                                     addr337:
                                                                     while(true)
                                                                     {
                                                                        continue loop225;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr378);
                                                            }
                                                            addr332:
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                   }
                                                }
                                             }
                                             if(!(_loc26_ || param1))
                                             {
                                                continue;
                                             }
                                             §§push(_loc10_);
                                             if(_loc26_ || _loc2_)
                                             {
                                                §§goto(addr262);
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§goto(addr331);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr376);
                                       }
                                       §§goto(addr377);
                                    }
                                 }
                                 §§goto(addr379);
                                 while(true)
                                 {
                                    §§push(this.m_localAnchor1);
                                    if(_loc25_)
                                    {
                                       continue loop214;
                                    }
                                    §§push(§§pop().y);
                                    if(_loc26_)
                                    {
                                       §§goto(addr346);
                                    }
                                    §§goto(addr360);
                                 }
                                 §§goto(addr376);
                              }
                           }
                           §§goto(addr337);
                        }
                     }
                     §§goto(addr2574);
                  }
                  §§goto(addr1713);
               }
               §§goto(addr1705);
            }
            §§goto(addr1709);
         }
         §§goto(addr156);
      }
   }
}
