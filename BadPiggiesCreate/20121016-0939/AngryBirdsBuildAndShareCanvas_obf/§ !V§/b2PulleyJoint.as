package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Math;
   import §2"=§.b2Vec2;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §5!,§:Number = 2.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5!,§ = 2;
         }
      }
      
      private var §%2§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §6s§:Number;
      
      private var §?!L§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §]0§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §?;§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §7"%§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && this))
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
                        while(true)
                        {
                           this.m_u2 = new b2Vec2();
                           addr376:
                           while(true)
                           {
                              super(param1);
                              continue loop0;
                           }
                           while(_loc6_ || _loc3_)
                           {
                              addr351:
                              §§push(this.m_groundAnchor1);
                              if(_loc6_)
                              {
                                 §§push(param1.§-+§);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop().y);
                                    if(!(_loc5_ && this))
                                    {
                                       §§push(this.§%2§);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop().m_xf);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop().position);
                                             if(_loc6_ || this)
                                             {
                                                §§push(§§pop().y);
                                                if(_loc6_)
                                                {
                                                   addr306:
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§pop().y = §§pop();
                                                         loop17:
                                                         while(!(_loc5_ && _loc2_))
                                                         {
                                                            continue loop1;
                                                            addr156:
                                                            if(!(_loc6_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            §§push(this);
                                                            §§push(param1.§,q§);
                                                            if(_loc6_)
                                                            {
                                                               §§push(this.§?!L§);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() * param1.§-!k§);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().§6s§ = §§pop();
                                                            loop30:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(b2Math);
                                                               §§push(param1.§;[§);
                                                               §§push(this.§6s§);
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§push(this.§?!L§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§pop() * b2internal::5!,);
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                               }
                                                               §§pop().m_maxLength1 = §§pop().§8L§(§§pop(),§§pop());
                                                               loop31:
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(b2Math);
                                                                  §§push(param1.§1!2§);
                                                                  §§push(this.§6s§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(b2internal::5!,);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr95:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(this.§?!L§);
                                                                        }
                                                                        §§pop().m_maxLength2 = §§pop().§8L§(§§pop(),§§pop());
                                                                        loop32:
                                                                        while(!_loc5_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              this.§?;§ = 0;
                                                                              loop33:
                                                                              while(_loc6_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.m_limitImpulse1 = 0;
                                                                                       do
                                                                                       {
                                                                                          this.m_limitImpulse2 = 0;
                                                                                       }
                                                                                       while(_loc5_ && _loc3_);
                                                                                       
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop33;
                                                                                       }
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop32;
                                                                                       }
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§goto(addr156);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   this.m_localAnchor2.SetV(param1.§ !c§);
                                                                                                   break loop32;
                                                                                                }
                                                                                                addr179:
                                                                                             }
                                                                                          }
                                                                                          continue loop17;
                                                                                          addr154:
                                                                                       }
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          addr269:
                                                                                          §§push(this.m_groundAnchor2);
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             §§push(param1.§'8§);
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(this.§%2§);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop().m_xf);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§pop().position);
                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(_loc6_ || _loc2_)
                                                                                                            {
                                                                                                               addr238:
                                                                                                               §§pop().y = §§pop() - §§pop();
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                            }
                                                                                                            addr264:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            addr266:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().m_xf);
                                                                                                            break loop25;
                                                                                                         }
                                                                                                         addr262:
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr266);
                                                                                                }
                                                                                                §§goto(addr238);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr262);
                                                                                                      §§push(this.§%2§);
                                                                                                   }
                                                                                                }
                                                                                                addr252:
                                                                                             }
                                                                                             §§goto(addr266);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr269);
                                                                                             }
                                                                                             addr250:
                                                                                          }
                                                                                          §§goto(addr252);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr264);
                                                                                       }
                                                                                    }
                                                                                    return;
                                                                                    continue;
                                                                                 }
                                                                                 continue loop30;
                                                                              }
                                                                              continue loop31;
                                                                           }
                                                                           addr358:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.m_groundAnchor1);
                                                                              addr334:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.§-+§);
                                                                                 addr336:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr337:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§%2§);
                                                                                       addr339:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().m_xf);
                                                                                          addr340:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().position);
                                                                                             addr341:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr342:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   addr343:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      break loop17;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr351);
                                                                              }
                                                                           }
                                                                        }
                                                                        while(!_loc5_)
                                                                        {
                                                                           this.§?!L§ = param1.§`x§;
                                                                           §§goto(addr154);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                                  §§goto(addr95);
                                                               }
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr337);
                                                   }
                                                   §§goto(addr343);
                                                }
                                                §§goto(addr342);
                                             }
                                             §§goto(addr341);
                                          }
                                          §§goto(addr340);
                                       }
                                       §§goto(addr339);
                                    }
                                    §§goto(addr306);
                                 }
                                 else
                                 {
                                    §§goto(addr336);
                                 }
                              }
                              else
                              {
                                 §§goto(addr334);
                              }
                              §§goto(addr336);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0"7.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: `.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && param1))
         {
            §§push(this.§?;§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  §§push(this.m_u2.x);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr53);
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr83);
         }
         addr53:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§?;§);
            if(_loc2_ || _loc3_)
            {
               §§goto(addr87);
            }
            §§push(§§pop() * §§pop());
         }
         addr87:
         §§push(§§pop() * §§pop());
         if(_loc2_ || param1)
         {
            addr83:
            §§push(this.m_u2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §?§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§%2§.m_xf.position.Copy();
         if(!_loc3_)
         {
            _loc1_.§1v§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §%C§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§%2§.m_xf.position.Copy();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§1v§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::0"7.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§%2§.m_xf.position.x);
         if(_loc6_ || this)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!(_loc7_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§%2§.m_xf.position.y);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(!_loc7_)
            {
               addr75:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(!_loc7_)
            {
               §§push(§§pop() - _loc2_);
               if(!_loc7_)
               {
                  addr85:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(_loc6_)
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
            §§goto(addr85);
         }
         §§goto(addr75);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal:: `.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§%2§.m_xf.position.x);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc6_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§%2§.m_xf.position.y);
         if(_loc6_ || this)
         {
            §§push(§§pop() + this.m_groundAnchor2.y);
            if(_loc6_ || _loc3_)
            {
               addr80:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(!(_loc7_ && this))
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
               if(!_loc7_)
               {
                  addr110:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr110);
         }
         §§goto(addr80);
      }
      
      public function §#8§() : Number
      {
         return this.§?!L§;
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
         var _loc26_:Number = NaN;
         _loc2_ = b2internal::0"7;
         _loc3_ = b2internal:: `;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc28_ || _loc3_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc28_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc28_)
         {
            §§push(this.m_localAnchor1.y);
            if(_loc28_ || param1)
            {
               §§push(_loc2_.m_sweep.localCenter.y);
               if(!(_loc27_ && param1))
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc27_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc27_)
                     {
                        _loc6_ = §§pop();
                        addr106:
                        §§push(_loc4_.col1.x);
                        if(_loc28_)
                        {
                           addr111:
                           §§push(_loc5_);
                           if(!_loc27_)
                           {
                              addr114:
                              §§push(§§pop() * §§pop());
                              if(!_loc27_)
                              {
                                 addr117:
                                 §§push(_loc4_.col2.x);
                                 if(_loc28_ || _loc3_)
                                 {
                                    addr127:
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc27_)
                                 {
                                    addr133:
                                    var _loc7_:* = Number(§§pop());
                                    if(!_loc27_)
                                    {
                                       §§push(_loc4_.col1.y);
                                       if(!(_loc27_ && _loc2_))
                                       {
                                          §§push(_loc5_);
                                          if(_loc28_ || _loc2_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc28_ || this)
                                             {
                                                §§push(_loc4_.col2.y);
                                                if(_loc28_ || this)
                                                {
                                                   addr174:
                                                   §§push(§§pop() + §§pop() * _loc6_);
                                                   if(!(_loc27_ && _loc3_))
                                                   {
                                                      addr182:
                                                      §§push(Number(§§pop()));
                                                      if(_loc28_ || this)
                                                      {
                                                         _loc6_ = §§pop();
                                                         addr203:
                                                         if(_loc28_ || param1)
                                                         {
                                                            §§push(_loc7_);
                                                            if(!_loc27_)
                                                            {
                                                               addr201:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         _loc4_ = _loc3_.m_xf.R;
                                                         §§push(this.m_localAnchor2.x);
                                                         if(_loc28_)
                                                         {
                                                            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                            if(_loc28_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc8_:* = §§pop();
                                                         §§push(this.m_localAnchor2.y);
                                                         if(!_loc27_)
                                                         {
                                                            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                            if(_loc28_ || _loc3_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc9_:* = §§pop();
                                                         if(_loc28_ || _loc2_)
                                                         {
                                                            §§push(_loc4_.col1);
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc28_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!(_loc27_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(_loc4_.col2);
                                                                        loop1:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr346:
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             loop3:
                                                                                             while(true)
                                                                                             {
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_.col1);
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      §§push(_loc8_);
                                                                                                      if(!(_loc27_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            §§push(_loc4_.col2);
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            §§push(§§pop().y);
                                                                                                            if(_loc28_ || _loc2_)
                                                                                                            {
                                                                                                               addr299:
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc27_ && _loc2_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr363:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc27_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr371:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               addr315:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc28_ || _loc3_))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr323:
                                                                                                               _loc9_ = §§pop();
                                                                                                               loop5:
                                                                                                               for(; !_loc27_; _loc8_ = §§pop(),if(!(_loc27_ && this))
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_.m_sweep.c.x);
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        break loop0;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                                  break loop4;
                                                                                                               })
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        break loop0;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            §§goto(addr371);
                                                                                                         }
                                                                                                         §§goto(addr323);
                                                                                                      }
                                                                                                      §§goto(addr299);
                                                                                                   }
                                                                                                   §§goto(addr315);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr354:
                                                                                       }
                                                                                       var _loc10_:* = §§pop();
                                                                                       §§push(_loc2_.m_sweep.c.y);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc6_);
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc11_:* = §§pop();
                                                                                       §§push(_loc3_.m_sweep.c.x);
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc8_);
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc12_:* = §§pop();
                                                                                       §§push(_loc3_.m_sweep.c.y);
                                                                                       if(!(_loc27_ && this))
                                                                                       {
                                                                                          §§push(§§pop() + _loc9_);
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc13_:* = §§pop();
                                                                                       §§push(this.§%2§.m_xf.position.x);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          §§push(§§pop() + this.m_groundAnchor1.x);
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc14_:* = §§pop();
                                                                                       §§push(this.§%2§.m_xf.position.y);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          §§push(§§pop() + this.m_groundAnchor1.y);
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc15_:* = §§pop();
                                                                                       §§push(this.§%2§.m_xf.position.x);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          §§push(§§pop() + this.m_groundAnchor2.x);
                                                                                          if(!(_loc27_ && _loc2_))
                                                                                          {
                                                                                             addr462:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc16_:* = §§pop();
                                                                                          §§push(this.§%2§.m_xf.position.y);
                                                                                          if(!(_loc27_ && this))
                                                                                          {
                                                                                             §§push(§§pop() + this.m_groundAnchor2.y);
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                addr482:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc17_:* = §§pop();
                                                                                             if(!(_loc27_ && _loc3_))
                                                                                             {
                                                                                                §§push(this.m_u1);
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                   §§push(_loc10_);
                                                                                                   if(_loc28_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(_loc14_);
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         addr507:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         §§push(_loc11_);
                                                                                                         if(_loc28_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() - _loc15_);
                                                                                                         }
                                                                                                      }
                                                                                                      §§pop().Set(§§pop(),§§pop());
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         addr520:
                                                                                                         §§push(this.m_u2);
                                                                                                         §§push(_loc12_);
                                                                                                         if(_loc28_ || this)
                                                                                                         {
                                                                                                            §§push(_loc16_);
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               addr534:
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               §§push(_loc13_);
                                                                                                               if(_loc28_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() - _loc17_);
                                                                                                               }
                                                                                                            }
                                                                                                            §§pop().Set(§§pop(),§§pop());
                                                                                                            addr545:
                                                                                                            §§push(this.m_u1.§`g§());
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc18_:* = §§pop();
                                                                                                            §§push(this.m_u2.§`g§());
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc19_:* = §§pop();
                                                                                                            if(!(_loc27_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(_loc18_);
                                                                                                               if(_loc28_ || param1)
                                                                                                               {
                                                                                                                  §§push(b2Settings.b2_linearSlop);
                                                                                                                  loop9:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop() > §§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.m_u1);
                                                                                                                        }
                                                                                                                        addr645:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(this.m_u1);
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           §§pop().§@!s§();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr651:
                                                                                                                              }
                                                                                                                              addr600:
                                                                                                                              addr677:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc19_);
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(b2Settings.b2_linearSlop);
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    continue loop9;
                                                                                                                                 }
                                                                                                                                 addr695:
                                                                                                                                 addr695:
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc28_ || this)
                                                                                                                                 {
                                                                                                                                    addr703:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc20_:*;
                                                                                                                                 §§push(_loc20_ = §§pop());
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc28_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc28_ || param1)
                                                                                                                                          {
                                                                                                                                             this.§7"%§ = b2internal::@g;
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                this.§?;§ = 0;
                                                                                                                                             }
                                                                                                                                             loop15:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                loop16:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                   if(_loc28_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.m_maxLength1);
                                                                                                                                                      if(_loc28_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop15;
                                                                                                                                                         }
                                                                                                                                                         this.m_limitState1 = b2internal::^"<;
                                                                                                                                                         loop17:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            loop18:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.m_maxLength2);
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() < §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc28_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              this.m_limitState2 = b2internal::@g;
                                                                                                                                                                           }
                                                                                                                                                                           while(_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr784:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.m_limitImpulse2 = 0;
                                                                                                                                                                                    §§goto(addr784);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr749:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.m_limitImpulse1 = 0;
                                                                                                                                                                                    addr796:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc27_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop18;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop16;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr843:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop17;
                                                                                                                                                                           addr780:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           this.m_limitState2 = b2internal::^"<;
                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc27_ && _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop15;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr749);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr854:
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop18;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 if(!(_loc27_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr882:
                                                                                                                                                                                    §§push(§§pop() - §§pop() * this.m_u1.x);
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc21_:* = §§pop();
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.m_u2.y);
                                                                                                                                                                                       if(_loc28_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr924:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!(_loc27_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                             if(!(_loc27_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * this.m_u2.x);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          var _loc22_:* = §§pop();
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                             §§push(_loc2_.§;k§);
                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc2_.§6x§);
                                                                                                                                                                                                if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                   if(!(_loc27_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1657:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1655:
                                                                                                                                                                                                         §§push(§§pop() * _loc21_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().m_limitMass1 = §§pop() + §§pop();
                                                                                                                                                                                                      loop23:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this);
                                                                                                                                                                                                         §§push(_loc3_.§;k§);
                                                                                                                                                                                                         if(!(_loc27_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc3_.§6x§);
                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1616:
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().m_limitMass2 = §§pop() + §§pop();
                                                                                                                                                                                                                  loop24:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this);
                                                                                                                                                                                                                     §§push(this.m_limitMass1);
                                                                                                                                                                                                                     if(_loc28_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§?!L§);
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§?!L§);
                                                                                                                                                                                                                           if(!(_loc27_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1590:
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(_loc28_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.m_limitMass2);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().§]0§ = §§pop() + §§pop();
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.m_limitMass1 = 1 / this.m_limitMass1;
                                                                                                                                                                                                                                 loop26:
                                                                                                                                                                                                                                 for(; _loc28_; if(_loc28_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr928:
                                                                                                                                                                                                                                 },continue,return)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.m_limitMass2 = 1 / this.m_limitMass2;
                                                                                                                                                                                                                                    loop27:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.§]0§ = 1 / this.§]0§;
                                                                                                                                                                                                                                       loop28:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!param1.§1!w§)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.§?;§ = 0;
                                                                                                                                                                                                                                             loop29:
                                                                                                                                                                                                                                             for(; !(_loc27_ && param1); if(_loc27_ && _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             },if(_loc28_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break loop28;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop28;
                                                                                                                                                                                                                                             },addr1106:,while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                                                                                                                      §§push(_loc3_.m_angularVelocity);
                                                                                                                                                                                                                                                      if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc3_.§6x§);
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                                                                            if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc26_);
                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1023:
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc25_);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                  §§goto(addr1026);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1023);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1430);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1268);
                                                                                                                                                                                                                                             })
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.m_limitImpulse1 = 0;
                                                                                                                                                                                                                                                while(!(_loc27_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      this.m_limitImpulse2 = 0;
                                                                                                                                                                                                                                                      if(_loc28_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop29;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc27_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop23;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      loop78:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop24;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1382:
                                                                                                                                                                                                                                                         addr1382:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc2_.§,b§);
                                                                                                                                                                                                                                                            loop68:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc2_.§,b§);
                                                                                                                                                                                                                                                               loop69:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                                                                  loop41:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc2_.§;k§);
                                                                                                                                                                                                                                                                     addr1264:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc23_);
                                                                                                                                                                                                                                                                        loop35:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           addr1266:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              addr1267:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                 addr1268:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc2_.§,b§);
                                                                                                                                                                                                                                                                                    addr1210:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop68;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(_loc2_.§,b§);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc28_ || _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop69;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc2_.§;k§);
                                                                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc24_);
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc28_ || _loc2_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop35;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr1227:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1235:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                addr1236:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                      continue loop78;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop41;
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
                                                                                                                                                                                                                                                      continue loop27;
                                                                                                                                                                                                                                                      addr1145:
                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop23;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop26;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   loop42:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§?;§);
                                                                                                                                                                                                                                                      loop43:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                                                                         loop44:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                            loop45:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                               loop46:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.m_u1);
                                                                                                                                                                                                                                                                  loop47:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                                                                                                                     loop48:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        loop49:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           loop50:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc23_ = §§pop();
                                                                                                                                                                                                                                                                              loop51:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§?;§);
                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                                          addr1441:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1439:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    loop54:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(this.m_u1);
                                                                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                                                                       loop55:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          loop56:
                                                                                                                                                                                                                                                                                          while(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             loop57:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                addr1457:
                                                                                                                                                                                                                                                                                                loop58:
                                                                                                                                                                                                                                                                                                for(; !_loc27_; continue loop57)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§?!L§);
                                                                                                                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      loop65:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                         addr1414:
                                                                                                                                                                                                                                                                                                         loop60:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(this.m_u2);
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                  addr1420:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1419:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            loop63:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                               loop64:
                                                                                                                                                                                                                                                                                                               while(_loc28_ || this)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc25_ = §§pop();
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        break loop51;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(this.§?!L§);
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop65;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop56;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(this.§?;§);
                                                                                                                                                                                                                                                                                                                           if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc28_ || _loc2_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop60;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop55;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc27_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop64;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1330:
                                                                                                                                                                                                                                                                                                                                       if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                          if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1345:
                                                                                                                                                                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop63;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc27_ && param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop46;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop44;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§push(this.m_u2);
                                                                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1361:
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop48;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(_loc27_ && this)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop45;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1373:
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1381:
                                                                                                                                                                                                                                                                                                                                                      _loc26_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1382);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop58;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop54;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop43;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1439);
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1373);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1441);
                                                                                                                                                                                                                                                                                                                                                      addr1389:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1381);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1419);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1381);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1420);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1361);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1381);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1441);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1330);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1373);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1345);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop50;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1412:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1389);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop51;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop49;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop47;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop42;
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
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc28_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc3_.§,b§);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc3_.§,b§);
                                                                                                                                                                                                                                                      addr1121:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc3_.§;k§);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1140:
                                                                                                                                                                                                                                                                        §§push(_loc25_);
                                                                                                                                                                                                                                                                        while(_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1227);
                                                                                                                                                                                                                                                                           §§goto(addr1140);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1144:
                                                                                                                                                                                                                                                                        §§goto(addr1145);
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                        addr1141:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1235);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1133:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1222);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1129:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1214);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1119:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1457);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1382);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1199:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                                                                             §§push(this.§?;§);
                                                                                                                                                                                                                                             if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * param1.§<3§);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().§?;§ = §§pop();
                                                                                                                                                                                                                                             continue loop28;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr928);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1590);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1616);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1655);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1657);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1528);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr924);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr882);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr796);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc27_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr854);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr780);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr882);
                                                                                                                                                                  }
                                                                                                                                                                  addr765:
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr882);
                                                                                                                                                   }
                                                                                                                                                   §§push(this.m_u1.y);
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc28_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr854);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr882);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr843);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          this.§7"%§ = b2internal::^"<;
                                                                                                                                       }
                                                                                                                                       §§goto(addr849);
                                                                                                                                    }
                                                                                                                                    §§goto(addr882);
                                                                                                                                 }
                                                                                                                                 §§goto(addr765);
                                                                                                                              }
                                                                                                                              §§push(this.§?!L§);
                                                                                                                              addr589:
                                                                                                                              if(_loc28_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * _loc19_);
                                                                                                                                 if(_loc27_ && _loc3_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr695);
                                                                                                                              if(_loc27_ && this)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr600);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr652:
                                                                                                                                    §§push(this.§6s§);
                                                                                                                                    if(!(_loc27_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(_loc18_);
                                                                                                                                       if(!(_loc27_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc28_ || this)
                                                                                                                                          {
                                                                                                                                             §§goto(addr677);
                                                                                                                                          }
                                                                                                                                          §§goto(addr703);
                                                                                                                                       }
                                                                                                                                       §§goto(addr695);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr703);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr645);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().§>!t§(1 / _loc18_);
                                                                                                                           }
                                                                                                                           addr647:
                                                                                                                        }
                                                                                                                        §§goto(addr651);
                                                                                                                     }
                                                                                                                     §§goto(addr647);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr677);
                                                                                                            }
                                                                                                            §§goto(addr622);
                                                                                                         }
                                                                                                         §§goto(addr534);
                                                                                                      }
                                                                                                      §§goto(addr545);
                                                                                                   }
                                                                                                   §§goto(addr507);
                                                                                                }
                                                                                                §§goto(addr545);
                                                                                             }
                                                                                             §§goto(addr520);
                                                                                          }
                                                                                          §§goto(addr482);
                                                                                       }
                                                                                       §§goto(addr462);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr363);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr354);
                                                                  }
                                                                  §§goto(addr346);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr363);
                                                            §§push(_loc5_);
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   _loc5_ = §§pop();
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr174);
                                             }
                                             §§goto(addr201);
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr203);
                                 }
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr117);
                     }
                  }
                  §§goto(addr133);
               }
               §§goto(addr114);
            }
            §§goto(addr111);
         }
         §§goto(addr106);
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
